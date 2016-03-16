//
//  JudoKit.m
//  JudoKitObjC
//
//  Copyright (c) 2016 Alternative Payments Ltd
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in all
//  copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
//  SOFTWARE.

#import "JudoKit.h"

#import "JPSession.h"
#import "JPPayment.h"
#import "JPPreAuth.h"
#import "JPRefund.h"
#import "JPReceipt.h"
#import "JPReference.h"
#import "JPRegisterCard.h"
#import "JPVoid.h"
#import "JPCollection.h"
#import "JPTransactionData.h"
#import "JudoPayViewController.h"
#import "JudoPayView.h"
#import "JPInputField.h"
#import "CardInputField.h"
#import "DateInputField.h"
#import "FloatingTextField.h"

#import "JPTheme.h"

@interface JPSession ()

@property (nonatomic, strong, readwrite) NSString *authorizationHeader;

@end

@interface JudoKit ()

@property (nonatomic, strong, readwrite) JPSession *apiSession;

@end

@implementation JudoKit

- (instancetype)initWithToken:(NSString *)token secret:(NSString *)secret {
    return [self initWithToken:token secret:secret allowJailbrokenDevices:YES];
}

- (instancetype)initWithToken:(NSString *)token secret:(NSString *)secret allowJailbrokenDevices:(BOOL)jailbrokenDevicesAllowed {
    self = [super init];
    if (self) {
        NSString *plainString = [NSString stringWithFormat:@"%@:%@", token, secret];
        NSData *plainData = [plainString dataUsingEncoding:NSISOLatin1StringEncoding];
        NSString *base64String = [plainData base64EncodedStringWithOptions:0];
        
        self.apiSession = [JPSession new];
        
        [self.apiSession setAuthorizationHeader:[NSString stringWithFormat:@"Basic %@", base64String]];
    }
    return self;
}

- (void)invokePayment:(NSString *)judoId amount:(JPAmount *)amount consumerReference:(NSString *)reference cardDetails:(JPCardDetails *)cardDetails completion:(void (^)(JPResponse *, NSError *))completion {
    JPReference *ref = [[JPReference alloc] initWithConsumerReference:reference];
    JudoPayViewController *controller = [[JudoPayViewController alloc] initWithJudoId:judoId amount:amount reference:ref transaction:TransactionTypePayment currentSession:self cardDetails:cardDetails completion:completion];
    [self initiateAndShow:controller cardDetails:cardDetails];
}

- (void)invokePreAuth:(NSString *)judoId amount:(JPAmount *)amount consumerReference:(NSString *)reference cardDetails:(JPCardDetails *)cardDetails completion:(void (^)(JPResponse *, NSError *))completion {
    JPReference *ref = [[JPReference alloc] initWithConsumerReference:reference];
    JudoPayViewController *controller = [[JudoPayViewController alloc] initWithJudoId:judoId amount:amount reference:ref transaction:TransactionTypePreAuth currentSession:self cardDetails:cardDetails completion:completion];
    [self initiateAndShow:controller cardDetails:cardDetails];
}

- (void)invokeRegisterCard:(NSString *)judoId amount:(JPAmount *)amount consumerReference:(NSString *)reference cardDetails:(JPCardDetails *)cardDetails completion:(void (^)(JPResponse *, NSError *))completion {
    JPReference *ref = [[JPReference alloc] initWithConsumerReference:reference];
    JudoPayViewController *controller = [[JudoPayViewController alloc] initWithJudoId:judoId amount:amount reference:ref transaction:TransactionTypeRegisterCard currentSession:self cardDetails:cardDetails completion:completion];
    [self initiateAndShow:controller cardDetails:cardDetails];
}

- (void)invokeTokenPayment:(NSString *)judoId amount:(JPAmount *)amount consumerReference:(NSString *)reference cardDetails:(JPCardDetails *)cardDetails paymentToken:(JPPaymentToken *)paymentToken completion:(void (^)(JPResponse *, NSError *))completion {
    JPReference *ref = [[JPReference alloc] initWithConsumerReference:reference];
    JudoPayViewController *controller = [[JudoPayViewController alloc] initWithJudoId:judoId amount:amount reference:ref transaction:TransactionTypePayment currentSession:self cardDetails:cardDetails completion:completion];
    [self initiateAndShow:controller cardDetails:cardDetails];
}

- (void)invokeTokenPreAuth:(NSString *)judoId amount:(JPAmount *)amount consumerReference:(NSString *)reference cardDetails:(JPCardDetails *)cardDetails paymentToken:(JPPaymentToken *)paymentToken completion:(void (^)(JPResponse *, NSError *))completion {
    JPReference *ref = [[JPReference alloc] initWithConsumerReference:reference];
    JudoPayViewController *controller = [[JudoPayViewController alloc] initWithJudoId:judoId amount:amount reference:ref transaction:TransactionTypePreAuth currentSession:self cardDetails:cardDetails completion:completion];
    [self initiateAndShow:controller cardDetails:cardDetails];
}

- (JPTransaction *)transactionForTypeClass:(Class)type judoId:(NSString *)judoId amount:(JPAmount *)amount reference:(nonnull JPReference *)reference {
    JPTransaction *transaction = [type new];
    transaction.judoId = judoId;
    transaction.amount = amount;
    transaction.reference = reference;
    transaction.apiSession = self.apiSession;
    return transaction;
}

- (JPTransaction *)transactionForType:(TransactionType)type judoId:(NSString *)judoId amount:(JPAmount *)amount reference:(JPReference *)reference {
    Class transactionTypeClass;
    switch (type) {
        case TransactionTypePayment:
            transactionTypeClass = [JPPayment class];
            break;
        case TransactionTypePreAuth:
            transactionTypeClass = [JPPreAuth class];
            break;
        case TransactionTypeRegisterCard:
            transactionTypeClass = [JPRegisterCard class];
            break;
        default:
            return nil;
    }
    return [self transactionForTypeClass:transactionTypeClass judoId:judoId amount:amount reference:reference];
}

- (JPPayment *)paymentWithJudoId:(NSString *)judoId amount:(JPAmount *)amount reference:(JPReference *)reference {
    return (JPPayment *)[self transactionForTypeClass:[JPPayment class] judoId:judoId amount:amount reference:reference];
}

- (JPPreAuth *)preAuthWithJudoId:(NSString *)judoId amount:(JPAmount *)amount reference:(JPReference *)reference {
    return (JPPreAuth *)[self transactionForTypeClass:[JPPreAuth class] judoId:judoId amount:amount reference:reference];
}

- (JPRegisterCard *)registerCardWithJudoId:(NSString *)judoId amount:(JPAmount *)amount reference:(JPReference *)reference {
    return (JPRegisterCard *)[self transactionForTypeClass:[JPRegisterCard class] judoId:judoId amount:amount reference:reference];
}

- (JPTransactionProcess *)transactionProcessForType:(Class)type receiptId:(NSString *)receiptId amount:(JPAmount *)amount {
    JPTransactionProcess *transactionProc = [[type alloc] initWithReceiptId:receiptId amount:amount];
    transactionProc.apiSession = self.apiSession;
    return transactionProc;
}

- (JPCollection *)collectionWithReceiptId:(NSString *)receiptId amount:(JPAmount *)amount {
    return (JPCollection *)[self transactionProcessForType:[JPCollection class] receiptId:receiptId amount:amount];
}

- (JPVoid *)voidWithReceiptId:(NSString *)receiptId amount:(JPAmount *)amount {
    return (JPVoid *)[self transactionProcessForType:[JPVoid class] receiptId:receiptId amount:amount];
}

- (JPRefund *)refundWithReceiptId:(NSString *)receiptId amount:(JPAmount *)amount {
    return (JPRefund *)[self transactionProcessForType:[JPRefund class] receiptId:receiptId amount:amount];
}

- (JPReceipt *)receipt:(NSString *)receiptId {
    JPReceipt *receipt = [[JPReceipt alloc] initWithReceiptId:receiptId];
    receipt.apiSession = self.apiSession;
    return receipt;
}


- (void)list:(Class)type paginated:(JPPagination *)pagination completion:(JudoCompletionBlock)completion {
    JPTransaction *transaction = [type new];
    transaction.apiSession = self.apiSession;
    [transaction listWithPagination:pagination completion:completion];
}

#pragma mark - Helper methods

- (void)initiateAndShow:(JudoPayViewController *)viewController cardDetails:(JPCardDetails *)cardDetails {
    viewController.theme = self.theme;
    viewController.view.cardInputField.textField.text = cardDetails.cardNumber;
    viewController.view.expiryDateInputField.textField.text = cardDetails.formattedExpiryDate;
    [self showViewController:viewController];
}

- (void)showViewController:(UIViewController *)vc {
    vc.modalPresentationStyle = UIModalPresentationFormSheet;
    [[[[UIApplication sharedApplication] keyWindow] rootViewController] presentViewController:vc animated:YES completion:nil];
}


#pragma mark - Getters

- (JPTheme *)theme {
	if (!_theme) {
		_theme = [JPTheme new];
	}
	return _theme;
}

@end
