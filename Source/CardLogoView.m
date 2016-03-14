//
//  CardLogoView.,
//  JudoKit
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

#import "CardLogoView.h"

@interface CardLogoView ()

@property (nonatomic, assign, readwrite) CardLogoType type;

@end

@implementation CardLogoView

- (instancetype)initWithType:(CardLogoType)type {
    self = [super initWithFrame:CGRectZero];
	if (self) {
        self.type = type;
	}
	return self;
}

- (void)drawRect:(CGRect)rect {
    switch (self.type) {
        case CardLogoTypeVisa:
            [self drawCardVisa];
            break;
        case CardLogoTypeMasterCard:
            [self drawCardMasterCard];
            break;
        case CardLogoTypeAMEX:
            [self drawCardAmex];
            break;
        case CardLogoTypeMaestro:
            [self drawCardMaestro];
            break;
        case CardLogoTypeCID:
            [self drawCardCid];
            break;
        case CardLogoTypeCVC:
            [self drawCardCvc];
            break;
        default:
            [self drawCardUnknown];
            break;
    }
}

- (void)drawCardAmex {
    //// General Declarations
    CGColorSpaceRef colorSpace = CGColorSpaceCreateDeviceRGB();
    CGContextRef context = UIGraphicsGetCurrentContext();

    //// Color Declarations
    UIColor* gradientColor = [UIColor colorWithRed: 0.406 green: 0.745 blue: 0.935 alpha: 1];
    UIColor* gradientColor2 = [UIColor colorWithRed: 0.163 green: 0.415 blue: 0.695 alpha: 1];
    UIColor* gradientColor3 = [UIColor colorWithRed: 0.042 green: 0.316 blue: 0.619 alpha: 1];
    UIColor* fillColor = [UIColor colorWithRed: 0.651 green: 0.651 blue: 0.651 alpha: 1];
    UIColor* fillColor2 = [UIColor colorWithRed: 0.951 green: 0.956 blue: 0.956 alpha: 1];
    UIColor* fillColor3 = [UIColor colorWithRed: 0.037 green: 0.312 blue: 0.619 alpha: 1];
    UIColor* fillColor4 = [UIColor colorWithRed: 1 green: 1 blue: 1 alpha: 1];

    //// Gradient Declarations
    CGFloat sVGID_5_Locations[] = {0, 0.68, 1};
    CGGradientRef sVGID_5_ = CGGradientCreateWithColors(colorSpace, (__bridge CFArrayRef)@[(id)gradientColor.CGColor, (id)gradientColor2.CGColor, (id)gradientColor3.CGColor], sVGID_5_Locations);

    //// ic_card_amex Group
    {
        //// Group 2
        {
            //// Bezier Drawing
            UIBezierPath* bezierPath = [UIBezierPath bezierPath];
            [bezierPath moveToPoint: CGPointMake(39.97, 0)];
            [bezierPath addLineToPoint: CGPointMake(2.04, 0)];
            [bezierPath addCurveToPoint: CGPointMake(0, 2.02) controlPoint1: CGPointMake(0.91, 0) controlPoint2: CGPointMake(0, 0.91)];
            [bezierPath addLineToPoint: CGPointMake(0, 3.04)];
            [bezierPath addLineToPoint: CGPointMake(0, 23.96)];
            [bezierPath addLineToPoint: CGPointMake(0, 24.98)];
            [bezierPath addCurveToPoint: CGPointMake(2.04, 27) controlPoint1: CGPointMake(0, 26.09) controlPoint2: CGPointMake(0.91, 27)];
            [bezierPath addLineToPoint: CGPointMake(39.97, 27)];
            [bezierPath addCurveToPoint: CGPointMake(42, 24.98) controlPoint1: CGPointMake(41.09, 27) controlPoint2: CGPointMake(42, 26.09)];
            [bezierPath addLineToPoint: CGPointMake(42, 2.02)];
            [bezierPath addCurveToPoint: CGPointMake(39.97, 0) controlPoint1: CGPointMake(42, 0.91) controlPoint2: CGPointMake(41.09, 0)];
            [bezierPath closePath];
            bezierPath.miterLimit = 4;

            [fillColor setFill];
            [bezierPath fill];


            //// Rectangle Drawing
            UIBezierPath* rectanglePath = [UIBezierPath bezierPathWithRoundedRect: CGRectMake(0.5, 0.5, 41, 25.5) cornerRadius: 1.6];
            [fillColor2 setFill];
            [rectanglePath fill];
        }


        //// Bezier 2 Drawing
        UIBezierPath* bezier2Path = [UIBezierPath bezierPath];
        [bezier2Path moveToPoint: CGPointMake(32.88, 8.22)];
        [bezier2Path addCurveToPoint: CGPointMake(32.27, 7.6) controlPoint1: CGPointMake(32.54, 8.22) controlPoint2: CGPointMake(32.27, 7.94)];
        [bezier2Path addLineToPoint: CGPointMake(32.27, 4.59)];
        [bezier2Path addCurveToPoint: CGPointMake(32.88, 3.98) controlPoint1: CGPointMake(32.27, 4.25) controlPoint2: CGPointMake(32.54, 3.98)];
        [bezier2Path addLineToPoint: CGPointMake(37.97, 3.98)];
        [bezier2Path addCurveToPoint: CGPointMake(38.59, 4.59) controlPoint1: CGPointMake(38.31, 3.98) controlPoint2: CGPointMake(38.59, 4.26)];
        [bezier2Path addLineToPoint: CGPointMake(38.59, 7.6)];
        [bezier2Path addCurveToPoint: CGPointMake(37.97, 8.22) controlPoint1: CGPointMake(38.59, 7.94) controlPoint2: CGPointMake(38.31, 8.22)];
        [bezier2Path addLineToPoint: CGPointMake(32.88, 8.22)];
        [bezier2Path closePath];
        [bezier2Path moveToPoint: CGPointMake(32.88, 4.3)];
        [bezier2Path addCurveToPoint: CGPointMake(32.58, 4.6) controlPoint1: CGPointMake(32.72, 4.3) controlPoint2: CGPointMake(32.58, 4.43)];
        [bezier2Path addLineToPoint: CGPointMake(32.58, 7.6)];
        [bezier2Path addCurveToPoint: CGPointMake(32.88, 7.9) controlPoint1: CGPointMake(32.58, 7.76) controlPoint2: CGPointMake(32.71, 7.9)];
        [bezier2Path addLineToPoint: CGPointMake(37.97, 7.9)];
        [bezier2Path addCurveToPoint: CGPointMake(38.27, 7.6) controlPoint1: CGPointMake(38.13, 7.9) controlPoint2: CGPointMake(38.27, 7.77)];
        [bezier2Path addLineToPoint: CGPointMake(38.27, 4.59)];
        [bezier2Path addCurveToPoint: CGPointMake(37.97, 4.29) controlPoint1: CGPointMake(38.27, 4.43) controlPoint2: CGPointMake(38.14, 4.29)];
        [bezier2Path addLineToPoint: CGPointMake(32.88, 4.29)];
        [bezier2Path addLineToPoint: CGPointMake(32.88, 4.3)];
        [bezier2Path closePath];
        bezier2Path.miterLimit = 4;

        [fillColor setFill];
        [bezier2Path fill];


        //// Group 3
        {
            //// Group 4
            {
                //// Group 5
                {
                    //// Bezier 3 Drawing
                    UIBezierPath* bezier3Path = [UIBezierPath bezierPath];
                    [bezier3Path moveToPoint: CGPointMake(8.66, 21.11)];
                    [bezier3Path addCurveToPoint: CGPointMake(8.63, 21.38) controlPoint1: CGPointMake(8.66, 21.22) controlPoint2: CGPointMake(8.65, 21.3)];
                    [bezier3Path addCurveToPoint: CGPointMake(8.5, 21.55) controlPoint1: CGPointMake(8.6, 21.45) controlPoint2: CGPointMake(8.56, 21.5)];
                    [bezier3Path addCurveToPoint: CGPointMake(8.27, 21.64) controlPoint1: CGPointMake(8.45, 21.59) controlPoint2: CGPointMake(8.37, 21.62)];
                    [bezier3Path addCurveToPoint: CGPointMake(7.9, 21.67) controlPoint1: CGPointMake(8.17, 21.66) controlPoint2: CGPointMake(8.05, 21.67)];
                    [bezier3Path addLineToPoint: CGPointMake(7.89, 21.67)];
                    [bezier3Path addCurveToPoint: CGPointMake(7.77, 21.67) controlPoint1: CGPointMake(7.86, 21.67) controlPoint2: CGPointMake(7.81, 21.67)];
                    [bezier3Path addCurveToPoint: CGPointMake(7.64, 21.66) controlPoint1: CGPointMake(7.73, 21.67) controlPoint2: CGPointMake(7.68, 21.67)];
                    [bezier3Path addCurveToPoint: CGPointMake(7.51, 21.64) controlPoint1: CGPointMake(7.6, 21.65) controlPoint2: CGPointMake(7.55, 21.65)];
                    [bezier3Path addCurveToPoint: CGPointMake(7.39, 21.6) controlPoint1: CGPointMake(7.46, 21.63) controlPoint2: CGPointMake(7.43, 21.62)];
                    [bezier3Path addCurveToPoint: CGPointMake(7.3, 21.53) controlPoint1: CGPointMake(7.35, 21.58) controlPoint2: CGPointMake(7.33, 21.56)];
                    [bezier3Path addCurveToPoint: CGPointMake(7.27, 21.43) controlPoint1: CGPointMake(7.28, 21.5) controlPoint2: CGPointMake(7.27, 21.47)];
                    [bezier3Path addLineToPoint: CGPointMake(7.27, 21.42)];
                    [bezier3Path addCurveToPoint: CGPointMake(7.32, 21.31) controlPoint1: CGPointMake(7.27, 21.38) controlPoint2: CGPointMake(7.29, 21.34)];
                    [bezier3Path addCurveToPoint: CGPointMake(7.43, 21.27) controlPoint1: CGPointMake(7.35, 21.28) controlPoint2: CGPointMake(7.39, 21.27)];
                    [bezier3Path addLineToPoint: CGPointMake(7.43, 21.27)];
                    [bezier3Path addCurveToPoint: CGPointMake(7.49, 21.27) controlPoint1: CGPointMake(7.46, 21.27) controlPoint2: CGPointMake(7.48, 21.27)];
                    [bezier3Path addCurveToPoint: CGPointMake(7.53, 21.28) controlPoint1: CGPointMake(7.51, 21.28) controlPoint2: CGPointMake(7.52, 21.28)];
                    [bezier3Path addCurveToPoint: CGPointMake(7.56, 21.3) controlPoint1: CGPointMake(7.54, 21.29) controlPoint2: CGPointMake(7.55, 21.29)];
                    [bezier3Path addCurveToPoint: CGPointMake(7.58, 21.32) controlPoint1: CGPointMake(7.57, 21.31) controlPoint2: CGPointMake(7.58, 21.31)];
                    [bezier3Path addLineToPoint: CGPointMake(7.58, 21.32)];
                    [bezier3Path addCurveToPoint: CGPointMake(7.62, 21.34) controlPoint1: CGPointMake(7.59, 21.33) controlPoint2: CGPointMake(7.61, 21.34)];
                    [bezier3Path addCurveToPoint: CGPointMake(7.68, 21.36) controlPoint1: CGPointMake(7.63, 21.35) controlPoint2: CGPointMake(7.66, 21.35)];
                    [bezier3Path addCurveToPoint: CGPointMake(7.77, 21.37) controlPoint1: CGPointMake(7.7, 21.37) controlPoint2: CGPointMake(7.74, 21.37)];
                    [bezier3Path addCurveToPoint: CGPointMake(7.92, 21.37) controlPoint1: CGPointMake(7.81, 21.37) controlPoint2: CGPointMake(7.86, 21.37)];
                    [bezier3Path addLineToPoint: CGPointMake(7.94, 21.37)];
                    [bezier3Path addCurveToPoint: CGPointMake(8.12, 21.35) controlPoint1: CGPointMake(8.01, 21.37) controlPoint2: CGPointMake(8.07, 21.37)];
                    [bezier3Path addCurveToPoint: CGPointMake(8.23, 21.3) controlPoint1: CGPointMake(8.17, 21.34) controlPoint2: CGPointMake(8.2, 21.32)];
                    [bezier3Path addCurveToPoint: CGPointMake(8.28, 21.21) controlPoint1: CGPointMake(8.25, 21.28) controlPoint2: CGPointMake(8.27, 21.25)];
                    [bezier3Path addCurveToPoint: CGPointMake(8.3, 21.09) controlPoint1: CGPointMake(8.29, 21.18) controlPoint2: CGPointMake(8.3, 21.14)];
                    [bezier3Path addCurveToPoint: CGPointMake(8.26, 20.91) controlPoint1: CGPointMake(8.3, 21.01) controlPoint2: CGPointMake(8.29, 20.95)];
                    [bezier3Path addCurveToPoint: CGPointMake(8.14, 20.86) controlPoint1: CGPointMake(8.24, 20.88) controlPoint2: CGPointMake(8.2, 20.86)];
                    [bezier3Path addLineToPoint: CGPointMake(7.76, 20.86)];
                    [bezier3Path addCurveToPoint: CGPointMake(7.7, 20.85) controlPoint1: CGPointMake(7.74, 20.86) controlPoint2: CGPointMake(7.72, 20.86)];
                    [bezier3Path addCurveToPoint: CGPointMake(7.64, 20.83) controlPoint1: CGPointMake(7.68, 20.85) controlPoint2: CGPointMake(7.66, 20.84)];
                    [bezier3Path addCurveToPoint: CGPointMake(7.6, 20.79) controlPoint1: CGPointMake(7.62, 20.82) controlPoint2: CGPointMake(7.61, 20.8)];
                    [bezier3Path addCurveToPoint: CGPointMake(7.59, 20.72) controlPoint1: CGPointMake(7.59, 20.77) controlPoint2: CGPointMake(7.59, 20.75)];
                    [bezier3Path addCurveToPoint: CGPointMake(7.64, 20.6) controlPoint1: CGPointMake(7.59, 20.67) controlPoint2: CGPointMake(7.61, 20.63)];
                    [bezier3Path addCurveToPoint: CGPointMake(7.76, 20.56) controlPoint1: CGPointMake(7.68, 20.58) controlPoint2: CGPointMake(7.72, 20.56)];
                    [bezier3Path addLineToPoint: CGPointMake(8.12, 20.56)];
                    [bezier3Path addCurveToPoint: CGPointMake(8.19, 20.55) controlPoint1: CGPointMake(8.15, 20.56) controlPoint2: CGPointMake(8.17, 20.56)];
                    [bezier3Path addCurveToPoint: CGPointMake(8.24, 20.52) controlPoint1: CGPointMake(8.21, 20.54) controlPoint2: CGPointMake(8.23, 20.53)];
                    [bezier3Path addCurveToPoint: CGPointMake(8.27, 20.46) controlPoint1: CGPointMake(8.25, 20.5) controlPoint2: CGPointMake(8.26, 20.48)];
                    [bezier3Path addCurveToPoint: CGPointMake(8.28, 20.35) controlPoint1: CGPointMake(8.28, 20.43) controlPoint2: CGPointMake(8.28, 20.4)];
                    [bezier3Path addCurveToPoint: CGPointMake(8.27, 20.23) controlPoint1: CGPointMake(8.28, 20.3) controlPoint2: CGPointMake(8.28, 20.26)];
                    [bezier3Path addCurveToPoint: CGPointMake(8.23, 20.15) controlPoint1: CGPointMake(8.27, 20.2) controlPoint2: CGPointMake(8.25, 20.17)];
                    [bezier3Path addCurveToPoint: CGPointMake(8.13, 20.11) controlPoint1: CGPointMake(8.21, 20.13) controlPoint2: CGPointMake(8.17, 20.11)];
                    [bezier3Path addCurveToPoint: CGPointMake(7.95, 20.1) controlPoint1: CGPointMake(8.08, 20.1) controlPoint2: CGPointMake(8.02, 20.1)];
                    [bezier3Path addLineToPoint: CGPointMake(7.94, 20.1)];
                    [bezier3Path addCurveToPoint: CGPointMake(7.79, 20.11) controlPoint1: CGPointMake(7.89, 20.1) controlPoint2: CGPointMake(7.84, 20.1)];
                    [bezier3Path addCurveToPoint: CGPointMake(7.66, 20.14) controlPoint1: CGPointMake(7.74, 20.12) controlPoint2: CGPointMake(7.7, 20.13)];
                    [bezier3Path addCurveToPoint: CGPointMake(7.62, 20.16) controlPoint1: CGPointMake(7.64, 20.15) controlPoint2: CGPointMake(7.63, 20.15)];
                    [bezier3Path addCurveToPoint: CGPointMake(7.58, 20.18) controlPoint1: CGPointMake(7.61, 20.17) controlPoint2: CGPointMake(7.59, 20.18)];
                    [bezier3Path addCurveToPoint: CGPointMake(7.54, 20.19) controlPoint1: CGPointMake(7.57, 20.19) controlPoint2: CGPointMake(7.55, 20.19)];
                    [bezier3Path addCurveToPoint: CGPointMake(7.49, 20.19) controlPoint1: CGPointMake(7.52, 20.19) controlPoint2: CGPointMake(7.51, 20.19)];
                    [bezier3Path addLineToPoint: CGPointMake(7.48, 20.19)];
                    [bezier3Path addCurveToPoint: CGPointMake(7.37, 20.15) controlPoint1: CGPointMake(7.44, 20.19) controlPoint2: CGPointMake(7.4, 20.18)];
                    [bezier3Path addCurveToPoint: CGPointMake(7.32, 20.05) controlPoint1: CGPointMake(7.34, 20.12) controlPoint2: CGPointMake(7.32, 20.09)];
                    [bezier3Path addLineToPoint: CGPointMake(7.32, 20.05)];
                    [bezier3Path addCurveToPoint: CGPointMake(7.36, 19.94) controlPoint1: CGPointMake(7.32, 20.01) controlPoint2: CGPointMake(7.34, 19.97)];
                    [bezier3Path addCurveToPoint: CGPointMake(7.47, 19.86) controlPoint1: CGPointMake(7.39, 19.91) controlPoint2: CGPointMake(7.42, 19.88)];
                    [bezier3Path addCurveToPoint: CGPointMake(7.66, 19.81) controlPoint1: CGPointMake(7.52, 19.84) controlPoint2: CGPointMake(7.58, 19.82)];
                    [bezier3Path addCurveToPoint: CGPointMake(7.94, 19.79) controlPoint1: CGPointMake(7.74, 19.8) controlPoint2: CGPointMake(7.83, 19.79)];
                    [bezier3Path addCurveToPoint: CGPointMake(8.28, 19.81) controlPoint1: CGPointMake(8.07, 19.79) controlPoint2: CGPointMake(8.18, 19.8)];
                    [bezier3Path addCurveToPoint: CGPointMake(8.5, 19.89) controlPoint1: CGPointMake(8.37, 19.82) controlPoint2: CGPointMake(8.44, 19.85)];
                    [bezier3Path addCurveToPoint: CGPointMake(8.62, 20.05) controlPoint1: CGPointMake(8.55, 19.93) controlPoint2: CGPointMake(8.6, 19.98)];
                    [bezier3Path addCurveToPoint: CGPointMake(8.66, 20.31) controlPoint1: CGPointMake(8.65, 20.12) controlPoint2: CGPointMake(8.66, 20.2)];
                    [bezier3Path addCurveToPoint: CGPointMake(8.65, 20.45) controlPoint1: CGPointMake(8.66, 20.36) controlPoint2: CGPointMake(8.66, 20.41)];
                    [bezier3Path addCurveToPoint: CGPointMake(8.63, 20.56) controlPoint1: CGPointMake(8.64, 20.49) controlPoint2: CGPointMake(8.64, 20.53)];
                    [bezier3Path addCurveToPoint: CGPointMake(8.6, 20.64) controlPoint1: CGPointMake(8.62, 20.59) controlPoint2: CGPointMake(8.61, 20.62)];
                    [bezier3Path addCurveToPoint: CGPointMake(8.55, 20.7) controlPoint1: CGPointMake(8.59, 20.66) controlPoint2: CGPointMake(8.57, 20.68)];
                    [bezier3Path addCurveToPoint: CGPointMake(8.59, 20.75) controlPoint1: CGPointMake(8.56, 20.71) controlPoint2: CGPointMake(8.58, 20.73)];
                    [bezier3Path addCurveToPoint: CGPointMake(8.63, 20.82) controlPoint1: CGPointMake(8.6, 20.77) controlPoint2: CGPointMake(8.61, 20.79)];
                    [bezier3Path addCurveToPoint: CGPointMake(8.66, 20.93) controlPoint1: CGPointMake(8.64, 20.85) controlPoint2: CGPointMake(8.65, 20.89)];
                    [bezier3Path addCurveToPoint: CGPointMake(8.66, 21.11) controlPoint1: CGPointMake(8.65, 20.99) controlPoint2: CGPointMake(8.66, 21.04)];
                    [bezier3Path closePath];
                    bezier3Path.miterLimit = 4;

                    [fillColor setFill];
                    [bezier3Path fill];


                    //// Bezier 4 Drawing
                    UIBezierPath* bezier4Path = [UIBezierPath bezierPath];
                    [bezier4Path moveToPoint: CGPointMake(10.66, 21.16)];
                    [bezier4Path addLineToPoint: CGPointMake(10.66, 21.16)];
                    [bezier4Path addCurveToPoint: CGPointMake(10.62, 21.4) controlPoint1: CGPointMake(10.66, 21.26) controlPoint2: CGPointMake(10.65, 21.34)];
                    [bezier4Path addCurveToPoint: CGPointMake(10.48, 21.56) controlPoint1: CGPointMake(10.59, 21.46) controlPoint2: CGPointMake(10.54, 21.51)];
                    [bezier4Path addCurveToPoint: CGPointMake(10.26, 21.64) controlPoint1: CGPointMake(10.42, 21.6) controlPoint2: CGPointMake(10.35, 21.62)];
                    [bezier4Path addCurveToPoint: CGPointMake(9.98, 21.66) controlPoint1: CGPointMake(10.17, 21.66) controlPoint2: CGPointMake(10.08, 21.66)];
                    [bezier4Path addCurveToPoint: CGPointMake(9.69, 21.63) controlPoint1: CGPointMake(9.87, 21.66) controlPoint2: CGPointMake(9.78, 21.65)];
                    [bezier4Path addCurveToPoint: CGPointMake(9.48, 21.54) controlPoint1: CGPointMake(9.61, 21.61) controlPoint2: CGPointMake(9.54, 21.58)];
                    [bezier4Path addCurveToPoint: CGPointMake(9.34, 21.39) controlPoint1: CGPointMake(9.42, 21.5) controlPoint2: CGPointMake(9.38, 21.45)];
                    [bezier4Path addCurveToPoint: CGPointMake(9.29, 21.17) controlPoint1: CGPointMake(9.31, 21.33) controlPoint2: CGPointMake(9.29, 21.25)];
                    [bezier4Path addLineToPoint: CGPointMake(9.29, 20.28)];
                    [bezier4Path addCurveToPoint: CGPointMake(9.47, 19.92) controlPoint1: CGPointMake(9.29, 20.12) controlPoint2: CGPointMake(9.35, 20)];
                    [bezier4Path addCurveToPoint: CGPointMake(9.98, 19.8) controlPoint1: CGPointMake(9.59, 19.84) controlPoint2: CGPointMake(9.76, 19.8)];
                    [bezier4Path addCurveToPoint: CGPointMake(10.26, 19.83) controlPoint1: CGPointMake(10.08, 19.8) controlPoint2: CGPointMake(10.18, 19.81)];
                    [bezier4Path addCurveToPoint: CGPointMake(10.47, 19.92) controlPoint1: CGPointMake(10.34, 19.85) controlPoint2: CGPointMake(10.42, 19.88)];
                    [bezier4Path addCurveToPoint: CGPointMake(10.61, 20.07) controlPoint1: CGPointMake(10.53, 19.96) controlPoint2: CGPointMake(10.58, 20.01)];
                    [bezier4Path addCurveToPoint: CGPointMake(10.65, 20.28) controlPoint1: CGPointMake(10.64, 20.13) controlPoint2: CGPointMake(10.65, 20.2)];
                    [bezier4Path addLineToPoint: CGPointMake(10.65, 21.16)];
                    [bezier4Path addLineToPoint: CGPointMake(10.66, 21.16)];
                    [bezier4Path closePath];
                    [bezier4Path moveToPoint: CGPointMake(10.3, 20.31)];
                    [bezier4Path addCurveToPoint: CGPointMake(10.22, 20.16) controlPoint1: CGPointMake(10.3, 20.25) controlPoint2: CGPointMake(10.27, 20.2)];
                    [bezier4Path addCurveToPoint: CGPointMake(9.97, 20.1) controlPoint1: CGPointMake(10.16, 20.12) controlPoint2: CGPointMake(10.08, 20.1)];
                    [bezier4Path addCurveToPoint: CGPointMake(9.72, 20.15) controlPoint1: CGPointMake(9.86, 20.1) controlPoint2: CGPointMake(9.78, 20.12)];
                    [bezier4Path addCurveToPoint: CGPointMake(9.64, 20.29) controlPoint1: CGPointMake(9.67, 20.19) controlPoint2: CGPointMake(9.64, 20.23)];
                    [bezier4Path addLineToPoint: CGPointMake(9.64, 21.16)];
                    [bezier4Path addCurveToPoint: CGPointMake(9.72, 21.31) controlPoint1: CGPointMake(9.64, 21.23) controlPoint2: CGPointMake(9.67, 21.28)];
                    [bezier4Path addCurveToPoint: CGPointMake(9.97, 21.35) controlPoint1: CGPointMake(9.77, 21.34) controlPoint2: CGPointMake(9.85, 21.35)];
                    [bezier4Path addCurveToPoint: CGPointMake(10.21, 21.3) controlPoint1: CGPointMake(10.07, 21.35) controlPoint2: CGPointMake(10.15, 21.34)];
                    [bezier4Path addCurveToPoint: CGPointMake(10.3, 21.15) controlPoint1: CGPointMake(10.27, 21.27) controlPoint2: CGPointMake(10.3, 21.22)];
                    [bezier4Path addLineToPoint: CGPointMake(10.3, 20.31)];
                    [bezier4Path closePath];
                    bezier4Path.miterLimit = 4;

                    [fillColor setFill];
                    [bezier4Path fill];


                    //// Bezier 5 Drawing
                    UIBezierPath* bezier5Path = [UIBezierPath bezierPath];
                    [bezier5Path moveToPoint: CGPointMake(12.37, 20.61)];
                    [bezier5Path addCurveToPoint: CGPointMake(12.53, 20.69) controlPoint1: CGPointMake(12.44, 20.63) controlPoint2: CGPointMake(12.49, 20.65)];
                    [bezier5Path addCurveToPoint: CGPointMake(12.62, 20.85) controlPoint1: CGPointMake(12.57, 20.73) controlPoint2: CGPointMake(12.6, 20.78)];
                    [bezier5Path addCurveToPoint: CGPointMake(12.65, 21.11) controlPoint1: CGPointMake(12.64, 20.92) controlPoint2: CGPointMake(12.65, 21.01)];
                    [bezier5Path addCurveToPoint: CGPointMake(12.62, 21.37) controlPoint1: CGPointMake(12.65, 21.22) controlPoint2: CGPointMake(12.64, 21.3)];
                    [bezier5Path addCurveToPoint: CGPointMake(12.5, 21.54) controlPoint1: CGPointMake(12.6, 21.44) controlPoint2: CGPointMake(12.56, 21.5)];
                    [bezier5Path addCurveToPoint: CGPointMake(12.27, 21.63) controlPoint1: CGPointMake(12.44, 21.58) controlPoint2: CGPointMake(12.37, 21.61)];
                    [bezier5Path addCurveToPoint: CGPointMake(11.91, 21.66) controlPoint1: CGPointMake(12.18, 21.65) controlPoint2: CGPointMake(12.06, 21.66)];
                    [bezier5Path addLineToPoint: CGPointMake(11.83, 21.66)];
                    [bezier5Path addCurveToPoint: CGPointMake(11.65, 21.65) controlPoint1: CGPointMake(11.77, 21.66) controlPoint2: CGPointMake(11.72, 21.66)];
                    [bezier5Path addCurveToPoint: CGPointMake(11.47, 21.62) controlPoint1: CGPointMake(11.58, 21.65) controlPoint2: CGPointMake(11.52, 21.64)];
                    [bezier5Path addCurveToPoint: CGPointMake(11.33, 21.54) controlPoint1: CGPointMake(11.41, 21.6) controlPoint2: CGPointMake(11.37, 21.58)];
                    [bezier5Path addCurveToPoint: CGPointMake(11.27, 21.4) controlPoint1: CGPointMake(11.29, 21.51) controlPoint2: CGPointMake(11.27, 21.46)];
                    [bezier5Path addLineToPoint: CGPointMake(11.27, 21.39)];
                    [bezier5Path addCurveToPoint: CGPointMake(11.32, 21.29) controlPoint1: CGPointMake(11.27, 21.35) controlPoint2: CGPointMake(11.29, 21.31)];
                    [bezier5Path addCurveToPoint: CGPointMake(11.43, 21.25) controlPoint1: CGPointMake(11.35, 21.26) controlPoint2: CGPointMake(11.39, 21.25)];
                    [bezier5Path addLineToPoint: CGPointMake(11.43, 21.25)];
                    [bezier5Path addCurveToPoint: CGPointMake(11.51, 21.26) controlPoint1: CGPointMake(11.47, 21.25) controlPoint2: CGPointMake(11.49, 21.26)];
                    [bezier5Path addCurveToPoint: CGPointMake(11.56, 21.28) controlPoint1: CGPointMake(11.53, 21.27) controlPoint2: CGPointMake(11.55, 21.27)];
                    [bezier5Path addCurveToPoint: CGPointMake(11.6, 21.31) controlPoint1: CGPointMake(11.57, 21.29) controlPoint2: CGPointMake(11.59, 21.3)];
                    [bezier5Path addCurveToPoint: CGPointMake(11.67, 21.33) controlPoint1: CGPointMake(11.62, 21.32) controlPoint2: CGPointMake(11.64, 21.33)];
                    [bezier5Path addCurveToPoint: CGPointMake(11.77, 21.35) controlPoint1: CGPointMake(11.7, 21.34) controlPoint2: CGPointMake(11.73, 21.34)];
                    [bezier5Path addCurveToPoint: CGPointMake(11.94, 21.36) controlPoint1: CGPointMake(11.81, 21.36) controlPoint2: CGPointMake(11.87, 21.36)];
                    [bezier5Path addCurveToPoint: CGPointMake(12.12, 21.34) controlPoint1: CGPointMake(12.01, 21.36) controlPoint2: CGPointMake(12.07, 21.36)];
                    [bezier5Path addCurveToPoint: CGPointMake(12.23, 21.29) controlPoint1: CGPointMake(12.16, 21.33) controlPoint2: CGPointMake(12.2, 21.31)];
                    [bezier5Path addCurveToPoint: CGPointMake(12.28, 21.2) controlPoint1: CGPointMake(12.26, 21.27) controlPoint2: CGPointMake(12.27, 21.24)];
                    [bezier5Path addCurveToPoint: CGPointMake(12.3, 21.08) controlPoint1: CGPointMake(12.29, 21.17) controlPoint2: CGPointMake(12.3, 21.13)];
                    [bezier5Path addCurveToPoint: CGPointMake(12.27, 20.91) controlPoint1: CGPointMake(12.3, 21) controlPoint2: CGPointMake(12.29, 20.94)];
                    [bezier5Path addCurveToPoint: CGPointMake(12.15, 20.86) controlPoint1: CGPointMake(12.25, 20.88) controlPoint2: CGPointMake(12.21, 20.86)];
                    [bezier5Path addLineToPoint: CGPointMake(11.54, 20.86)];
                    [bezier5Path addCurveToPoint: CGPointMake(11.41, 20.85) controlPoint1: CGPointMake(11.49, 20.86) controlPoint2: CGPointMake(11.45, 20.86)];
                    [bezier5Path addCurveToPoint: CGPointMake(11.34, 20.82) controlPoint1: CGPointMake(11.38, 20.85) controlPoint2: CGPointMake(11.36, 20.83)];
                    [bezier5Path addCurveToPoint: CGPointMake(11.31, 20.75) controlPoint1: CGPointMake(11.32, 20.8) controlPoint2: CGPointMake(11.31, 20.78)];
                    [bezier5Path addCurveToPoint: CGPointMake(11.3, 20.64) controlPoint1: CGPointMake(11.3, 20.72) controlPoint2: CGPointMake(11.3, 20.69)];
                    [bezier5Path addLineToPoint: CGPointMake(11.3, 19.96)];
                    [bezier5Path addCurveToPoint: CGPointMake(11.35, 19.84) controlPoint1: CGPointMake(11.3, 19.91) controlPoint2: CGPointMake(11.32, 19.87)];
                    [bezier5Path addCurveToPoint: CGPointMake(11.5, 19.8) controlPoint1: CGPointMake(11.37, 19.81) controlPoint2: CGPointMake(11.43, 19.8)];
                    [bezier5Path addCurveToPoint: CGPointMake(11.61, 19.8) controlPoint1: CGPointMake(11.52, 19.8) controlPoint2: CGPointMake(11.56, 19.8)];
                    [bezier5Path addCurveToPoint: CGPointMake(11.78, 19.8) controlPoint1: CGPointMake(11.66, 19.8) controlPoint2: CGPointMake(11.72, 19.8)];
                    [bezier5Path addCurveToPoint: CGPointMake(11.97, 19.8) controlPoint1: CGPointMake(11.84, 19.8) controlPoint2: CGPointMake(11.9, 19.8)];
                    [bezier5Path addCurveToPoint: CGPointMake(12.15, 19.8) controlPoint1: CGPointMake(12.04, 19.8) controlPoint2: CGPointMake(12.1, 19.8)];
                    [bezier5Path addCurveToPoint: CGPointMake(12.29, 19.8) controlPoint1: CGPointMake(12.21, 19.8) controlPoint2: CGPointMake(12.25, 19.8)];
                    [bezier5Path addCurveToPoint: CGPointMake(12.37, 19.8) controlPoint1: CGPointMake(12.33, 19.8) controlPoint2: CGPointMake(12.36, 19.8)];
                    [bezier5Path addCurveToPoint: CGPointMake(12.43, 19.81) controlPoint1: CGPointMake(12.39, 19.8) controlPoint2: CGPointMake(12.41, 19.8)];
                    [bezier5Path addCurveToPoint: CGPointMake(12.49, 19.83) controlPoint1: CGPointMake(12.45, 19.81) controlPoint2: CGPointMake(12.47, 19.82)];
                    [bezier5Path addCurveToPoint: CGPointMake(12.54, 19.88) controlPoint1: CGPointMake(12.51, 19.84) controlPoint2: CGPointMake(12.53, 19.86)];
                    [bezier5Path addCurveToPoint: CGPointMake(12.56, 19.95) controlPoint1: CGPointMake(12.55, 19.9) controlPoint2: CGPointMake(12.56, 19.92)];
                    [bezier5Path addLineToPoint: CGPointMake(12.56, 19.96)];
                    [bezier5Path addCurveToPoint: CGPointMake(12.54, 20.04) controlPoint1: CGPointMake(12.56, 20) controlPoint2: CGPointMake(12.55, 20.02)];
                    [bezier5Path addCurveToPoint: CGPointMake(12.5, 20.08) controlPoint1: CGPointMake(12.53, 20.06) controlPoint2: CGPointMake(12.51, 20.08)];
                    [bezier5Path addCurveToPoint: CGPointMake(12.43, 20.1) controlPoint1: CGPointMake(12.48, 20.09) controlPoint2: CGPointMake(12.46, 20.09)];
                    [bezier5Path addCurveToPoint: CGPointMake(12.36, 20.1) controlPoint1: CGPointMake(12.41, 20.1) controlPoint2: CGPointMake(12.38, 20.1)];
                    [bezier5Path addLineToPoint: CGPointMake(11.65, 20.1)];
                    [bezier5Path addLineToPoint: CGPointMake(11.65, 20.56)];
                    [bezier5Path addLineToPoint: CGPointMake(12.12, 20.56)];
                    [bezier5Path addCurveToPoint: CGPointMake(12.37, 20.61) controlPoint1: CGPointMake(12.22, 20.58) controlPoint2: CGPointMake(12.3, 20.59)];
                    [bezier5Path closePath];
                    bezier5Path.miterLimit = 4;

                    [fillColor setFill];
                    [bezier5Path fill];


                    //// Bezier 6 Drawing
                    UIBezierPath* bezier6Path = [UIBezierPath bezierPath];
                    [bezier6Path moveToPoint: CGPointMake(15.25, 20.53)];
                    [bezier6Path addCurveToPoint: CGPointMake(15.54, 20.57) controlPoint1: CGPointMake(15.36, 20.53) controlPoint2: CGPointMake(15.46, 20.54)];
                    [bezier6Path addCurveToPoint: CGPointMake(15.73, 20.68) controlPoint1: CGPointMake(15.62, 20.59) controlPoint2: CGPointMake(15.68, 20.63)];
                    [bezier6Path addCurveToPoint: CGPointMake(15.83, 20.86) controlPoint1: CGPointMake(15.78, 20.73) controlPoint2: CGPointMake(15.81, 20.79)];
                    [bezier6Path addCurveToPoint: CGPointMake(15.86, 21.11) controlPoint1: CGPointMake(15.85, 20.93) controlPoint2: CGPointMake(15.86, 21.02)];
                    [bezier6Path addCurveToPoint: CGPointMake(15.83, 21.35) controlPoint1: CGPointMake(15.86, 21.2) controlPoint2: CGPointMake(15.85, 21.28)];
                    [bezier6Path addCurveToPoint: CGPointMake(15.71, 21.53) controlPoint1: CGPointMake(15.81, 21.42) controlPoint2: CGPointMake(15.77, 21.48)];
                    [bezier6Path addCurveToPoint: CGPointMake(15.5, 21.64) controlPoint1: CGPointMake(15.66, 21.58) controlPoint2: CGPointMake(15.59, 21.61)];
                    [bezier6Path addCurveToPoint: CGPointMake(15.17, 21.68) controlPoint1: CGPointMake(15.41, 21.66) controlPoint2: CGPointMake(15.3, 21.68)];
                    [bezier6Path addCurveToPoint: CGPointMake(14.9, 21.65) controlPoint1: CGPointMake(15.07, 21.68) controlPoint2: CGPointMake(14.98, 21.67)];
                    [bezier6Path addCurveToPoint: CGPointMake(14.69, 21.56) controlPoint1: CGPointMake(14.82, 21.63) controlPoint2: CGPointMake(14.75, 21.6)];
                    [bezier6Path addCurveToPoint: CGPointMake(14.55, 21.4) controlPoint1: CGPointMake(14.63, 21.52) controlPoint2: CGPointMake(14.58, 21.47)];
                    [bezier6Path addCurveToPoint: CGPointMake(14.5, 21.16) controlPoint1: CGPointMake(14.52, 21.33) controlPoint2: CGPointMake(14.5, 21.25)];
                    [bezier6Path addLineToPoint: CGPointMake(14.5, 19.97)];
                    [bezier6Path addCurveToPoint: CGPointMake(14.51, 19.92) controlPoint1: CGPointMake(14.5, 19.95) controlPoint2: CGPointMake(14.5, 19.93)];
                    [bezier6Path addCurveToPoint: CGPointMake(14.54, 19.87) controlPoint1: CGPointMake(14.52, 19.9) controlPoint2: CGPointMake(14.53, 19.88)];
                    [bezier6Path addCurveToPoint: CGPointMake(14.6, 19.84) controlPoint1: CGPointMake(14.55, 19.86) controlPoint2: CGPointMake(14.57, 19.84)];
                    [bezier6Path addCurveToPoint: CGPointMake(14.69, 19.82) controlPoint1: CGPointMake(14.62, 19.83) controlPoint2: CGPointMake(14.65, 19.82)];
                    [bezier6Path addCurveToPoint: CGPointMake(14.82, 19.87) controlPoint1: CGPointMake(14.75, 19.82) controlPoint2: CGPointMake(14.79, 19.84)];
                    [bezier6Path addCurveToPoint: CGPointMake(14.86, 19.98) controlPoint1: CGPointMake(14.85, 19.9) controlPoint2: CGPointMake(14.86, 19.93)];
                    [bezier6Path addLineToPoint: CGPointMake(14.86, 20.57)];
                    [bezier6Path addCurveToPoint: CGPointMake(15.08, 20.55) controlPoint1: CGPointMake(14.95, 20.56) controlPoint2: CGPointMake(15.02, 20.55)];
                    [bezier6Path addCurveToPoint: CGPointMake(15.25, 20.53) controlPoint1: CGPointMake(15.15, 20.53) controlPoint2: CGPointMake(15.2, 20.53)];
                    [bezier6Path closePath];
                    [bezier6Path moveToPoint: CGPointMake(15.51, 21.1)];
                    [bezier6Path addCurveToPoint: CGPointMake(15.5, 20.97) controlPoint1: CGPointMake(15.51, 21.04) controlPoint2: CGPointMake(15.51, 21)];
                    [bezier6Path addCurveToPoint: CGPointMake(15.45, 20.89) controlPoint1: CGPointMake(15.49, 20.93) controlPoint2: CGPointMake(15.47, 20.91)];
                    [bezier6Path addCurveToPoint: CGPointMake(15.35, 20.85) controlPoint1: CGPointMake(15.42, 20.87) controlPoint2: CGPointMake(15.39, 20.86)];
                    [bezier6Path addCurveToPoint: CGPointMake(15.19, 20.84) controlPoint1: CGPointMake(15.31, 20.84) controlPoint2: CGPointMake(15.26, 20.84)];
                    [bezier6Path addCurveToPoint: CGPointMake(15.07, 20.84) controlPoint1: CGPointMake(15.14, 20.84) controlPoint2: CGPointMake(15.1, 20.84)];
                    [bezier6Path addCurveToPoint: CGPointMake(14.99, 20.84) controlPoint1: CGPointMake(15.04, 20.84) controlPoint2: CGPointMake(15.01, 20.84)];
                    [bezier6Path addCurveToPoint: CGPointMake(14.93, 20.85) controlPoint1: CGPointMake(14.97, 20.84) controlPoint2: CGPointMake(14.95, 20.84)];
                    [bezier6Path addCurveToPoint: CGPointMake(14.87, 20.86) controlPoint1: CGPointMake(14.91, 20.85) controlPoint2: CGPointMake(14.89, 20.86)];
                    [bezier6Path addLineToPoint: CGPointMake(14.87, 21.1)];
                    [bezier6Path addCurveToPoint: CGPointMake(14.89, 21.23) controlPoint1: CGPointMake(14.87, 21.15) controlPoint2: CGPointMake(14.87, 21.19)];
                    [bezier6Path addCurveToPoint: CGPointMake(14.94, 21.32) controlPoint1: CGPointMake(14.9, 21.26) controlPoint2: CGPointMake(14.91, 21.29)];
                    [bezier6Path addCurveToPoint: CGPointMake(15.04, 21.37) controlPoint1: CGPointMake(14.96, 21.35) controlPoint2: CGPointMake(15, 21.36)];
                    [bezier6Path addCurveToPoint: CGPointMake(15.2, 21.39) controlPoint1: CGPointMake(15.08, 21.38) controlPoint2: CGPointMake(15.14, 21.39)];
                    [bezier6Path addCurveToPoint: CGPointMake(15.35, 21.38) controlPoint1: CGPointMake(15.26, 21.39) controlPoint2: CGPointMake(15.31, 21.39)];
                    [bezier6Path addCurveToPoint: CGPointMake(15.45, 21.34) controlPoint1: CGPointMake(15.39, 21.37) controlPoint2: CGPointMake(15.42, 21.36)];
                    [bezier6Path addCurveToPoint: CGPointMake(15.51, 21.26) controlPoint1: CGPointMake(15.48, 21.32) controlPoint2: CGPointMake(15.49, 21.29)];
                    [bezier6Path addCurveToPoint: CGPointMake(15.51, 21.1) controlPoint1: CGPointMake(15.51, 21.2) controlPoint2: CGPointMake(15.51, 21.15)];
                    [bezier6Path closePath];
                    bezier6Path.miterLimit = 4;

                    [fillColor setFill];
                    [bezier6Path fill];


                    //// Bezier 7 Drawing
                    UIBezierPath* bezier7Path = [UIBezierPath bezierPath];
                    [bezier7Path moveToPoint: CGPointMake(17.79, 21.16)];
                    [bezier7Path addLineToPoint: CGPointMake(17.79, 21.16)];
                    [bezier7Path addCurveToPoint: CGPointMake(17.75, 21.4) controlPoint1: CGPointMake(17.79, 21.26) controlPoint2: CGPointMake(17.78, 21.34)];
                    [bezier7Path addCurveToPoint: CGPointMake(17.61, 21.56) controlPoint1: CGPointMake(17.72, 21.46) controlPoint2: CGPointMake(17.67, 21.51)];
                    [bezier7Path addCurveToPoint: CGPointMake(17.39, 21.64) controlPoint1: CGPointMake(17.55, 21.6) controlPoint2: CGPointMake(17.48, 21.62)];
                    [bezier7Path addCurveToPoint: CGPointMake(17.11, 21.66) controlPoint1: CGPointMake(17.31, 21.66) controlPoint2: CGPointMake(17.21, 21.66)];
                    [bezier7Path addCurveToPoint: CGPointMake(16.82, 21.63) controlPoint1: CGPointMake(17, 21.66) controlPoint2: CGPointMake(16.91, 21.65)];
                    [bezier7Path addCurveToPoint: CGPointMake(16.61, 21.54) controlPoint1: CGPointMake(16.74, 21.61) controlPoint2: CGPointMake(16.66, 21.58)];
                    [bezier7Path addCurveToPoint: CGPointMake(16.47, 21.39) controlPoint1: CGPointMake(16.55, 21.5) controlPoint2: CGPointMake(16.5, 21.45)];
                    [bezier7Path addCurveToPoint: CGPointMake(16.42, 21.17) controlPoint1: CGPointMake(16.44, 21.33) controlPoint2: CGPointMake(16.42, 21.25)];
                    [bezier7Path addLineToPoint: CGPointMake(16.42, 20.28)];
                    [bezier7Path addCurveToPoint: CGPointMake(16.6, 19.92) controlPoint1: CGPointMake(16.42, 20.12) controlPoint2: CGPointMake(16.48, 20)];
                    [bezier7Path addCurveToPoint: CGPointMake(17.11, 19.8) controlPoint1: CGPointMake(16.72, 19.84) controlPoint2: CGPointMake(16.89, 19.8)];
                    [bezier7Path addCurveToPoint: CGPointMake(17.39, 19.83) controlPoint1: CGPointMake(17.21, 19.8) controlPoint2: CGPointMake(17.31, 19.81)];
                    [bezier7Path addCurveToPoint: CGPointMake(17.61, 19.92) controlPoint1: CGPointMake(17.47, 19.85) controlPoint2: CGPointMake(17.55, 19.88)];
                    [bezier7Path addCurveToPoint: CGPointMake(17.75, 20.07) controlPoint1: CGPointMake(17.67, 19.96) controlPoint2: CGPointMake(17.71, 20.01)];
                    [bezier7Path addCurveToPoint: CGPointMake(17.79, 20.28) controlPoint1: CGPointMake(17.78, 20.13) controlPoint2: CGPointMake(17.79, 20.2)];
                    [bezier7Path addLineToPoint: CGPointMake(17.79, 21.16)];
                    [bezier7Path closePath];
                    [bezier7Path moveToPoint: CGPointMake(17.43, 20.31)];
                    [bezier7Path addCurveToPoint: CGPointMake(17.35, 20.16) controlPoint1: CGPointMake(17.43, 20.25) controlPoint2: CGPointMake(17.4, 20.2)];
                    [bezier7Path addCurveToPoint: CGPointMake(17.1, 20.1) controlPoint1: CGPointMake(17.3, 20.12) controlPoint2: CGPointMake(17.21, 20.1)];
                    [bezier7Path addCurveToPoint: CGPointMake(16.86, 20.15) controlPoint1: CGPointMake(16.99, 20.1) controlPoint2: CGPointMake(16.91, 20.12)];
                    [bezier7Path addCurveToPoint: CGPointMake(16.78, 20.29) controlPoint1: CGPointMake(16.8, 20.19) controlPoint2: CGPointMake(16.78, 20.23)];
                    [bezier7Path addLineToPoint: CGPointMake(16.78, 21.16)];
                    [bezier7Path addCurveToPoint: CGPointMake(16.86, 21.31) controlPoint1: CGPointMake(16.78, 21.23) controlPoint2: CGPointMake(16.81, 21.28)];
                    [bezier7Path addCurveToPoint: CGPointMake(17.1, 21.35) controlPoint1: CGPointMake(16.91, 21.34) controlPoint2: CGPointMake(16.99, 21.35)];
                    [bezier7Path addCurveToPoint: CGPointMake(17.35, 21.3) controlPoint1: CGPointMake(17.2, 21.35) controlPoint2: CGPointMake(17.28, 21.34)];
                    [bezier7Path addCurveToPoint: CGPointMake(17.44, 21.15) controlPoint1: CGPointMake(17.41, 21.27) controlPoint2: CGPointMake(17.44, 21.22)];
                    [bezier7Path addLineToPoint: CGPointMake(17.44, 20.31)];
                    [bezier7Path addLineToPoint: CGPointMake(17.43, 20.31)];
                    [bezier7Path closePath];
                    bezier7Path.miterLimit = 4;

                    [fillColor setFill];
                    [bezier7Path fill];


                    //// Bezier 8 Drawing
                    UIBezierPath* bezier8Path = [UIBezierPath bezierPath];
                    [bezier8Path moveToPoint: CGPointMake(19.5, 20.61)];
                    [bezier8Path addCurveToPoint: CGPointMake(19.67, 20.69) controlPoint1: CGPointMake(19.57, 20.63) controlPoint2: CGPointMake(19.62, 20.65)];
                    [bezier8Path addCurveToPoint: CGPointMake(19.75, 20.85) controlPoint1: CGPointMake(19.71, 20.73) controlPoint2: CGPointMake(19.74, 20.78)];
                    [bezier8Path addCurveToPoint: CGPointMake(19.78, 21.11) controlPoint1: CGPointMake(19.77, 20.92) controlPoint2: CGPointMake(19.78, 21.01)];
                    [bezier8Path addCurveToPoint: CGPointMake(19.74, 21.37) controlPoint1: CGPointMake(19.78, 21.22) controlPoint2: CGPointMake(19.77, 21.3)];
                    [bezier8Path addCurveToPoint: CGPointMake(19.62, 21.54) controlPoint1: CGPointMake(19.72, 21.44) controlPoint2: CGPointMake(19.68, 21.5)];
                    [bezier8Path addCurveToPoint: CGPointMake(19.39, 21.63) controlPoint1: CGPointMake(19.57, 21.58) controlPoint2: CGPointMake(19.49, 21.61)];
                    [bezier8Path addCurveToPoint: CGPointMake(19.03, 21.66) controlPoint1: CGPointMake(19.29, 21.65) controlPoint2: CGPointMake(19.17, 21.66)];
                    [bezier8Path addLineToPoint: CGPointMake(18.95, 21.66)];
                    [bezier8Path addCurveToPoint: CGPointMake(18.77, 21.65) controlPoint1: CGPointMake(18.89, 21.66) controlPoint2: CGPointMake(18.83, 21.66)];
                    [bezier8Path addCurveToPoint: CGPointMake(18.59, 21.62) controlPoint1: CGPointMake(18.7, 21.65) controlPoint2: CGPointMake(18.64, 21.64)];
                    [bezier8Path addCurveToPoint: CGPointMake(18.45, 21.54) controlPoint1: CGPointMake(18.53, 21.6) controlPoint2: CGPointMake(18.49, 21.58)];
                    [bezier8Path addCurveToPoint: CGPointMake(18.39, 21.4) controlPoint1: CGPointMake(18.41, 21.51) controlPoint2: CGPointMake(18.39, 21.46)];
                    [bezier8Path addLineToPoint: CGPointMake(18.39, 21.39)];
                    [bezier8Path addCurveToPoint: CGPointMake(18.44, 21.29) controlPoint1: CGPointMake(18.39, 21.35) controlPoint2: CGPointMake(18.41, 21.31)];
                    [bezier8Path addCurveToPoint: CGPointMake(18.55, 21.25) controlPoint1: CGPointMake(18.47, 21.26) controlPoint2: CGPointMake(18.51, 21.25)];
                    [bezier8Path addLineToPoint: CGPointMake(18.55, 21.25)];
                    [bezier8Path addCurveToPoint: CGPointMake(18.63, 21.26) controlPoint1: CGPointMake(18.58, 21.25) controlPoint2: CGPointMake(18.61, 21.26)];
                    [bezier8Path addCurveToPoint: CGPointMake(18.68, 21.28) controlPoint1: CGPointMake(18.65, 21.27) controlPoint2: CGPointMake(18.67, 21.27)];
                    [bezier8Path addCurveToPoint: CGPointMake(18.72, 21.31) controlPoint1: CGPointMake(18.69, 21.29) controlPoint2: CGPointMake(18.71, 21.3)];
                    [bezier8Path addCurveToPoint: CGPointMake(18.78, 21.33) controlPoint1: CGPointMake(18.73, 21.32) controlPoint2: CGPointMake(18.75, 21.33)];
                    [bezier8Path addCurveToPoint: CGPointMake(18.88, 21.35) controlPoint1: CGPointMake(18.81, 21.34) controlPoint2: CGPointMake(18.84, 21.34)];
                    [bezier8Path addCurveToPoint: CGPointMake(19.06, 21.36) controlPoint1: CGPointMake(18.92, 21.36) controlPoint2: CGPointMake(18.98, 21.36)];
                    [bezier8Path addCurveToPoint: CGPointMake(19.24, 21.34) controlPoint1: CGPointMake(19.13, 21.36) controlPoint2: CGPointMake(19.19, 21.36)];
                    [bezier8Path addCurveToPoint: CGPointMake(19.35, 21.29) controlPoint1: CGPointMake(19.28, 21.33) controlPoint2: CGPointMake(19.32, 21.31)];
                    [bezier8Path addCurveToPoint: CGPointMake(19.4, 21.2) controlPoint1: CGPointMake(19.37, 21.27) controlPoint2: CGPointMake(19.39, 21.24)];
                    [bezier8Path addCurveToPoint: CGPointMake(19.41, 21.08) controlPoint1: CGPointMake(19.41, 21.17) controlPoint2: CGPointMake(19.41, 21.13)];
                    [bezier8Path addCurveToPoint: CGPointMake(19.38, 20.91) controlPoint1: CGPointMake(19.41, 21) controlPoint2: CGPointMake(19.4, 20.94)];
                    [bezier8Path addCurveToPoint: CGPointMake(19.26, 20.86) controlPoint1: CGPointMake(19.36, 20.88) controlPoint2: CGPointMake(19.32, 20.86)];
                    [bezier8Path addLineToPoint: CGPointMake(18.65, 20.86)];
                    [bezier8Path addCurveToPoint: CGPointMake(18.52, 20.85) controlPoint1: CGPointMake(18.59, 20.86) controlPoint2: CGPointMake(18.55, 20.86)];
                    [bezier8Path addCurveToPoint: CGPointMake(18.45, 20.82) controlPoint1: CGPointMake(18.49, 20.85) controlPoint2: CGPointMake(18.46, 20.83)];
                    [bezier8Path addCurveToPoint: CGPointMake(18.42, 20.75) controlPoint1: CGPointMake(18.43, 20.8) controlPoint2: CGPointMake(18.42, 20.78)];
                    [bezier8Path addCurveToPoint: CGPointMake(18.41, 20.64) controlPoint1: CGPointMake(18.41, 20.72) controlPoint2: CGPointMake(18.41, 20.69)];
                    [bezier8Path addLineToPoint: CGPointMake(18.41, 19.96)];
                    [bezier8Path addCurveToPoint: CGPointMake(18.45, 19.84) controlPoint1: CGPointMake(18.41, 19.91) controlPoint2: CGPointMake(18.43, 19.87)];
                    [bezier8Path addCurveToPoint: CGPointMake(18.6, 19.8) controlPoint1: CGPointMake(18.48, 19.81) controlPoint2: CGPointMake(18.53, 19.8)];
                    [bezier8Path addCurveToPoint: CGPointMake(18.71, 19.8) controlPoint1: CGPointMake(18.62, 19.8) controlPoint2: CGPointMake(18.66, 19.8)];
                    [bezier8Path addCurveToPoint: CGPointMake(18.87, 19.8) controlPoint1: CGPointMake(18.76, 19.8) controlPoint2: CGPointMake(18.82, 19.8)];
                    [bezier8Path addCurveToPoint: CGPointMake(19.06, 19.8) controlPoint1: CGPointMake(18.93, 19.8) controlPoint2: CGPointMake(18.99, 19.8)];
                    [bezier8Path addCurveToPoint: CGPointMake(19.24, 19.8) controlPoint1: CGPointMake(19.13, 19.8) controlPoint2: CGPointMake(19.19, 19.8)];
                    [bezier8Path addCurveToPoint: CGPointMake(19.39, 19.8) controlPoint1: CGPointMake(19.3, 19.8) controlPoint2: CGPointMake(19.35, 19.8)];
                    [bezier8Path addCurveToPoint: CGPointMake(19.47, 19.8) controlPoint1: CGPointMake(19.43, 19.8) controlPoint2: CGPointMake(19.46, 19.8)];
                    [bezier8Path addCurveToPoint: CGPointMake(19.53, 19.81) controlPoint1: CGPointMake(19.49, 19.8) controlPoint2: CGPointMake(19.51, 19.8)];
                    [bezier8Path addCurveToPoint: CGPointMake(19.6, 19.83) controlPoint1: CGPointMake(19.56, 19.81) controlPoint2: CGPointMake(19.58, 19.82)];
                    [bezier8Path addCurveToPoint: CGPointMake(19.66, 19.88) controlPoint1: CGPointMake(19.62, 19.84) controlPoint2: CGPointMake(19.64, 19.86)];
                    [bezier8Path addCurveToPoint: CGPointMake(19.68, 19.95) controlPoint1: CGPointMake(19.67, 19.9) controlPoint2: CGPointMake(19.68, 19.92)];
                    [bezier8Path addLineToPoint: CGPointMake(19.68, 19.96)];
                    [bezier8Path addCurveToPoint: CGPointMake(19.66, 20.04) controlPoint1: CGPointMake(19.68, 20) controlPoint2: CGPointMake(19.67, 20.02)];
                    [bezier8Path addCurveToPoint: CGPointMake(19.62, 20.08) controlPoint1: CGPointMake(19.65, 20.06) controlPoint2: CGPointMake(19.63, 20.08)];
                    [bezier8Path addCurveToPoint: CGPointMake(19.55, 20.1) controlPoint1: CGPointMake(19.6, 20.09) controlPoint2: CGPointMake(19.58, 20.09)];
                    [bezier8Path addCurveToPoint: CGPointMake(19.47, 20.1) controlPoint1: CGPointMake(19.52, 20.1) controlPoint2: CGPointMake(19.5, 20.1)];
                    [bezier8Path addLineToPoint: CGPointMake(18.76, 20.1)];
                    [bezier8Path addLineToPoint: CGPointMake(18.76, 20.56)];
                    [bezier8Path addLineToPoint: CGPointMake(19.24, 20.56)];
                    [bezier8Path addCurveToPoint: CGPointMake(19.5, 20.61) controlPoint1: CGPointMake(19.35, 20.58) controlPoint2: CGPointMake(19.43, 20.59)];
                    [bezier8Path closePath];
                    bezier8Path.miterLimit = 4;

                    [fillColor setFill];
                    [bezier8Path fill];


                    //// Bezier 9 Drawing
                    UIBezierPath* bezier9Path = [UIBezierPath bezierPath];
                    [bezier9Path moveToPoint: CGPointMake(21.08, 19.81)];
                    [bezier9Path addCurveToPoint: CGPointMake(21.42, 19.84) controlPoint1: CGPointMake(21.21, 19.81) controlPoint2: CGPointMake(21.33, 19.82)];
                    [bezier9Path addCurveToPoint: CGPointMake(21.64, 19.93) controlPoint1: CGPointMake(21.51, 19.86) controlPoint2: CGPointMake(21.59, 19.89)];
                    [bezier9Path addCurveToPoint: CGPointMake(21.77, 20.09) controlPoint1: CGPointMake(21.7, 19.97) controlPoint2: CGPointMake(21.74, 20.03)];
                    [bezier9Path addCurveToPoint: CGPointMake(21.81, 20.33) controlPoint1: CGPointMake(21.8, 20.16) controlPoint2: CGPointMake(21.81, 20.24)];
                    [bezier9Path addLineToPoint: CGPointMake(21.81, 20.34)];
                    [bezier9Path addCurveToPoint: CGPointMake(21.78, 20.6) controlPoint1: CGPointMake(21.81, 20.44) controlPoint2: CGPointMake(21.8, 20.53)];
                    [bezier9Path addCurveToPoint: CGPointMake(21.68, 20.77) controlPoint1: CGPointMake(21.76, 20.67) controlPoint2: CGPointMake(21.73, 20.73)];
                    [bezier9Path addCurveToPoint: CGPointMake(21.5, 20.86) controlPoint1: CGPointMake(21.63, 20.81) controlPoint2: CGPointMake(21.57, 20.84)];
                    [bezier9Path addCurveToPoint: CGPointMake(21.22, 20.89) controlPoint1: CGPointMake(21.42, 20.88) controlPoint2: CGPointMake(21.33, 20.89)];
                    [bezier9Path addCurveToPoint: CGPointMake(20.98, 20.89) controlPoint1: CGPointMake(21.12, 20.89) controlPoint2: CGPointMake(21.04, 20.89)];
                    [bezier9Path addCurveToPoint: CGPointMake(20.83, 20.92) controlPoint1: CGPointMake(20.92, 20.89) controlPoint2: CGPointMake(20.86, 20.9)];
                    [bezier9Path addCurveToPoint: CGPointMake(20.75, 21.01) controlPoint1: CGPointMake(20.79, 20.94) controlPoint2: CGPointMake(20.77, 20.97)];
                    [bezier9Path addCurveToPoint: CGPointMake(20.73, 21.18) controlPoint1: CGPointMake(20.74, 21.05) controlPoint2: CGPointMake(20.73, 21.11)];
                    [bezier9Path addLineToPoint: CGPointMake(20.73, 21.34)];
                    [bezier9Path addLineToPoint: CGPointMake(21.62, 21.34)];
                    [bezier9Path addCurveToPoint: CGPointMake(21.69, 21.35) controlPoint1: CGPointMake(21.64, 21.34) controlPoint2: CGPointMake(21.67, 21.34)];
                    [bezier9Path addCurveToPoint: CGPointMake(21.75, 21.38) controlPoint1: CGPointMake(21.71, 21.36) controlPoint2: CGPointMake(21.73, 21.36)];
                    [bezier9Path addCurveToPoint: CGPointMake(21.79, 21.43) controlPoint1: CGPointMake(21.77, 21.39) controlPoint2: CGPointMake(21.78, 21.41)];
                    [bezier9Path addCurveToPoint: CGPointMake(21.81, 21.5) controlPoint1: CGPointMake(21.8, 21.45) controlPoint2: CGPointMake(21.81, 21.47)];
                    [bezier9Path addCurveToPoint: CGPointMake(21.79, 21.57) controlPoint1: CGPointMake(21.81, 21.53) controlPoint2: CGPointMake(21.81, 21.55)];
                    [bezier9Path addCurveToPoint: CGPointMake(21.75, 21.61) controlPoint1: CGPointMake(21.78, 21.59) controlPoint2: CGPointMake(21.77, 21.6)];
                    [bezier9Path addCurveToPoint: CGPointMake(21.69, 21.64) controlPoint1: CGPointMake(21.73, 21.62) controlPoint2: CGPointMake(21.71, 21.63)];
                    [bezier9Path addCurveToPoint: CGPointMake(21.62, 21.65) controlPoint1: CGPointMake(21.67, 21.65) controlPoint2: CGPointMake(21.64, 21.65)];
                    [bezier9Path addLineToPoint: CGPointMake(20.58, 21.65)];
                    [bezier9Path addCurveToPoint: CGPointMake(20.43, 21.61) controlPoint1: CGPointMake(20.5, 21.65) controlPoint2: CGPointMake(20.45, 21.64)];
                    [bezier9Path addCurveToPoint: CGPointMake(20.38, 21.49) controlPoint1: CGPointMake(20.4, 21.58) controlPoint2: CGPointMake(20.38, 21.55)];
                    [bezier9Path addLineToPoint: CGPointMake(20.38, 21.12)];
                    [bezier9Path addCurveToPoint: CGPointMake(20.42, 20.87) controlPoint1: CGPointMake(20.38, 21.02) controlPoint2: CGPointMake(20.39, 20.94)];
                    [bezier9Path addCurveToPoint: CGPointMake(20.53, 20.71) controlPoint1: CGPointMake(20.45, 20.8) controlPoint2: CGPointMake(20.48, 20.75)];
                    [bezier9Path addCurveToPoint: CGPointMake(20.71, 20.62) controlPoint1: CGPointMake(20.58, 20.67) controlPoint2: CGPointMake(20.64, 20.64)];
                    [bezier9Path addCurveToPoint: CGPointMake(20.95, 20.59) controlPoint1: CGPointMake(20.78, 20.6) controlPoint2: CGPointMake(20.86, 20.59)];
                    [bezier9Path addLineToPoint: CGPointMake(21.21, 20.58)];
                    [bezier9Path addCurveToPoint: CGPointMake(21.33, 20.57) controlPoint1: CGPointMake(21.26, 20.58) controlPoint2: CGPointMake(21.3, 20.58)];
                    [bezier9Path addCurveToPoint: CGPointMake(21.41, 20.53) controlPoint1: CGPointMake(21.36, 20.56) controlPoint2: CGPointMake(21.39, 20.55)];
                    [bezier9Path addCurveToPoint: CGPointMake(21.45, 20.46) controlPoint1: CGPointMake(21.43, 20.51) controlPoint2: CGPointMake(21.44, 20.49)];
                    [bezier9Path addCurveToPoint: CGPointMake(21.46, 20.35) controlPoint1: CGPointMake(21.46, 20.43) controlPoint2: CGPointMake(21.46, 20.39)];
                    [bezier9Path addLineToPoint: CGPointMake(21.46, 20.34)];
                    [bezier9Path addCurveToPoint: CGPointMake(21.45, 20.22) controlPoint1: CGPointMake(21.46, 20.29) controlPoint2: CGPointMake(21.46, 20.25)];
                    [bezier9Path addCurveToPoint: CGPointMake(21.39, 20.14) controlPoint1: CGPointMake(21.44, 20.19) controlPoint2: CGPointMake(21.42, 20.16)];
                    [bezier9Path addCurveToPoint: CGPointMake(21.27, 20.1) controlPoint1: CGPointMake(21.36, 20.12) controlPoint2: CGPointMake(21.32, 20.11)];
                    [bezier9Path addCurveToPoint: CGPointMake(21.08, 20.09) controlPoint1: CGPointMake(21.22, 20.09) controlPoint2: CGPointMake(21.16, 20.09)];
                    [bezier9Path addCurveToPoint: CGPointMake(20.91, 20.1) controlPoint1: CGPointMake(21.02, 20.09) controlPoint2: CGPointMake(20.96, 20.09)];
                    [bezier9Path addCurveToPoint: CGPointMake(20.78, 20.13) controlPoint1: CGPointMake(20.86, 20.11) controlPoint2: CGPointMake(20.82, 20.12)];
                    [bezier9Path addCurveToPoint: CGPointMake(20.69, 20.16) controlPoint1: CGPointMake(20.74, 20.14) controlPoint2: CGPointMake(20.71, 20.15)];
                    [bezier9Path addCurveToPoint: CGPointMake(20.59, 20.18) controlPoint1: CGPointMake(20.66, 20.17) controlPoint2: CGPointMake(20.63, 20.18)];
                    [bezier9Path addLineToPoint: CGPointMake(20.58, 20.18)];
                    [bezier9Path addCurveToPoint: CGPointMake(20.47, 20.13) controlPoint1: CGPointMake(20.54, 20.18) controlPoint2: CGPointMake(20.5, 20.16)];
                    [bezier9Path addCurveToPoint: CGPointMake(20.43, 20.02) controlPoint1: CGPointMake(20.44, 20.1) controlPoint2: CGPointMake(20.43, 20.06)];
                    [bezier9Path addLineToPoint: CGPointMake(20.43, 20.01)];
                    [bezier9Path addCurveToPoint: CGPointMake(20.49, 19.91) controlPoint1: CGPointMake(20.43, 19.97) controlPoint2: CGPointMake(20.45, 19.93)];
                    [bezier9Path addCurveToPoint: CGPointMake(20.63, 19.84) controlPoint1: CGPointMake(20.53, 19.88) controlPoint2: CGPointMake(20.57, 19.86)];
                    [bezier9Path addCurveToPoint: CGPointMake(20.84, 19.8) controlPoint1: CGPointMake(20.69, 19.82) controlPoint2: CGPointMake(20.76, 19.81)];
                    [bezier9Path addCurveToPoint: CGPointMake(21.08, 19.81) controlPoint1: CGPointMake(20.91, 19.81) controlPoint2: CGPointMake(20.99, 19.81)];
                    [bezier9Path closePath];
                    bezier9Path.miterLimit = 4;

                    [fillColor setFill];
                    [bezier9Path fill];


                    //// Bezier 10 Drawing
                    UIBezierPath* bezier10Path = [UIBezierPath bezierPath];
                    [bezier10Path moveToPoint: CGPointMake(23.7, 21.16)];
                    [bezier10Path addCurveToPoint: CGPointMake(23.68, 21.37) controlPoint1: CGPointMake(23.7, 21.24) controlPoint2: CGPointMake(23.69, 21.31)];
                    [bezier10Path addCurveToPoint: CGPointMake(23.58, 21.53) controlPoint1: CGPointMake(23.66, 21.43) controlPoint2: CGPointMake(23.63, 21.49)];
                    [bezier10Path addCurveToPoint: CGPointMake(23.36, 21.63) controlPoint1: CGPointMake(23.53, 21.57) controlPoint2: CGPointMake(23.46, 21.61)];
                    [bezier10Path addCurveToPoint: CGPointMake(22.99, 21.66) controlPoint1: CGPointMake(23.27, 21.65) controlPoint2: CGPointMake(23.14, 21.66)];
                    [bezier10Path addCurveToPoint: CGPointMake(22.64, 21.62) controlPoint1: CGPointMake(22.85, 21.66) controlPoint2: CGPointMake(22.73, 21.65)];
                    [bezier10Path addCurveToPoint: CGPointMake(22.44, 21.52) controlPoint1: CGPointMake(22.55, 21.59) controlPoint2: CGPointMake(22.48, 21.56)];
                    [bezier10Path addCurveToPoint: CGPointMake(22.34, 21.36) controlPoint1: CGPointMake(22.39, 21.48) controlPoint2: CGPointMake(22.36, 21.42)];
                    [bezier10Path addCurveToPoint: CGPointMake(22.32, 21.16) controlPoint1: CGPointMake(22.32, 21.3) controlPoint2: CGPointMake(22.32, 21.23)];
                    [bezier10Path addCurveToPoint: CGPointMake(22.32, 21.01) controlPoint1: CGPointMake(22.32, 21.1) controlPoint2: CGPointMake(22.32, 21.05)];
                    [bezier10Path addCurveToPoint: CGPointMake(22.35, 20.91) controlPoint1: CGPointMake(22.32, 20.97) controlPoint2: CGPointMake(22.33, 20.94)];
                    [bezier10Path addCurveToPoint: CGPointMake(22.43, 20.83) controlPoint1: CGPointMake(22.37, 20.88) controlPoint2: CGPointMake(22.39, 20.86)];
                    [bezier10Path addCurveToPoint: CGPointMake(22.59, 20.75) controlPoint1: CGPointMake(22.47, 20.81) controlPoint2: CGPointMake(22.52, 20.78)];
                    [bezier10Path addCurveToPoint: CGPointMake(22.44, 20.69) controlPoint1: CGPointMake(22.52, 20.73) controlPoint2: CGPointMake(22.47, 20.71)];
                    [bezier10Path addCurveToPoint: CGPointMake(22.36, 20.62) controlPoint1: CGPointMake(22.4, 20.67) controlPoint2: CGPointMake(22.38, 20.65)];
                    [bezier10Path addCurveToPoint: CGPointMake(22.33, 20.51) controlPoint1: CGPointMake(22.34, 20.59) controlPoint2: CGPointMake(22.33, 20.55)];
                    [bezier10Path addCurveToPoint: CGPointMake(22.32, 20.33) controlPoint1: CGPointMake(22.33, 20.46) controlPoint2: CGPointMake(22.32, 20.4)];
                    [bezier10Path addCurveToPoint: CGPointMake(22.36, 20.09) controlPoint1: CGPointMake(22.32, 20.23) controlPoint2: CGPointMake(22.33, 20.15)];
                    [bezier10Path addCurveToPoint: CGPointMake(22.48, 19.93) controlPoint1: CGPointMake(22.38, 20.03) controlPoint2: CGPointMake(22.42, 19.97)];
                    [bezier10Path addCurveToPoint: CGPointMake(22.69, 19.85) controlPoint1: CGPointMake(22.53, 19.89) controlPoint2: CGPointMake(22.61, 19.86)];
                    [bezier10Path addCurveToPoint: CGPointMake(23.01, 19.82) controlPoint1: CGPointMake(22.78, 19.83) controlPoint2: CGPointMake(22.88, 19.82)];
                    [bezier10Path addCurveToPoint: CGPointMake(23.34, 19.85) controlPoint1: CGPointMake(23.14, 19.82) controlPoint2: CGPointMake(23.25, 19.83)];
                    [bezier10Path addCurveToPoint: CGPointMake(23.56, 19.93) controlPoint1: CGPointMake(23.43, 19.87) controlPoint2: CGPointMake(23.5, 19.9)];
                    [bezier10Path addCurveToPoint: CGPointMake(23.68, 20.08) controlPoint1: CGPointMake(23.62, 19.97) controlPoint2: CGPointMake(23.65, 20.02)];
                    [bezier10Path addCurveToPoint: CGPointMake(23.72, 20.32) controlPoint1: CGPointMake(23.71, 20.15) controlPoint2: CGPointMake(23.72, 20.23)];
                    [bezier10Path addCurveToPoint: CGPointMake(23.71, 20.5) controlPoint1: CGPointMake(23.72, 20.4) controlPoint2: CGPointMake(23.72, 20.46)];
                    [bezier10Path addCurveToPoint: CGPointMake(23.68, 20.61) controlPoint1: CGPointMake(23.71, 20.55) controlPoint2: CGPointMake(23.7, 20.58)];
                    [bezier10Path addCurveToPoint: CGPointMake(23.6, 20.68) controlPoint1: CGPointMake(23.66, 20.64) controlPoint2: CGPointMake(23.64, 20.66)];
                    [bezier10Path addCurveToPoint: CGPointMake(23.46, 20.74) controlPoint1: CGPointMake(23.57, 20.7) controlPoint2: CGPointMake(23.52, 20.72)];
                    [bezier10Path addCurveToPoint: CGPointMake(23.61, 20.81) controlPoint1: CGPointMake(23.52, 20.77) controlPoint2: CGPointMake(23.57, 20.79)];
                    [bezier10Path addCurveToPoint: CGPointMake(23.69, 20.88) controlPoint1: CGPointMake(23.64, 20.83) controlPoint2: CGPointMake(23.67, 20.86)];
                    [bezier10Path addCurveToPoint: CGPointMake(23.72, 20.98) controlPoint1: CGPointMake(23.71, 20.91) controlPoint2: CGPointMake(23.71, 20.94)];
                    [bezier10Path addCurveToPoint: CGPointMake(23.7, 21.16) controlPoint1: CGPointMake(23.7, 21.03) controlPoint2: CGPointMake(23.7, 21.09)];
                    [bezier10Path closePath];
                    [bezier10Path moveToPoint: CGPointMake(23.35, 21.13)];
                    [bezier10Path addCurveToPoint: CGPointMake(23.34, 21.11) controlPoint1: CGPointMake(23.35, 21.13) controlPoint2: CGPointMake(23.34, 21.12)];
                    [bezier10Path addCurveToPoint: CGPointMake(23.3, 21.04) controlPoint1: CGPointMake(23.33, 21.09) controlPoint2: CGPointMake(23.32, 21.07)];
                    [bezier10Path addCurveToPoint: CGPointMake(23.2, 20.96) controlPoint1: CGPointMake(23.28, 21.02) controlPoint2: CGPointMake(23.24, 20.99)];
                    [bezier10Path addCurveToPoint: CGPointMake(23.02, 20.88) controlPoint1: CGPointMake(23.16, 20.93) controlPoint2: CGPointMake(23.09, 20.9)];
                    [bezier10Path addCurveToPoint: CGPointMake(22.83, 20.97) controlPoint1: CGPointMake(22.94, 20.91) controlPoint2: CGPointMake(22.88, 20.94)];
                    [bezier10Path addCurveToPoint: CGPointMake(22.73, 21.06) controlPoint1: CGPointMake(22.79, 21) controlPoint2: CGPointMake(22.76, 21.03)];
                    [bezier10Path addCurveToPoint: CGPointMake(22.69, 21.13) controlPoint1: CGPointMake(22.71, 21.09) controlPoint2: CGPointMake(22.69, 21.11)];
                    [bezier10Path addCurveToPoint: CGPointMake(22.68, 21.16) controlPoint1: CGPointMake(22.68, 21.15) controlPoint2: CGPointMake(22.68, 21.16)];
                    [bezier10Path addLineToPoint: CGPointMake(22.68, 21.17)];
                    [bezier10Path addCurveToPoint: CGPointMake(22.7, 21.26) controlPoint1: CGPointMake(22.68, 21.21) controlPoint2: CGPointMake(22.69, 21.24)];
                    [bezier10Path addCurveToPoint: CGPointMake(22.75, 21.32) controlPoint1: CGPointMake(22.71, 21.29) controlPoint2: CGPointMake(22.73, 21.31)];
                    [bezier10Path addCurveToPoint: CGPointMake(22.86, 21.35) controlPoint1: CGPointMake(22.78, 21.33) controlPoint2: CGPointMake(22.81, 21.35)];
                    [bezier10Path addCurveToPoint: CGPointMake(23.04, 21.36) controlPoint1: CGPointMake(22.9, 21.36) controlPoint2: CGPointMake(22.96, 21.36)];
                    [bezier10Path addCurveToPoint: CGPointMake(23.2, 21.35) controlPoint1: CGPointMake(23.1, 21.36) controlPoint2: CGPointMake(23.15, 21.36)];
                    [bezier10Path addCurveToPoint: CGPointMake(23.3, 21.32) controlPoint1: CGPointMake(23.24, 21.34) controlPoint2: CGPointMake(23.27, 21.33)];
                    [bezier10Path addCurveToPoint: CGPointMake(23.35, 21.26) controlPoint1: CGPointMake(23.32, 21.31) controlPoint2: CGPointMake(23.34, 21.28)];
                    [bezier10Path addCurveToPoint: CGPointMake(23.37, 21.17) controlPoint1: CGPointMake(23.36, 21.24) controlPoint2: CGPointMake(23.37, 21.21)];
                    [bezier10Path addLineToPoint: CGPointMake(23.37, 21.13)];
                    [bezier10Path addLineToPoint: CGPointMake(23.35, 21.13)];
                    [bezier10Path closePath];
                    [bezier10Path moveToPoint: CGPointMake(23.01, 20.59)];
                    [bezier10Path addCurveToPoint: CGPointMake(23.2, 20.54) controlPoint1: CGPointMake(23.09, 20.57) controlPoint2: CGPointMake(23.15, 20.55)];
                    [bezier10Path addCurveToPoint: CGPointMake(23.3, 20.49) controlPoint1: CGPointMake(23.24, 20.53) controlPoint2: CGPointMake(23.28, 20.51)];
                    [bezier10Path addCurveToPoint: CGPointMake(23.34, 20.41) controlPoint1: CGPointMake(23.32, 20.47) controlPoint2: CGPointMake(23.33, 20.44)];
                    [bezier10Path addCurveToPoint: CGPointMake(23.35, 20.28) controlPoint1: CGPointMake(23.34, 20.38) controlPoint2: CGPointMake(23.35, 20.33)];
                    [bezier10Path addCurveToPoint: CGPointMake(23.33, 20.18) controlPoint1: CGPointMake(23.35, 20.24) controlPoint2: CGPointMake(23.34, 20.21)];
                    [bezier10Path addCurveToPoint: CGPointMake(23.26, 20.13) controlPoint1: CGPointMake(23.31, 20.16) controlPoint2: CGPointMake(23.29, 20.14)];
                    [bezier10Path addCurveToPoint: CGPointMake(23.15, 20.11) controlPoint1: CGPointMake(23.23, 20.12) controlPoint2: CGPointMake(23.19, 20.11)];
                    [bezier10Path addCurveToPoint: CGPointMake(23.01, 20.11) controlPoint1: CGPointMake(23.11, 20.11) controlPoint2: CGPointMake(23.06, 20.11)];
                    [bezier10Path addCurveToPoint: CGPointMake(22.86, 20.12) controlPoint1: CGPointMake(22.95, 20.11) controlPoint2: CGPointMake(22.9, 20.11)];
                    [bezier10Path addCurveToPoint: CGPointMake(22.76, 20.15) controlPoint1: CGPointMake(22.82, 20.12) controlPoint2: CGPointMake(22.79, 20.13)];
                    [bezier10Path addCurveToPoint: CGPointMake(22.7, 20.22) controlPoint1: CGPointMake(22.73, 20.17) controlPoint2: CGPointMake(22.72, 20.19)];
                    [bezier10Path addCurveToPoint: CGPointMake(22.68, 20.34) controlPoint1: CGPointMake(22.69, 20.25) controlPoint2: CGPointMake(22.68, 20.29)];
                    [bezier10Path addCurveToPoint: CGPointMake(22.69, 20.45) controlPoint1: CGPointMake(22.68, 20.39) controlPoint2: CGPointMake(22.68, 20.42)];
                    [bezier10Path addCurveToPoint: CGPointMake(22.73, 20.52) controlPoint1: CGPointMake(22.69, 20.48) controlPoint2: CGPointMake(22.71, 20.5)];
                    [bezier10Path addCurveToPoint: CGPointMake(22.83, 20.57) controlPoint1: CGPointMake(22.75, 20.54) controlPoint2: CGPointMake(22.78, 20.55)];
                    [bezier10Path addCurveToPoint: CGPointMake(23.01, 20.59) controlPoint1: CGPointMake(22.87, 20.56) controlPoint2: CGPointMake(22.93, 20.57)];
                    [bezier10Path closePath];
                    bezier10Path.miterLimit = 4;

                    [fillColor setFill];
                    [bezier10Path fill];


                    //// Bezier 11 Drawing
                    UIBezierPath* bezier11Path = [UIBezierPath bezierPath];
                    [bezier11Path moveToPoint: CGPointMake(25.71, 21.16)];
                    [bezier11Path addLineToPoint: CGPointMake(25.71, 21.16)];
                    [bezier11Path addCurveToPoint: CGPointMake(25.66, 21.4) controlPoint1: CGPointMake(25.71, 21.26) controlPoint2: CGPointMake(25.69, 21.34)];
                    [bezier11Path addCurveToPoint: CGPointMake(25.52, 21.56) controlPoint1: CGPointMake(25.63, 21.46) controlPoint2: CGPointMake(25.58, 21.51)];
                    [bezier11Path addCurveToPoint: CGPointMake(25.3, 21.64) controlPoint1: CGPointMake(25.46, 21.6) controlPoint2: CGPointMake(25.39, 21.62)];
                    [bezier11Path addCurveToPoint: CGPointMake(25.02, 21.66) controlPoint1: CGPointMake(25.22, 21.66) controlPoint2: CGPointMake(25.12, 21.66)];
                    [bezier11Path addCurveToPoint: CGPointMake(24.73, 21.63) controlPoint1: CGPointMake(24.91, 21.66) controlPoint2: CGPointMake(24.82, 21.65)];
                    [bezier11Path addCurveToPoint: CGPointMake(24.52, 21.54) controlPoint1: CGPointMake(24.65, 21.61) controlPoint2: CGPointMake(24.58, 21.58)];
                    [bezier11Path addCurveToPoint: CGPointMake(24.39, 21.39) controlPoint1: CGPointMake(24.46, 21.5) controlPoint2: CGPointMake(24.42, 21.45)];
                    [bezier11Path addCurveToPoint: CGPointMake(24.34, 21.17) controlPoint1: CGPointMake(24.36, 21.33) controlPoint2: CGPointMake(24.34, 21.25)];
                    [bezier11Path addLineToPoint: CGPointMake(24.34, 20.28)];
                    [bezier11Path addCurveToPoint: CGPointMake(24.52, 19.92) controlPoint1: CGPointMake(24.34, 20.12) controlPoint2: CGPointMake(24.4, 20)];
                    [bezier11Path addCurveToPoint: CGPointMake(25.03, 19.8) controlPoint1: CGPointMake(24.64, 19.84) controlPoint2: CGPointMake(24.81, 19.8)];
                    [bezier11Path addCurveToPoint: CGPointMake(25.31, 19.83) controlPoint1: CGPointMake(25.13, 19.8) controlPoint2: CGPointMake(25.22, 19.81)];
                    [bezier11Path addCurveToPoint: CGPointMake(25.52, 19.92) controlPoint1: CGPointMake(25.39, 19.85) controlPoint2: CGPointMake(25.47, 19.88)];
                    [bezier11Path addCurveToPoint: CGPointMake(25.66, 20.07) controlPoint1: CGPointMake(25.58, 19.96) controlPoint2: CGPointMake(25.62, 20.01)];
                    [bezier11Path addCurveToPoint: CGPointMake(25.71, 20.28) controlPoint1: CGPointMake(25.69, 20.13) controlPoint2: CGPointMake(25.71, 20.2)];
                    [bezier11Path addLineToPoint: CGPointMake(25.71, 21.16)];
                    [bezier11Path closePath];
                    [bezier11Path moveToPoint: CGPointMake(25.35, 20.31)];
                    [bezier11Path addCurveToPoint: CGPointMake(25.27, 20.16) controlPoint1: CGPointMake(25.35, 20.25) controlPoint2: CGPointMake(25.32, 20.2)];
                    [bezier11Path addCurveToPoint: CGPointMake(25.02, 20.1) controlPoint1: CGPointMake(25.22, 20.12) controlPoint2: CGPointMake(25.13, 20.1)];
                    [bezier11Path addCurveToPoint: CGPointMake(24.77, 20.15) controlPoint1: CGPointMake(24.91, 20.1) controlPoint2: CGPointMake(24.83, 20.12)];
                    [bezier11Path addCurveToPoint: CGPointMake(24.69, 20.29) controlPoint1: CGPointMake(24.72, 20.19) controlPoint2: CGPointMake(24.69, 20.23)];
                    [bezier11Path addLineToPoint: CGPointMake(24.69, 21.16)];
                    [bezier11Path addCurveToPoint: CGPointMake(24.77, 21.31) controlPoint1: CGPointMake(24.69, 21.23) controlPoint2: CGPointMake(24.72, 21.28)];
                    [bezier11Path addCurveToPoint: CGPointMake(25.01, 21.35) controlPoint1: CGPointMake(24.82, 21.34) controlPoint2: CGPointMake(24.9, 21.35)];
                    [bezier11Path addCurveToPoint: CGPointMake(25.26, 21.3) controlPoint1: CGPointMake(25.12, 21.35) controlPoint2: CGPointMake(25.2, 21.34)];
                    [bezier11Path addCurveToPoint: CGPointMake(25.35, 21.15) controlPoint1: CGPointMake(25.32, 21.27) controlPoint2: CGPointMake(25.35, 21.22)];
                    [bezier11Path addLineToPoint: CGPointMake(25.35, 20.31)];
                    [bezier11Path closePath];
                    bezier11Path.miterLimit = 4;

                    [fillColor setFill];
                    [bezier11Path fill];


                    //// Bezier 12 Drawing
                    UIBezierPath* bezier12Path = [UIBezierPath bezierPath];
                    [bezier12Path moveToPoint: CGPointMake(28.92, 20.6)];
                    [bezier12Path addCurveToPoint: CGPointMake(29.04, 20.63) controlPoint1: CGPointMake(28.97, 20.6) controlPoint2: CGPointMake(29.01, 20.61)];
                    [bezier12Path addCurveToPoint: CGPointMake(29.09, 20.74) controlPoint1: CGPointMake(29.08, 20.65) controlPoint2: CGPointMake(29.09, 20.69)];
                    [bezier12Path addCurveToPoint: CGPointMake(29.04, 20.86) controlPoint1: CGPointMake(29.09, 20.79) controlPoint2: CGPointMake(29.07, 20.84)];
                    [bezier12Path addCurveToPoint: CGPointMake(28.92, 20.9) controlPoint1: CGPointMake(29.01, 20.88) controlPoint2: CGPointMake(28.96, 20.9)];
                    [bezier12Path addLineToPoint: CGPointMake(28.86, 20.9)];
                    [bezier12Path addLineToPoint: CGPointMake(28.86, 21.51)];
                    [bezier12Path addCurveToPoint: CGPointMake(28.85, 21.56) controlPoint1: CGPointMake(28.86, 21.53) controlPoint2: CGPointMake(28.85, 21.54)];
                    [bezier12Path addCurveToPoint: CGPointMake(28.82, 21.61) controlPoint1: CGPointMake(28.84, 21.58) controlPoint2: CGPointMake(28.83, 21.6)];
                    [bezier12Path addCurveToPoint: CGPointMake(28.76, 21.65) controlPoint1: CGPointMake(28.8, 21.63) controlPoint2: CGPointMake(28.78, 21.64)];
                    [bezier12Path addCurveToPoint: CGPointMake(28.68, 21.67) controlPoint1: CGPointMake(28.74, 21.66) controlPoint2: CGPointMake(28.71, 21.67)];
                    [bezier12Path addCurveToPoint: CGPointMake(28.6, 21.65) controlPoint1: CGPointMake(28.65, 21.67) controlPoint2: CGPointMake(28.62, 21.67)];
                    [bezier12Path addCurveToPoint: CGPointMake(28.54, 21.61) controlPoint1: CGPointMake(28.58, 21.64) controlPoint2: CGPointMake(28.56, 21.63)];
                    [bezier12Path addCurveToPoint: CGPointMake(28.51, 21.56) controlPoint1: CGPointMake(28.53, 21.6) controlPoint2: CGPointMake(28.52, 21.58)];
                    [bezier12Path addCurveToPoint: CGPointMake(28.5, 21.51) controlPoint1: CGPointMake(28.5, 21.54) controlPoint2: CGPointMake(28.5, 21.53)];
                    [bezier12Path addLineToPoint: CGPointMake(28.5, 20.9)];
                    [bezier12Path addLineToPoint: CGPointMake(27.8, 20.9)];
                    [bezier12Path addCurveToPoint: CGPointMake(27.71, 20.88) controlPoint1: CGPointMake(27.76, 20.9) controlPoint2: CGPointMake(27.73, 20.89)];
                    [bezier12Path addCurveToPoint: CGPointMake(27.69, 20.81) controlPoint1: CGPointMake(27.7, 20.86) controlPoint2: CGPointMake(27.69, 20.84)];
                    [bezier12Path addLineToPoint: CGPointMake(27.69, 19.98)];
                    [bezier12Path addCurveToPoint: CGPointMake(27.7, 19.93) controlPoint1: CGPointMake(27.69, 19.96) controlPoint2: CGPointMake(27.69, 19.94)];
                    [bezier12Path addCurveToPoint: CGPointMake(27.73, 19.88) controlPoint1: CGPointMake(27.71, 19.91) controlPoint2: CGPointMake(27.72, 19.89)];
                    [bezier12Path addCurveToPoint: CGPointMake(27.78, 19.84) controlPoint1: CGPointMake(27.74, 19.87) controlPoint2: CGPointMake(27.76, 19.85)];
                    [bezier12Path addCurveToPoint: CGPointMake(27.86, 19.82) controlPoint1: CGPointMake(27.8, 19.83) controlPoint2: CGPointMake(27.83, 19.82)];
                    [bezier12Path addCurveToPoint: CGPointMake(28, 19.86) controlPoint1: CGPointMake(27.92, 19.82) controlPoint2: CGPointMake(27.97, 19.84)];
                    [bezier12Path addCurveToPoint: CGPointMake(28.05, 19.98) controlPoint1: CGPointMake(28.03, 19.89) controlPoint2: CGPointMake(28.05, 19.93)];
                    [bezier12Path addLineToPoint: CGPointMake(28.05, 20.62)];
                    [bezier12Path addLineToPoint: CGPointMake(28.5, 20.62)];
                    [bezier12Path addLineToPoint: CGPointMake(28.5, 19.98)];
                    [bezier12Path addCurveToPoint: CGPointMake(28.55, 19.87) controlPoint1: CGPointMake(28.5, 19.93) controlPoint2: CGPointMake(28.52, 19.9)];
                    [bezier12Path addCurveToPoint: CGPointMake(28.68, 19.83) controlPoint1: CGPointMake(28.58, 19.84) controlPoint2: CGPointMake(28.62, 19.83)];
                    [bezier12Path addCurveToPoint: CGPointMake(28.81, 19.88) controlPoint1: CGPointMake(28.74, 19.83) controlPoint2: CGPointMake(28.78, 19.85)];
                    [bezier12Path addCurveToPoint: CGPointMake(28.86, 19.99) controlPoint1: CGPointMake(28.84, 19.91) controlPoint2: CGPointMake(28.86, 19.94)];
                    [bezier12Path addLineToPoint: CGPointMake(28.86, 20.63)];
                    [bezier12Path addLineToPoint: CGPointMake(28.92, 20.6)];
                    [bezier12Path addLineToPoint: CGPointMake(28.92, 20.6)];
                    [bezier12Path closePath];
                    bezier12Path.miterLimit = 4;

                    [fillColor setFill];
                    [bezier12Path fill];


                    //// Bezier 13 Drawing
                    UIBezierPath* bezier13Path = [UIBezierPath bezierPath];
                    [bezier13Path moveToPoint: CGPointMake(30.91, 20.6)];
                    [bezier13Path addCurveToPoint: CGPointMake(31.03, 20.63) controlPoint1: CGPointMake(30.96, 20.6) controlPoint2: CGPointMake(31, 20.61)];
                    [bezier13Path addCurveToPoint: CGPointMake(31.09, 20.74) controlPoint1: CGPointMake(31.07, 20.65) controlPoint2: CGPointMake(31.09, 20.69)];
                    [bezier13Path addCurveToPoint: CGPointMake(31.04, 20.86) controlPoint1: CGPointMake(31.09, 20.79) controlPoint2: CGPointMake(31.07, 20.84)];
                    [bezier13Path addCurveToPoint: CGPointMake(30.92, 20.9) controlPoint1: CGPointMake(31.01, 20.88) controlPoint2: CGPointMake(30.97, 20.9)];
                    [bezier13Path addLineToPoint: CGPointMake(30.86, 20.9)];
                    [bezier13Path addLineToPoint: CGPointMake(30.86, 21.51)];
                    [bezier13Path addCurveToPoint: CGPointMake(30.85, 21.56) controlPoint1: CGPointMake(30.86, 21.53) controlPoint2: CGPointMake(30.85, 21.54)];
                    [bezier13Path addCurveToPoint: CGPointMake(30.82, 21.61) controlPoint1: CGPointMake(30.85, 21.58) controlPoint2: CGPointMake(30.83, 21.6)];
                    [bezier13Path addCurveToPoint: CGPointMake(30.76, 21.65) controlPoint1: CGPointMake(30.8, 21.63) controlPoint2: CGPointMake(30.79, 21.64)];
                    [bezier13Path addCurveToPoint: CGPointMake(30.68, 21.67) controlPoint1: CGPointMake(30.74, 21.66) controlPoint2: CGPointMake(30.71, 21.67)];
                    [bezier13Path addCurveToPoint: CGPointMake(30.6, 21.65) controlPoint1: CGPointMake(30.65, 21.67) controlPoint2: CGPointMake(30.62, 21.67)];
                    [bezier13Path addCurveToPoint: CGPointMake(30.55, 21.61) controlPoint1: CGPointMake(30.58, 21.64) controlPoint2: CGPointMake(30.56, 21.63)];
                    [bezier13Path addCurveToPoint: CGPointMake(30.52, 21.56) controlPoint1: CGPointMake(30.54, 21.6) controlPoint2: CGPointMake(30.52, 21.58)];
                    [bezier13Path addCurveToPoint: CGPointMake(30.51, 21.51) controlPoint1: CGPointMake(30.51, 21.54) controlPoint2: CGPointMake(30.51, 21.53)];
                    [bezier13Path addLineToPoint: CGPointMake(30.51, 20.9)];
                    [bezier13Path addLineToPoint: CGPointMake(29.81, 20.9)];
                    [bezier13Path addCurveToPoint: CGPointMake(29.72, 20.88) controlPoint1: CGPointMake(29.76, 20.9) controlPoint2: CGPointMake(29.74, 20.89)];
                    [bezier13Path addCurveToPoint: CGPointMake(29.7, 20.81) controlPoint1: CGPointMake(29.71, 20.86) controlPoint2: CGPointMake(29.7, 20.84)];
                    [bezier13Path addLineToPoint: CGPointMake(29.7, 19.98)];
                    [bezier13Path addCurveToPoint: CGPointMake(29.71, 19.93) controlPoint1: CGPointMake(29.7, 19.96) controlPoint2: CGPointMake(29.71, 19.94)];
                    [bezier13Path addCurveToPoint: CGPointMake(29.74, 19.88) controlPoint1: CGPointMake(29.72, 19.91) controlPoint2: CGPointMake(29.73, 19.89)];
                    [bezier13Path addCurveToPoint: CGPointMake(29.79, 19.84) controlPoint1: CGPointMake(29.75, 19.87) controlPoint2: CGPointMake(29.77, 19.85)];
                    [bezier13Path addCurveToPoint: CGPointMake(29.87, 19.82) controlPoint1: CGPointMake(29.81, 19.83) controlPoint2: CGPointMake(29.84, 19.82)];
                    [bezier13Path addCurveToPoint: CGPointMake(30.01, 19.86) controlPoint1: CGPointMake(29.93, 19.82) controlPoint2: CGPointMake(29.98, 19.84)];
                    [bezier13Path addCurveToPoint: CGPointMake(30.06, 19.98) controlPoint1: CGPointMake(30.04, 19.89) controlPoint2: CGPointMake(30.06, 19.93)];
                    [bezier13Path addLineToPoint: CGPointMake(30.06, 20.62)];
                    [bezier13Path addLineToPoint: CGPointMake(30.51, 20.62)];
                    [bezier13Path addLineToPoint: CGPointMake(30.51, 19.98)];
                    [bezier13Path addCurveToPoint: CGPointMake(30.55, 19.87) controlPoint1: CGPointMake(30.51, 19.93) controlPoint2: CGPointMake(30.52, 19.9)];
                    [bezier13Path addCurveToPoint: CGPointMake(30.68, 19.83) controlPoint1: CGPointMake(30.58, 19.84) controlPoint2: CGPointMake(30.62, 19.83)];
                    [bezier13Path addCurveToPoint: CGPointMake(30.82, 19.88) controlPoint1: CGPointMake(30.74, 19.83) controlPoint2: CGPointMake(30.79, 19.85)];
                    [bezier13Path addCurveToPoint: CGPointMake(30.87, 19.99) controlPoint1: CGPointMake(30.85, 19.91) controlPoint2: CGPointMake(30.87, 19.94)];
                    [bezier13Path addLineToPoint: CGPointMake(30.87, 20.63)];
                    [bezier13Path addLineToPoint: CGPointMake(30.91, 20.6)];
                    [bezier13Path addLineToPoint: CGPointMake(30.91, 20.6)];
                    [bezier13Path closePath];
                    bezier13Path.miterLimit = 4;

                    [fillColor setFill];
                    [bezier13Path fill];


                    //// Bezier 14 Drawing
                    UIBezierPath* bezier14Path = [UIBezierPath bezierPath];
                    [bezier14Path moveToPoint: CGPointMake(32.61, 20.53)];
                    [bezier14Path addCurveToPoint: CGPointMake(32.9, 20.57) controlPoint1: CGPointMake(32.73, 20.53) controlPoint2: CGPointMake(32.83, 20.54)];
                    [bezier14Path addCurveToPoint: CGPointMake(33.09, 20.68) controlPoint1: CGPointMake(32.98, 20.59) controlPoint2: CGPointMake(33.04, 20.63)];
                    [bezier14Path addCurveToPoint: CGPointMake(33.19, 20.86) controlPoint1: CGPointMake(33.14, 20.73) controlPoint2: CGPointMake(33.17, 20.79)];
                    [bezier14Path addCurveToPoint: CGPointMake(33.22, 21.11) controlPoint1: CGPointMake(33.21, 20.93) controlPoint2: CGPointMake(33.22, 21.02)];
                    [bezier14Path addCurveToPoint: CGPointMake(33.19, 21.35) controlPoint1: CGPointMake(33.22, 21.2) controlPoint2: CGPointMake(33.21, 21.28)];
                    [bezier14Path addCurveToPoint: CGPointMake(33.07, 21.53) controlPoint1: CGPointMake(33.16, 21.42) controlPoint2: CGPointMake(33.13, 21.48)];
                    [bezier14Path addCurveToPoint: CGPointMake(32.86, 21.64) controlPoint1: CGPointMake(33.02, 21.58) controlPoint2: CGPointMake(32.95, 21.61)];
                    [bezier14Path addCurveToPoint: CGPointMake(32.53, 21.68) controlPoint1: CGPointMake(32.77, 21.66) controlPoint2: CGPointMake(32.66, 21.68)];
                    [bezier14Path addCurveToPoint: CGPointMake(32.26, 21.65) controlPoint1: CGPointMake(32.43, 21.68) controlPoint2: CGPointMake(32.34, 21.67)];
                    [bezier14Path addCurveToPoint: CGPointMake(32.04, 21.56) controlPoint1: CGPointMake(32.18, 21.63) controlPoint2: CGPointMake(32.11, 21.6)];
                    [bezier14Path addCurveToPoint: CGPointMake(31.9, 21.4) controlPoint1: CGPointMake(31.98, 21.52) controlPoint2: CGPointMake(31.94, 21.47)];
                    [bezier14Path addCurveToPoint: CGPointMake(31.85, 21.16) controlPoint1: CGPointMake(31.87, 21.33) controlPoint2: CGPointMake(31.85, 21.25)];
                    [bezier14Path addLineToPoint: CGPointMake(31.85, 19.97)];
                    [bezier14Path addCurveToPoint: CGPointMake(31.86, 19.92) controlPoint1: CGPointMake(31.85, 19.95) controlPoint2: CGPointMake(31.85, 19.93)];
                    [bezier14Path addCurveToPoint: CGPointMake(31.89, 19.87) controlPoint1: CGPointMake(31.87, 19.9) controlPoint2: CGPointMake(31.88, 19.88)];
                    [bezier14Path addCurveToPoint: CGPointMake(31.94, 19.84) controlPoint1: CGPointMake(31.9, 19.86) controlPoint2: CGPointMake(31.92, 19.84)];
                    [bezier14Path addCurveToPoint: CGPointMake(32.03, 19.82) controlPoint1: CGPointMake(31.96, 19.83) controlPoint2: CGPointMake(32, 19.82)];
                    [bezier14Path addCurveToPoint: CGPointMake(32.16, 19.87) controlPoint1: CGPointMake(32.09, 19.82) controlPoint2: CGPointMake(32.14, 19.84)];
                    [bezier14Path addCurveToPoint: CGPointMake(32.2, 19.98) controlPoint1: CGPointMake(32.19, 19.9) controlPoint2: CGPointMake(32.2, 19.93)];
                    [bezier14Path addLineToPoint: CGPointMake(32.2, 20.57)];
                    [bezier14Path addCurveToPoint: CGPointMake(32.42, 20.55) controlPoint1: CGPointMake(32.28, 20.56) controlPoint2: CGPointMake(32.36, 20.55)];
                    [bezier14Path addCurveToPoint: CGPointMake(32.61, 20.53) controlPoint1: CGPointMake(32.51, 20.53) controlPoint2: CGPointMake(32.56, 20.53)];
                    [bezier14Path closePath];
                    [bezier14Path moveToPoint: CGPointMake(32.88, 21.1)];
                    [bezier14Path addCurveToPoint: CGPointMake(32.86, 20.97) controlPoint1: CGPointMake(32.88, 21.04) controlPoint2: CGPointMake(32.87, 21)];
                    [bezier14Path addCurveToPoint: CGPointMake(32.81, 20.89) controlPoint1: CGPointMake(32.85, 20.93) controlPoint2: CGPointMake(32.83, 20.91)];
                    [bezier14Path addCurveToPoint: CGPointMake(32.71, 20.85) controlPoint1: CGPointMake(32.78, 20.87) controlPoint2: CGPointMake(32.75, 20.86)];
                    [bezier14Path addCurveToPoint: CGPointMake(32.55, 20.84) controlPoint1: CGPointMake(32.67, 20.84) controlPoint2: CGPointMake(32.61, 20.84)];
                    [bezier14Path addCurveToPoint: CGPointMake(32.42, 20.84) controlPoint1: CGPointMake(32.5, 20.84) controlPoint2: CGPointMake(32.46, 20.84)];
                    [bezier14Path addCurveToPoint: CGPointMake(32.34, 20.84) controlPoint1: CGPointMake(32.39, 20.84) controlPoint2: CGPointMake(32.36, 20.84)];
                    [bezier14Path addCurveToPoint: CGPointMake(32.28, 20.85) controlPoint1: CGPointMake(32.32, 20.84) controlPoint2: CGPointMake(32.3, 20.84)];
                    [bezier14Path addCurveToPoint: CGPointMake(32.22, 20.86) controlPoint1: CGPointMake(32.26, 20.85) controlPoint2: CGPointMake(32.24, 20.86)];
                    [bezier14Path addLineToPoint: CGPointMake(32.22, 21.1)];
                    [bezier14Path addCurveToPoint: CGPointMake(32.24, 21.23) controlPoint1: CGPointMake(32.22, 21.15) controlPoint2: CGPointMake(32.22, 21.19)];
                    [bezier14Path addCurveToPoint: CGPointMake(32.29, 21.32) controlPoint1: CGPointMake(32.25, 21.26) controlPoint2: CGPointMake(32.27, 21.29)];
                    [bezier14Path addCurveToPoint: CGPointMake(32.39, 21.37) controlPoint1: CGPointMake(32.31, 21.35) controlPoint2: CGPointMake(32.34, 21.36)];
                    [bezier14Path addCurveToPoint: CGPointMake(32.55, 21.39) controlPoint1: CGPointMake(32.43, 21.38) controlPoint2: CGPointMake(32.49, 21.39)];
                    [bezier14Path addCurveToPoint: CGPointMake(32.7, 21.38) controlPoint1: CGPointMake(32.61, 21.39) controlPoint2: CGPointMake(32.66, 21.39)];
                    [bezier14Path addCurveToPoint: CGPointMake(32.8, 21.34) controlPoint1: CGPointMake(32.74, 21.37) controlPoint2: CGPointMake(32.78, 21.36)];
                    [bezier14Path addCurveToPoint: CGPointMake(32.86, 21.26) controlPoint1: CGPointMake(32.83, 21.32) controlPoint2: CGPointMake(32.85, 21.29)];
                    [bezier14Path addCurveToPoint: CGPointMake(32.88, 21.1) controlPoint1: CGPointMake(32.87, 21.2) controlPoint2: CGPointMake(32.88, 21.15)];
                    [bezier14Path closePath];
                    bezier14Path.miterLimit = 4;

                    [fillColor setFill];
                    [bezier14Path fill];


                    //// Bezier 15 Drawing
                    UIBezierPath* bezier15Path = [UIBezierPath bezierPath];
                    [bezier15Path moveToPoint: CGPointMake(35, 20.6)];
                    [bezier15Path addCurveToPoint: CGPointMake(35.12, 20.63) controlPoint1: CGPointMake(35.05, 20.6) controlPoint2: CGPointMake(35.09, 20.61)];
                    [bezier15Path addCurveToPoint: CGPointMake(35.17, 20.74) controlPoint1: CGPointMake(35.16, 20.65) controlPoint2: CGPointMake(35.17, 20.69)];
                    [bezier15Path addCurveToPoint: CGPointMake(35.12, 20.86) controlPoint1: CGPointMake(35.17, 20.79) controlPoint2: CGPointMake(35.15, 20.84)];
                    [bezier15Path addCurveToPoint: CGPointMake(35, 20.9) controlPoint1: CGPointMake(35.09, 20.88) controlPoint2: CGPointMake(35.05, 20.9)];
                    [bezier15Path addLineToPoint: CGPointMake(34.94, 20.9)];
                    [bezier15Path addLineToPoint: CGPointMake(34.94, 21.51)];
                    [bezier15Path addCurveToPoint: CGPointMake(34.93, 21.56) controlPoint1: CGPointMake(34.94, 21.53) controlPoint2: CGPointMake(34.94, 21.54)];
                    [bezier15Path addCurveToPoint: CGPointMake(34.9, 21.61) controlPoint1: CGPointMake(34.92, 21.58) controlPoint2: CGPointMake(34.91, 21.6)];
                    [bezier15Path addCurveToPoint: CGPointMake(34.85, 21.65) controlPoint1: CGPointMake(34.88, 21.63) controlPoint2: CGPointMake(34.87, 21.64)];
                    [bezier15Path addCurveToPoint: CGPointMake(34.77, 21.67) controlPoint1: CGPointMake(34.82, 21.66) controlPoint2: CGPointMake(34.8, 21.67)];
                    [bezier15Path addCurveToPoint: CGPointMake(34.68, 21.65) controlPoint1: CGPointMake(34.74, 21.67) controlPoint2: CGPointMake(34.71, 21.67)];
                    [bezier15Path addCurveToPoint: CGPointMake(34.62, 21.61) controlPoint1: CGPointMake(34.66, 21.64) controlPoint2: CGPointMake(34.64, 21.63)];
                    [bezier15Path addCurveToPoint: CGPointMake(34.59, 21.56) controlPoint1: CGPointMake(34.6, 21.6) controlPoint2: CGPointMake(34.6, 21.58)];
                    [bezier15Path addCurveToPoint: CGPointMake(34.58, 21.51) controlPoint1: CGPointMake(34.58, 21.54) controlPoint2: CGPointMake(34.58, 21.53)];
                    [bezier15Path addLineToPoint: CGPointMake(34.58, 20.9)];
                    [bezier15Path addLineToPoint: CGPointMake(33.88, 20.9)];
                    [bezier15Path addCurveToPoint: CGPointMake(33.79, 20.88) controlPoint1: CGPointMake(33.83, 20.9) controlPoint2: CGPointMake(33.81, 20.89)];
                    [bezier15Path addCurveToPoint: CGPointMake(33.77, 20.81) controlPoint1: CGPointMake(33.78, 20.86) controlPoint2: CGPointMake(33.77, 20.84)];
                    [bezier15Path addLineToPoint: CGPointMake(33.77, 19.98)];
                    [bezier15Path addCurveToPoint: CGPointMake(33.78, 19.93) controlPoint1: CGPointMake(33.77, 19.96) controlPoint2: CGPointMake(33.78, 19.94)];
                    [bezier15Path addCurveToPoint: CGPointMake(33.81, 19.88) controlPoint1: CGPointMake(33.79, 19.91) controlPoint2: CGPointMake(33.8, 19.89)];
                    [bezier15Path addCurveToPoint: CGPointMake(33.86, 19.84) controlPoint1: CGPointMake(33.82, 19.87) controlPoint2: CGPointMake(33.84, 19.85)];
                    [bezier15Path addCurveToPoint: CGPointMake(33.94, 19.82) controlPoint1: CGPointMake(33.89, 19.83) controlPoint2: CGPointMake(33.91, 19.82)];
                    [bezier15Path addCurveToPoint: CGPointMake(34.08, 19.86) controlPoint1: CGPointMake(34, 19.82) controlPoint2: CGPointMake(34.05, 19.84)];
                    [bezier15Path addCurveToPoint: CGPointMake(34.13, 19.98) controlPoint1: CGPointMake(34.11, 19.89) controlPoint2: CGPointMake(34.13, 19.93)];
                    [bezier15Path addLineToPoint: CGPointMake(34.13, 20.62)];
                    [bezier15Path addLineToPoint: CGPointMake(34.58, 20.62)];
                    [bezier15Path addLineToPoint: CGPointMake(34.58, 19.98)];
                    [bezier15Path addCurveToPoint: CGPointMake(34.62, 19.87) controlPoint1: CGPointMake(34.58, 19.93) controlPoint2: CGPointMake(34.59, 19.9)];
                    [bezier15Path addCurveToPoint: CGPointMake(34.75, 19.83) controlPoint1: CGPointMake(34.65, 19.84) controlPoint2: CGPointMake(34.69, 19.83)];
                    [bezier15Path addCurveToPoint: CGPointMake(34.88, 19.88) controlPoint1: CGPointMake(34.8, 19.83) controlPoint2: CGPointMake(34.85, 19.85)];
                    [bezier15Path addCurveToPoint: CGPointMake(34.93, 19.99) controlPoint1: CGPointMake(34.91, 19.91) controlPoint2: CGPointMake(34.93, 19.94)];
                    [bezier15Path addLineToPoint: CGPointMake(34.93, 20.63)];
                    [bezier15Path addLineToPoint: CGPointMake(35, 20.6)];
                    [bezier15Path addLineToPoint: CGPointMake(35, 20.6)];
                    [bezier15Path closePath];
                    bezier15Path.miterLimit = 4;

                    [fillColor setFill];
                    [bezier15Path fill];


                    //// Bezier 16 Drawing
                    UIBezierPath* bezier16Path = [UIBezierPath bezierPath];
                    [bezier16Path moveToPoint: CGPointMake(37.15, 21.16)];
                    [bezier16Path addLineToPoint: CGPointMake(37.15, 21.16)];
                    [bezier16Path addCurveToPoint: CGPointMake(37.1, 21.4) controlPoint1: CGPointMake(37.15, 21.26) controlPoint2: CGPointMake(37.14, 21.34)];
                    [bezier16Path addCurveToPoint: CGPointMake(36.96, 21.56) controlPoint1: CGPointMake(37.06, 21.46) controlPoint2: CGPointMake(37.02, 21.51)];
                    [bezier16Path addCurveToPoint: CGPointMake(36.74, 21.64) controlPoint1: CGPointMake(36.9, 21.6) controlPoint2: CGPointMake(36.83, 21.62)];
                    [bezier16Path addCurveToPoint: CGPointMake(36.45, 21.66) controlPoint1: CGPointMake(36.65, 21.66) controlPoint2: CGPointMake(36.56, 21.66)];
                    [bezier16Path addCurveToPoint: CGPointMake(36.17, 21.63) controlPoint1: CGPointMake(36.35, 21.66) controlPoint2: CGPointMake(36.25, 21.65)];
                    [bezier16Path addCurveToPoint: CGPointMake(35.96, 21.54) controlPoint1: CGPointMake(36.08, 21.61) controlPoint2: CGPointMake(36.02, 21.58)];
                    [bezier16Path addCurveToPoint: CGPointMake(35.82, 21.39) controlPoint1: CGPointMake(35.9, 21.5) controlPoint2: CGPointMake(35.86, 21.45)];
                    [bezier16Path addCurveToPoint: CGPointMake(35.78, 21.17) controlPoint1: CGPointMake(35.79, 21.33) controlPoint2: CGPointMake(35.78, 21.25)];
                    [bezier16Path addLineToPoint: CGPointMake(35.78, 20.28)];
                    [bezier16Path addCurveToPoint: CGPointMake(35.96, 19.92) controlPoint1: CGPointMake(35.78, 20.12) controlPoint2: CGPointMake(35.84, 20)];
                    [bezier16Path addCurveToPoint: CGPointMake(36.47, 19.8) controlPoint1: CGPointMake(36.08, 19.84) controlPoint2: CGPointMake(36.25, 19.8)];
                    [bezier16Path addCurveToPoint: CGPointMake(36.75, 19.83) controlPoint1: CGPointMake(36.57, 19.8) controlPoint2: CGPointMake(36.66, 19.81)];
                    [bezier16Path addCurveToPoint: CGPointMake(36.96, 19.92) controlPoint1: CGPointMake(36.83, 19.85) controlPoint2: CGPointMake(36.9, 19.88)];
                    [bezier16Path addCurveToPoint: CGPointMake(37.1, 20.07) controlPoint1: CGPointMake(37.02, 19.96) controlPoint2: CGPointMake(37.07, 20.01)];
                    [bezier16Path addCurveToPoint: CGPointMake(37.15, 20.28) controlPoint1: CGPointMake(37.13, 20.13) controlPoint2: CGPointMake(37.15, 20.2)];
                    [bezier16Path addLineToPoint: CGPointMake(37.15, 21.16)];
                    [bezier16Path closePath];
                    [bezier16Path moveToPoint: CGPointMake(36.79, 20.31)];
                    [bezier16Path addCurveToPoint: CGPointMake(36.71, 20.16) controlPoint1: CGPointMake(36.79, 20.25) controlPoint2: CGPointMake(36.77, 20.2)];
                    [bezier16Path addCurveToPoint: CGPointMake(36.46, 20.1) controlPoint1: CGPointMake(36.66, 20.12) controlPoint2: CGPointMake(36.58, 20.1)];
                    [bezier16Path addCurveToPoint: CGPointMake(36.21, 20.15) controlPoint1: CGPointMake(36.35, 20.1) controlPoint2: CGPointMake(36.27, 20.12)];
                    [bezier16Path addCurveToPoint: CGPointMake(36.13, 20.29) controlPoint1: CGPointMake(36.16, 20.19) controlPoint2: CGPointMake(36.13, 20.23)];
                    [bezier16Path addLineToPoint: CGPointMake(36.13, 21.16)];
                    [bezier16Path addCurveToPoint: CGPointMake(36.21, 21.31) controlPoint1: CGPointMake(36.13, 21.23) controlPoint2: CGPointMake(36.16, 21.28)];
                    [bezier16Path addCurveToPoint: CGPointMake(36.45, 21.35) controlPoint1: CGPointMake(36.26, 21.34) controlPoint2: CGPointMake(36.34, 21.35)];
                    [bezier16Path addCurveToPoint: CGPointMake(36.7, 21.3) controlPoint1: CGPointMake(36.55, 21.35) controlPoint2: CGPointMake(36.64, 21.34)];
                    [bezier16Path addCurveToPoint: CGPointMake(36.79, 21.15) controlPoint1: CGPointMake(36.76, 21.27) controlPoint2: CGPointMake(36.79, 21.22)];
                    [bezier16Path addLineToPoint: CGPointMake(36.79, 20.31)];
                    [bezier16Path closePath];
                    bezier16Path.miterLimit = 4;

                    [fillColor setFill];
                    [bezier16Path fill];
                }
            }


            //// Bezier 17 Drawing
            UIBezierPath* bezier17Path = [UIBezierPath bezierPath];
            [bezier17Path moveToPoint: CGPointMake(6.72, 21.11)];
            [bezier17Path addCurveToPoint: CGPointMake(6.69, 21.38) controlPoint1: CGPointMake(6.72, 21.22) controlPoint2: CGPointMake(6.71, 21.3)];
            [bezier17Path addCurveToPoint: CGPointMake(6.57, 21.55) controlPoint1: CGPointMake(6.67, 21.45) controlPoint2: CGPointMake(6.62, 21.51)];
            [bezier17Path addCurveToPoint: CGPointMake(6.34, 21.64) controlPoint1: CGPointMake(6.52, 21.59) controlPoint2: CGPointMake(6.44, 21.62)];
            [bezier17Path addCurveToPoint: CGPointMake(5.97, 21.67) controlPoint1: CGPointMake(6.24, 21.66) controlPoint2: CGPointMake(6.12, 21.67)];
            [bezier17Path addLineToPoint: CGPointMake(5.95, 21.67)];
            [bezier17Path addCurveToPoint: CGPointMake(5.83, 21.67) controlPoint1: CGPointMake(5.92, 21.67) controlPoint2: CGPointMake(5.87, 21.67)];
            [bezier17Path addCurveToPoint: CGPointMake(5.7, 21.66) controlPoint1: CGPointMake(5.79, 21.67) controlPoint2: CGPointMake(5.74, 21.67)];
            [bezier17Path addCurveToPoint: CGPointMake(5.57, 21.64) controlPoint1: CGPointMake(5.66, 21.65) controlPoint2: CGPointMake(5.61, 21.65)];
            [bezier17Path addCurveToPoint: CGPointMake(5.45, 21.6) controlPoint1: CGPointMake(5.52, 21.63) controlPoint2: CGPointMake(5.49, 21.62)];
            [bezier17Path addCurveToPoint: CGPointMake(5.36, 21.53) controlPoint1: CGPointMake(5.41, 21.58) controlPoint2: CGPointMake(5.39, 21.56)];
            [bezier17Path addCurveToPoint: CGPointMake(5.33, 21.43) controlPoint1: CGPointMake(5.34, 21.5) controlPoint2: CGPointMake(5.33, 21.47)];
            [bezier17Path addLineToPoint: CGPointMake(5.33, 21.42)];
            [bezier17Path addCurveToPoint: CGPointMake(5.38, 21.31) controlPoint1: CGPointMake(5.33, 21.38) controlPoint2: CGPointMake(5.35, 21.34)];
            [bezier17Path addCurveToPoint: CGPointMake(5.49, 21.27) controlPoint1: CGPointMake(5.41, 21.28) controlPoint2: CGPointMake(5.45, 21.27)];
            [bezier17Path addLineToPoint: CGPointMake(5.49, 21.27)];
            [bezier17Path addCurveToPoint: CGPointMake(5.55, 21.27) controlPoint1: CGPointMake(5.52, 21.27) controlPoint2: CGPointMake(5.54, 21.27)];
            [bezier17Path addCurveToPoint: CGPointMake(5.59, 21.28) controlPoint1: CGPointMake(5.57, 21.28) controlPoint2: CGPointMake(5.58, 21.28)];
            [bezier17Path addCurveToPoint: CGPointMake(5.62, 21.3) controlPoint1: CGPointMake(5.6, 21.29) controlPoint2: CGPointMake(5.61, 21.29)];
            [bezier17Path addCurveToPoint: CGPointMake(5.64, 21.32) controlPoint1: CGPointMake(5.62, 21.31) controlPoint2: CGPointMake(5.64, 21.31)];
            [bezier17Path addLineToPoint: CGPointMake(5.64, 21.32)];
            [bezier17Path addCurveToPoint: CGPointMake(5.68, 21.34) controlPoint1: CGPointMake(5.65, 21.33) controlPoint2: CGPointMake(5.67, 21.34)];
            [bezier17Path addCurveToPoint: CGPointMake(5.74, 21.36) controlPoint1: CGPointMake(5.69, 21.35) controlPoint2: CGPointMake(5.72, 21.35)];
            [bezier17Path addCurveToPoint: CGPointMake(5.83, 21.37) controlPoint1: CGPointMake(5.76, 21.37) controlPoint2: CGPointMake(5.79, 21.37)];
            [bezier17Path addCurveToPoint: CGPointMake(5.98, 21.37) controlPoint1: CGPointMake(5.87, 21.37) controlPoint2: CGPointMake(5.92, 21.37)];
            [bezier17Path addLineToPoint: CGPointMake(6, 21.37)];
            [bezier17Path addCurveToPoint: CGPointMake(6.18, 21.35) controlPoint1: CGPointMake(6.07, 21.37) controlPoint2: CGPointMake(6.13, 21.37)];
            [bezier17Path addCurveToPoint: CGPointMake(6.29, 21.3) controlPoint1: CGPointMake(6.23, 21.34) controlPoint2: CGPointMake(6.26, 21.32)];
            [bezier17Path addCurveToPoint: CGPointMake(6.34, 21.21) controlPoint1: CGPointMake(6.31, 21.28) controlPoint2: CGPointMake(6.33, 21.25)];
            [bezier17Path addCurveToPoint: CGPointMake(6.36, 21.09) controlPoint1: CGPointMake(6.35, 21.18) controlPoint2: CGPointMake(6.36, 21.14)];
            [bezier17Path addCurveToPoint: CGPointMake(6.32, 20.91) controlPoint1: CGPointMake(6.36, 21.01) controlPoint2: CGPointMake(6.35, 20.95)];
            [bezier17Path addCurveToPoint: CGPointMake(6.2, 20.86) controlPoint1: CGPointMake(6.3, 20.88) controlPoint2: CGPointMake(6.26, 20.86)];
            [bezier17Path addLineToPoint: CGPointMake(5.82, 20.86)];
            [bezier17Path addCurveToPoint: CGPointMake(5.76, 20.85) controlPoint1: CGPointMake(5.8, 20.86) controlPoint2: CGPointMake(5.78, 20.86)];
            [bezier17Path addCurveToPoint: CGPointMake(5.7, 20.83) controlPoint1: CGPointMake(5.74, 20.85) controlPoint2: CGPointMake(5.72, 20.84)];
            [bezier17Path addCurveToPoint: CGPointMake(5.66, 20.79) controlPoint1: CGPointMake(5.68, 20.82) controlPoint2: CGPointMake(5.67, 20.8)];
            [bezier17Path addCurveToPoint: CGPointMake(5.64, 20.72) controlPoint1: CGPointMake(5.65, 20.77) controlPoint2: CGPointMake(5.64, 20.75)];
            [bezier17Path addCurveToPoint: CGPointMake(5.69, 20.6) controlPoint1: CGPointMake(5.64, 20.67) controlPoint2: CGPointMake(5.66, 20.63)];
            [bezier17Path addCurveToPoint: CGPointMake(5.81, 20.56) controlPoint1: CGPointMake(5.73, 20.58) controlPoint2: CGPointMake(5.77, 20.56)];
            [bezier17Path addLineToPoint: CGPointMake(6.17, 20.56)];
            [bezier17Path addCurveToPoint: CGPointMake(6.24, 20.55) controlPoint1: CGPointMake(6.2, 20.56) controlPoint2: CGPointMake(6.22, 20.56)];
            [bezier17Path addCurveToPoint: CGPointMake(6.29, 20.52) controlPoint1: CGPointMake(6.26, 20.54) controlPoint2: CGPointMake(6.28, 20.53)];
            [bezier17Path addCurveToPoint: CGPointMake(6.32, 20.46) controlPoint1: CGPointMake(6.3, 20.5) controlPoint2: CGPointMake(6.32, 20.48)];
            [bezier17Path addCurveToPoint: CGPointMake(6.33, 20.35) controlPoint1: CGPointMake(6.33, 20.43) controlPoint2: CGPointMake(6.33, 20.4)];
            [bezier17Path addCurveToPoint: CGPointMake(6.32, 20.23) controlPoint1: CGPointMake(6.33, 20.3) controlPoint2: CGPointMake(6.33, 20.26)];
            [bezier17Path addCurveToPoint: CGPointMake(6.27, 20.15) controlPoint1: CGPointMake(6.32, 20.2) controlPoint2: CGPointMake(6.3, 20.17)];
            [bezier17Path addCurveToPoint: CGPointMake(6.17, 20.11) controlPoint1: CGPointMake(6.25, 20.13) controlPoint2: CGPointMake(6.21, 20.11)];
            [bezier17Path addCurveToPoint: CGPointMake(5.99, 20.1) controlPoint1: CGPointMake(6.12, 20.1) controlPoint2: CGPointMake(6.06, 20.1)];
            [bezier17Path addLineToPoint: CGPointMake(6.01, 20.1)];
            [bezier17Path addCurveToPoint: CGPointMake(5.86, 20.11) controlPoint1: CGPointMake(5.96, 20.1) controlPoint2: CGPointMake(5.91, 20.1)];
            [bezier17Path addCurveToPoint: CGPointMake(5.74, 20.14) controlPoint1: CGPointMake(5.81, 20.12) controlPoint2: CGPointMake(5.77, 20.13)];
            [bezier17Path addCurveToPoint: CGPointMake(5.7, 20.16) controlPoint1: CGPointMake(5.72, 20.15) controlPoint2: CGPointMake(5.71, 20.15)];
            [bezier17Path addCurveToPoint: CGPointMake(5.66, 20.18) controlPoint1: CGPointMake(5.69, 20.17) controlPoint2: CGPointMake(5.67, 20.18)];
            [bezier17Path addCurveToPoint: CGPointMake(5.62, 20.19) controlPoint1: CGPointMake(5.65, 20.19) controlPoint2: CGPointMake(5.63, 20.19)];
            [bezier17Path addCurveToPoint: CGPointMake(5.57, 20.19) controlPoint1: CGPointMake(5.6, 20.19) controlPoint2: CGPointMake(5.59, 20.19)];
            [bezier17Path addLineToPoint: CGPointMake(5.54, 20.19)];
            [bezier17Path addCurveToPoint: CGPointMake(5.43, 20.15) controlPoint1: CGPointMake(5.5, 20.19) controlPoint2: CGPointMake(5.46, 20.18)];
            [bezier17Path addCurveToPoint: CGPointMake(5.38, 20.05) controlPoint1: CGPointMake(5.4, 20.12) controlPoint2: CGPointMake(5.38, 20.09)];
            [bezier17Path addLineToPoint: CGPointMake(5.38, 20.05)];
            [bezier17Path addCurveToPoint: CGPointMake(5.42, 19.94) controlPoint1: CGPointMake(5.38, 20.01) controlPoint2: CGPointMake(5.4, 19.97)];
            [bezier17Path addCurveToPoint: CGPointMake(5.53, 19.86) controlPoint1: CGPointMake(5.44, 19.91) controlPoint2: CGPointMake(5.48, 19.88)];
            [bezier17Path addCurveToPoint: CGPointMake(5.72, 19.81) controlPoint1: CGPointMake(5.58, 19.84) controlPoint2: CGPointMake(5.64, 19.82)];
            [bezier17Path addCurveToPoint: CGPointMake(6, 19.79) controlPoint1: CGPointMake(5.8, 19.8) controlPoint2: CGPointMake(5.89, 19.79)];
            [bezier17Path addCurveToPoint: CGPointMake(6.34, 19.81) controlPoint1: CGPointMake(6.13, 19.79) controlPoint2: CGPointMake(6.24, 19.8)];
            [bezier17Path addCurveToPoint: CGPointMake(6.56, 19.89) controlPoint1: CGPointMake(6.43, 19.82) controlPoint2: CGPointMake(6.5, 19.85)];
            [bezier17Path addCurveToPoint: CGPointMake(6.68, 20.05) controlPoint1: CGPointMake(6.61, 19.93) controlPoint2: CGPointMake(6.66, 19.98)];
            [bezier17Path addCurveToPoint: CGPointMake(6.72, 20.31) controlPoint1: CGPointMake(6.7, 20.12) controlPoint2: CGPointMake(6.72, 20.2)];
            [bezier17Path addCurveToPoint: CGPointMake(6.71, 20.45) controlPoint1: CGPointMake(6.72, 20.36) controlPoint2: CGPointMake(6.72, 20.41)];
            [bezier17Path addCurveToPoint: CGPointMake(6.69, 20.56) controlPoint1: CGPointMake(6.7, 20.49) controlPoint2: CGPointMake(6.7, 20.53)];
            [bezier17Path addCurveToPoint: CGPointMake(6.66, 20.64) controlPoint1: CGPointMake(6.68, 20.59) controlPoint2: CGPointMake(6.67, 20.62)];
            [bezier17Path addCurveToPoint: CGPointMake(6.61, 20.7) controlPoint1: CGPointMake(6.65, 20.66) controlPoint2: CGPointMake(6.63, 20.68)];
            [bezier17Path addCurveToPoint: CGPointMake(6.65, 20.75) controlPoint1: CGPointMake(6.63, 20.71) controlPoint2: CGPointMake(6.64, 20.73)];
            [bezier17Path addCurveToPoint: CGPointMake(6.69, 20.82) controlPoint1: CGPointMake(6.66, 20.77) controlPoint2: CGPointMake(6.67, 20.79)];
            [bezier17Path addCurveToPoint: CGPointMake(6.72, 20.93) controlPoint1: CGPointMake(6.7, 20.85) controlPoint2: CGPointMake(6.71, 20.89)];
            [bezier17Path addCurveToPoint: CGPointMake(6.72, 21.11) controlPoint1: CGPointMake(6.72, 20.99) controlPoint2: CGPointMake(6.72, 21.04)];
            [bezier17Path closePath];
            bezier17Path.miterLimit = 4;

            [fillColor setFill];
            [bezier17Path fill];
        }


        //// Group 6
        {
            //// Bezier 18 Drawing
            UIBezierPath* bezier18Path = [UIBezierPath bezierPath];
            [bezier18Path moveToPoint: CGPointMake(32.39, 17.9)];
            [bezier18Path addLineToPoint: CGPointMake(32.39, 17.76)];
            [bezier18Path addCurveToPoint: CGPointMake(33.2, 16.86) controlPoint1: CGPointMake(32.91, 17.35) controlPoint2: CGPointMake(33.2, 17.11)];
            [bezier18Path addCurveToPoint: CGPointMake(32.9, 16.59) controlPoint1: CGPointMake(33.2, 16.68) controlPoint2: CGPointMake(33.05, 16.59)];
            [bezier18Path addCurveToPoint: CGPointMake(32.51, 16.77) controlPoint1: CGPointMake(32.73, 16.59) controlPoint2: CGPointMake(32.59, 16.66)];
            [bezier18Path addLineToPoint: CGPointMake(32.4, 16.65)];
            [bezier18Path addCurveToPoint: CGPointMake(32.91, 16.42) controlPoint1: CGPointMake(32.51, 16.5) controlPoint2: CGPointMake(32.7, 16.42)];
            [bezier18Path addCurveToPoint: CGPointMake(33.4, 16.85) controlPoint1: CGPointMake(33.15, 16.42) controlPoint2: CGPointMake(33.4, 16.56)];
            [bezier18Path addCurveToPoint: CGPointMake(32.69, 17.74) controlPoint1: CGPointMake(33.4, 17.15) controlPoint2: CGPointMake(33.1, 17.42)];
            [bezier18Path addLineToPoint: CGPointMake(33.4, 17.74)];
            [bezier18Path addLineToPoint: CGPointMake(33.4, 17.9)];
            [bezier18Path addLineToPoint: CGPointMake(32.39, 17.9)];
            [bezier18Path closePath];
            bezier18Path.miterLimit = 4;

            [fillColor setFill];
            [bezier18Path fill];


            //// Bezier 19 Drawing
            UIBezierPath* bezier19Path = [UIBezierPath bezierPath];
            [bezier19Path moveToPoint: CGPointMake(33.74, 17.69)];
            [bezier19Path addLineToPoint: CGPointMake(33.85, 17.58)];
            [bezier19Path addCurveToPoint: CGPointMake(34.26, 17.77) controlPoint1: CGPointMake(33.94, 17.69) controlPoint2: CGPointMake(34.08, 17.77)];
            [bezier19Path addCurveToPoint: CGPointMake(34.6, 17.5) controlPoint1: CGPointMake(34.47, 17.77) controlPoint2: CGPointMake(34.6, 17.67)];
            [bezier19Path addCurveToPoint: CGPointMake(34.24, 17.24) controlPoint1: CGPointMake(34.6, 17.32) controlPoint2: CGPointMake(34.45, 17.24)];
            [bezier19Path addCurveToPoint: CGPointMake(34.09, 17.24) controlPoint1: CGPointMake(34.18, 17.24) controlPoint2: CGPointMake(34.11, 17.24)];
            [bezier19Path addLineToPoint: CGPointMake(34.09, 17.07)];
            [bezier19Path addCurveToPoint: CGPointMake(34.24, 17.07) controlPoint1: CGPointMake(34.11, 17.07) controlPoint2: CGPointMake(34.18, 17.07)];
            [bezier19Path addCurveToPoint: CGPointMake(34.58, 16.83) controlPoint1: CGPointMake(34.42, 17.07) controlPoint2: CGPointMake(34.58, 17)];
            [bezier19Path addCurveToPoint: CGPointMake(34.26, 16.58) controlPoint1: CGPointMake(34.58, 16.67) controlPoint2: CGPointMake(34.43, 16.58)];
            [bezier19Path addCurveToPoint: CGPointMake(33.88, 16.76) controlPoint1: CGPointMake(34.1, 16.58) controlPoint2: CGPointMake(33.98, 16.64)];
            [bezier19Path addLineToPoint: CGPointMake(33.78, 16.65)];
            [bezier19Path addCurveToPoint: CGPointMake(34.28, 16.43) controlPoint1: CGPointMake(33.88, 16.52) controlPoint2: CGPointMake(34.05, 16.43)];
            [bezier19Path addCurveToPoint: CGPointMake(34.77, 16.82) controlPoint1: CGPointMake(34.56, 16.43) controlPoint2: CGPointMake(34.77, 16.57)];
            [bezier19Path addCurveToPoint: CGPointMake(34.46, 17.16) controlPoint1: CGPointMake(34.77, 17.03) controlPoint2: CGPointMake(34.59, 17.13)];
            [bezier19Path addCurveToPoint: CGPointMake(34.8, 17.52) controlPoint1: CGPointMake(34.59, 17.17) controlPoint2: CGPointMake(34.8, 17.28)];
            [bezier19Path addCurveToPoint: CGPointMake(34.29, 17.94) controlPoint1: CGPointMake(34.8, 17.76) controlPoint2: CGPointMake(34.61, 17.94)];
            [bezier19Path addCurveToPoint: CGPointMake(33.74, 17.69) controlPoint1: CGPointMake(34.01, 17.93) controlPoint2: CGPointMake(33.83, 17.82)];
            [bezier19Path closePath];
            bezier19Path.miterLimit = 4;

            [fillColor setFill];
            [bezier19Path fill];


            //// Bezier 20 Drawing
            UIBezierPath* bezier20Path = [UIBezierPath bezierPath];
            [bezier20Path moveToPoint: CGPointMake(35.5, 17.9)];
            [bezier20Path addLineToPoint: CGPointMake(35.5, 16.69)];
            [bezier20Path addLineToPoint: CGPointMake(35.27, 16.94)];
            [bezier20Path addLineToPoint: CGPointMake(35.16, 16.83)];
            [bezier20Path addLineToPoint: CGPointMake(35.52, 16.46)];
            [bezier20Path addLineToPoint: CGPointMake(35.68, 16.46)];
            [bezier20Path addLineToPoint: CGPointMake(35.68, 17.91)];
            [bezier20Path addLineToPoint: CGPointMake(35.5, 17.91)];
            [bezier20Path addLineToPoint: CGPointMake(35.5, 17.9)];
            [bezier20Path closePath];
            bezier20Path.miterLimit = 4;

            [fillColor setFill];
            [bezier20Path fill];


            //// Bezier 21 Drawing
            UIBezierPath* bezier21Path = [UIBezierPath bezierPath];
            [bezier21Path moveToPoint: CGPointMake(36.14, 17.9)];
            [bezier21Path addLineToPoint: CGPointMake(36.14, 17.76)];
            [bezier21Path addCurveToPoint: CGPointMake(36.95, 16.86) controlPoint1: CGPointMake(36.66, 17.35) controlPoint2: CGPointMake(36.95, 17.11)];
            [bezier21Path addCurveToPoint: CGPointMake(36.65, 16.59) controlPoint1: CGPointMake(36.95, 16.68) controlPoint2: CGPointMake(36.8, 16.59)];
            [bezier21Path addCurveToPoint: CGPointMake(36.26, 16.77) controlPoint1: CGPointMake(36.48, 16.59) controlPoint2: CGPointMake(36.34, 16.66)];
            [bezier21Path addLineToPoint: CGPointMake(36.15, 16.65)];
            [bezier21Path addCurveToPoint: CGPointMake(36.66, 16.42) controlPoint1: CGPointMake(36.26, 16.5) controlPoint2: CGPointMake(36.45, 16.42)];
            [bezier21Path addCurveToPoint: CGPointMake(37.15, 16.85) controlPoint1: CGPointMake(36.9, 16.42) controlPoint2: CGPointMake(37.15, 16.56)];
            [bezier21Path addCurveToPoint: CGPointMake(36.44, 17.74) controlPoint1: CGPointMake(37.15, 17.15) controlPoint2: CGPointMake(36.85, 17.42)];
            [bezier21Path addLineToPoint: CGPointMake(37.15, 17.74)];
            [bezier21Path addLineToPoint: CGPointMake(37.15, 17.9)];
            [bezier21Path addLineToPoint: CGPointMake(36.14, 17.9)];
            [bezier21Path closePath];
            bezier21Path.miterLimit = 4;

            [fillColor setFill];
            [bezier21Path fill];
        }


        //// Group 7
        {
            //// SVGID_1_ Drawing
            UIBezierPath* sVGID_1_Path = [UIBezierPath bezierPath];
            [sVGID_1_Path moveToPoint: CGPointMake(17.94, 2.89)];
            [sVGID_1_Path addLineToPoint: CGPointMake(4.94, 2.89)];
            [sVGID_1_Path addLineToPoint: CGPointMake(4.94, 15.94)];
            [sVGID_1_Path addLineToPoint: CGPointMake(17.94, 15.94)];
            [sVGID_1_Path addLineToPoint: CGPointMake(17.94, 11.63)];
            [sVGID_1_Path addCurveToPoint: CGPointMake(18.02, 11.34) controlPoint1: CGPointMake(17.99, 11.56) controlPoint2: CGPointMake(18.02, 11.46)];
            [sVGID_1_Path addCurveToPoint: CGPointMake(17.94, 11.06) controlPoint1: CGPointMake(18.02, 11.21) controlPoint2: CGPointMake(17.99, 11.13)];
            [sVGID_1_Path addLineToPoint: CGPointMake(17.94, 2.89)];
            [sVGID_1_Path closePath];
            sVGID_1_Path.miterLimit = 4;

            [fillColor3 setFill];
            [sVGID_1_Path fill];
        }


        //// Group 8
        {
            //// Group 9
            {
                //// Group 10
                {
                    //// Bezier 23 Drawing
                    UIBezierPath* bezier23Path = [UIBezierPath bezierPath];
                    [bezier23Path moveToPoint: CGPointMake(4.11, 15.67)];
                    [bezier23Path addLineToPoint: CGPointMake(3.99, 15.67)];
                    [bezier23Path addCurveToPoint: CGPointMake(3.97, 15.52) controlPoint1: CGPointMake(3.98, 15.62) controlPoint2: CGPointMake(3.97, 15.54)];
                    [bezier23Path addCurveToPoint: CGPointMake(3.88, 15.44) controlPoint1: CGPointMake(3.97, 15.48) controlPoint2: CGPointMake(3.96, 15.44)];
                    [bezier23Path addLineToPoint: CGPointMake(3.72, 15.44)];
                    [bezier23Path addLineToPoint: CGPointMake(3.72, 15.68)];
                    [bezier23Path addLineToPoint: CGPointMake(3.62, 15.68)];
                    [bezier23Path addLineToPoint: CGPointMake(3.62, 15.1)];
                    [bezier23Path addLineToPoint: CGPointMake(3.89, 15.1)];
                    [bezier23Path addCurveToPoint: CGPointMake(4.09, 15.26) controlPoint1: CGPointMake(3.98, 15.1) controlPoint2: CGPointMake(4.09, 15.13)];
                    [bezier23Path addCurveToPoint: CGPointMake(4.03, 15.39) controlPoint1: CGPointMake(4.09, 15.33) controlPoint2: CGPointMake(4.06, 15.37)];
                    [bezier23Path addCurveToPoint: CGPointMake(4.08, 15.49) controlPoint1: CGPointMake(4.06, 15.4) controlPoint2: CGPointMake(4.08, 15.43)];
                    [bezier23Path addLineToPoint: CGPointMake(4.08, 15.59)];
                    [bezier23Path addCurveToPoint: CGPointMake(4.11, 15.64) controlPoint1: CGPointMake(4.08, 15.62) controlPoint2: CGPointMake(4.08, 15.63)];
                    [bezier23Path addLineToPoint: CGPointMake(4.11, 15.67)];
                    [bezier23Path closePath];
                    [bezier23Path moveToPoint: CGPointMake(3.98, 15.26)];
                    [bezier23Path addCurveToPoint: CGPointMake(3.89, 15.18) controlPoint1: CGPointMake(3.98, 15.19) controlPoint2: CGPointMake(3.93, 15.18)];
                    [bezier23Path addLineToPoint: CGPointMake(3.72, 15.18)];
                    [bezier23Path addLineToPoint: CGPointMake(3.72, 15.34)];
                    [bezier23Path addLineToPoint: CGPointMake(3.88, 15.34)];
                    [bezier23Path addCurveToPoint: CGPointMake(3.98, 15.26) controlPoint1: CGPointMake(3.94, 15.35) controlPoint2: CGPointMake(3.98, 15.33)];
                    [bezier23Path closePath];
                    [bezier23Path moveToPoint: CGPointMake(4.46, 15.39)];
                    [bezier23Path addCurveToPoint: CGPointMake(3.84, 14.77) controlPoint1: CGPointMake(4.46, 15.05) controlPoint2: CGPointMake(4.18, 14.77)];
                    [bezier23Path addCurveToPoint: CGPointMake(3.22, 15.39) controlPoint1: CGPointMake(3.5, 14.77) controlPoint2: CGPointMake(3.22, 15.04)];
                    [bezier23Path addCurveToPoint: CGPointMake(3.84, 16.01) controlPoint1: CGPointMake(3.22, 15.73) controlPoint2: CGPointMake(3.49, 16.01)];
                    [bezier23Path addCurveToPoint: CGPointMake(4.46, 15.39) controlPoint1: CGPointMake(4.18, 16.01) controlPoint2: CGPointMake(4.46, 15.73)];
                    [bezier23Path closePath];
                    [bezier23Path moveToPoint: CGPointMake(4.36, 15.39)];
                    [bezier23Path addCurveToPoint: CGPointMake(3.84, 15.92) controlPoint1: CGPointMake(4.36, 15.68) controlPoint2: CGPointMake(4.14, 15.92)];
                    [bezier23Path addCurveToPoint: CGPointMake(3.31, 15.39) controlPoint1: CGPointMake(3.54, 15.92) controlPoint2: CGPointMake(3.31, 15.68)];
                    [bezier23Path addCurveToPoint: CGPointMake(3.84, 14.86) controlPoint1: CGPointMake(3.31, 15.1) controlPoint2: CGPointMake(3.53, 14.86)];
                    [bezier23Path addCurveToPoint: CGPointMake(4.36, 15.39) controlPoint1: CGPointMake(4.14, 14.86) controlPoint2: CGPointMake(4.36, 15.1)];
                    [bezier23Path closePath];
                    bezier23Path.miterLimit = 4;

                    [fillColor3 setFill];
                    [bezier23Path fill];
                }
            }
        }


        //// Group 11
        {
            //// SVGID_4_
            {
                CGContextSaveGState(context);
                CGContextBeginTransparencyLayer(context, NULL);

                //// Clip Bezier 24
                UIBezierPath* bezier24Path = [UIBezierPath bezierPath];
                [bezier24Path moveToPoint: CGPointMake(17.94, 2.89)];
                [bezier24Path addLineToPoint: CGPointMake(4.94, 2.89)];
                [bezier24Path addLineToPoint: CGPointMake(4.94, 15.94)];
                [bezier24Path addLineToPoint: CGPointMake(17.94, 15.94)];
                [bezier24Path addLineToPoint: CGPointMake(17.94, 11.63)];
                [bezier24Path addCurveToPoint: CGPointMake(18.02, 11.34) controlPoint1: CGPointMake(17.99, 11.56) controlPoint2: CGPointMake(18.02, 11.46)];
                [bezier24Path addCurveToPoint: CGPointMake(17.94, 11.06) controlPoint1: CGPointMake(18.02, 11.21) controlPoint2: CGPointMake(17.99, 11.13)];
                [bezier24Path addLineToPoint: CGPointMake(17.94, 2.89)];
                [bezier24Path closePath];
                bezier24Path.miterLimit = 0;

                [bezier24Path addClip];


                //// Rectangle 2 Drawing
                UIBezierPath* rectangle2Path = [UIBezierPath bezierPathWithRect: CGRectMake(0.76, 0, 13.97, 13.97)];
                CGContextSaveGState(context);
                [rectangle2Path addClip];
                CGContextDrawRadialGradient(context, sVGID_5_,
                    CGPointMake(7.75, 6.99), 0,
                    CGPointMake(7.75, 6.99), 6.99,
                    kCGGradientDrawsBeforeStartLocation | kCGGradientDrawsAfterEndLocation);
                CGContextRestoreGState(context);


                CGContextEndTransparencyLayer(context);
                CGContextRestoreGState(context);
            }
        }


        //// Group 13
        {
            //// Bezier 25 Drawing
            UIBezierPath* bezier25Path = [UIBezierPath bezierPath];
            [bezier25Path moveToPoint: CGPointMake(4.94, 9.5)];
            [bezier25Path addLineToPoint: CGPointMake(5.56, 9.5)];
            [bezier25Path addLineToPoint: CGPointMake(5.7, 9.16)];
            [bezier25Path addLineToPoint: CGPointMake(6.02, 9.16)];
            [bezier25Path addLineToPoint: CGPointMake(6.16, 9.5)];
            [bezier25Path addLineToPoint: CGPointMake(7.39, 9.5)];
            [bezier25Path addLineToPoint: CGPointMake(7.39, 9.24)];
            [bezier25Path addLineToPoint: CGPointMake(7.5, 9.5)];
            [bezier25Path addLineToPoint: CGPointMake(8.14, 9.5)];
            [bezier25Path addLineToPoint: CGPointMake(8.25, 9.23)];
            [bezier25Path addLineToPoint: CGPointMake(8.25, 9.5)];
            [bezier25Path addLineToPoint: CGPointMake(11.3, 9.5)];
            [bezier25Path addLineToPoint: CGPointMake(11.3, 8.94)];
            [bezier25Path addLineToPoint: CGPointMake(11.36, 8.94)];
            [bezier25Path addCurveToPoint: CGPointMake(11.41, 9.01) controlPoint1: CGPointMake(11.4, 8.94) controlPoint2: CGPointMake(11.41, 8.95)];
            [bezier25Path addLineToPoint: CGPointMake(11.41, 9.5)];
            [bezier25Path addLineToPoint: CGPointMake(12.99, 9.5)];
            [bezier25Path addLineToPoint: CGPointMake(12.99, 9.37)];
            [bezier25Path addCurveToPoint: CGPointMake(13.58, 9.5) controlPoint1: CGPointMake(13.12, 9.44) controlPoint2: CGPointMake(13.32, 9.5)];
            [bezier25Path addLineToPoint: CGPointMake(14.25, 9.5)];
            [bezier25Path addLineToPoint: CGPointMake(14.4, 9.16)];
            [bezier25Path addLineToPoint: CGPointMake(14.72, 9.16)];
            [bezier25Path addLineToPoint: CGPointMake(14.86, 9.5)];
            [bezier25Path addLineToPoint: CGPointMake(16.14, 9.5)];
            [bezier25Path addLineToPoint: CGPointMake(16.14, 9.18)];
            [bezier25Path addLineToPoint: CGPointMake(16.33, 9.5)];
            [bezier25Path addLineToPoint: CGPointMake(17.36, 9.5)];
            [bezier25Path addLineToPoint: CGPointMake(17.36, 7.36)];
            [bezier25Path addLineToPoint: CGPointMake(16.34, 7.36)];
            [bezier25Path addLineToPoint: CGPointMake(16.34, 7.61)];
            [bezier25Path addLineToPoint: CGPointMake(16.2, 7.36)];
            [bezier25Path addLineToPoint: CGPointMake(15.16, 7.36)];
            [bezier25Path addLineToPoint: CGPointMake(15.16, 7.61)];
            [bezier25Path addLineToPoint: CGPointMake(15.03, 7.36)];
            [bezier25Path addLineToPoint: CGPointMake(13.6, 7.36)];
            [bezier25Path addCurveToPoint: CGPointMake(12.99, 7.48) controlPoint1: CGPointMake(13.37, 7.36) controlPoint2: CGPointMake(13.16, 7.39)];
            [bezier25Path addLineToPoint: CGPointMake(12.99, 7.36)];
            [bezier25Path addLineToPoint: CGPointMake(12.02, 7.36)];
            [bezier25Path addLineToPoint: CGPointMake(12.02, 7.48)];
            [bezier25Path addCurveToPoint: CGPointMake(11.61, 7.36) controlPoint1: CGPointMake(11.91, 7.39) controlPoint2: CGPointMake(11.77, 7.36)];
            [bezier25Path addLineToPoint: CGPointMake(8.06, 7.36)];
            [bezier25Path addLineToPoint: CGPointMake(7.82, 7.92)];
            [bezier25Path addLineToPoint: CGPointMake(7.58, 7.36)];
            [bezier25Path addLineToPoint: CGPointMake(6.46, 7.36)];
            [bezier25Path addLineToPoint: CGPointMake(6.46, 7.61)];
            [bezier25Path addLineToPoint: CGPointMake(6.34, 7.36)];
            [bezier25Path addLineToPoint: CGPointMake(5.38, 7.36)];
            [bezier25Path addLineToPoint: CGPointMake(4.94, 8.38)];
            [bezier25Path addLineToPoint: CGPointMake(4.94, 9.5)];
            [bezier25Path closePath];
            [bezier25Path moveToPoint: CGPointMake(17.01, 9.2)];
            [bezier25Path addLineToPoint: CGPointMake(16.5, 9.2)];
            [bezier25Path addLineToPoint: CGPointMake(15.8, 8.05)];
            [bezier25Path addLineToPoint: CGPointMake(15.8, 9.2)];
            [bezier25Path addLineToPoint: CGPointMake(15.06, 9.2)];
            [bezier25Path addLineToPoint: CGPointMake(14.92, 8.86)];
            [bezier25Path addLineToPoint: CGPointMake(14.16, 8.86)];
            [bezier25Path addLineToPoint: CGPointMake(14.02, 9.2)];
            [bezier25Path addLineToPoint: CGPointMake(13.59, 9.2)];
            [bezier25Path addCurveToPoint: CGPointMake(13.06, 9.03) controlPoint1: CGPointMake(13.41, 9.2) controlPoint2: CGPointMake(13.19, 9.16)];
            [bezier25Path addCurveToPoint: CGPointMake(12.86, 8.45) controlPoint1: CGPointMake(12.93, 8.9) controlPoint2: CGPointMake(12.86, 8.72)];
            [bezier25Path addCurveToPoint: CGPointMake(13.06, 7.85) controlPoint1: CGPointMake(12.86, 8.22) controlPoint2: CGPointMake(12.9, 8.02)];
            [bezier25Path addCurveToPoint: CGPointMake(13.62, 7.67) controlPoint1: CGPointMake(13.18, 7.73) controlPoint2: CGPointMake(13.37, 7.67)];
            [bezier25Path addLineToPoint: CGPointMake(13.97, 7.67)];
            [bezier25Path addLineToPoint: CGPointMake(13.97, 8)];
            [bezier25Path addLineToPoint: CGPointMake(13.63, 8)];
            [bezier25Path addCurveToPoint: CGPointMake(13.35, 8.09) controlPoint1: CGPointMake(13.5, 8) controlPoint2: CGPointMake(13.42, 8.02)];
            [bezier25Path addCurveToPoint: CGPointMake(13.24, 8.44) controlPoint1: CGPointMake(13.29, 8.16) controlPoint2: CGPointMake(13.24, 8.28)];
            [bezier25Path addCurveToPoint: CGPointMake(13.34, 8.8) controlPoint1: CGPointMake(13.24, 8.6) controlPoint2: CGPointMake(13.27, 8.72)];
            [bezier25Path addCurveToPoint: CGPointMake(13.59, 8.88) controlPoint1: CGPointMake(13.39, 8.86) controlPoint2: CGPointMake(13.5, 8.88)];
            [bezier25Path addLineToPoint: CGPointMake(13.76, 8.88)];
            [bezier25Path addLineToPoint: CGPointMake(14.27, 7.68)];
            [bezier25Path addLineToPoint: CGPointMake(14.82, 7.68)];
            [bezier25Path addLineToPoint: CGPointMake(15.44, 9.13)];
            [bezier25Path addLineToPoint: CGPointMake(15.44, 7.67)];
            [bezier25Path addLineToPoint: CGPointMake(16, 7.67)];
            [bezier25Path addLineToPoint: CGPointMake(16.64, 8.74)];
            [bezier25Path addLineToPoint: CGPointMake(16.64, 7.67)];
            [bezier25Path addLineToPoint: CGPointMake(17.01, 7.67)];
            [bezier25Path addLineToPoint: CGPointMake(17.01, 9.2)];
            [bezier25Path closePath];
            [bezier25Path moveToPoint: CGPointMake(12.69, 9.2)];
            [bezier25Path addLineToPoint: CGPointMake(12.32, 9.2)];
            [bezier25Path addLineToPoint: CGPointMake(12.32, 7.67)];
            [bezier25Path addLineToPoint: CGPointMake(12.69, 7.67)];
            [bezier25Path addLineToPoint: CGPointMake(12.69, 9.2)];
            [bezier25Path closePath];
            [bezier25Path moveToPoint: CGPointMake(12.1, 8.08)];
            [bezier25Path addCurveToPoint: CGPointMake(11.84, 8.49) controlPoint1: CGPointMake(12.1, 8.32) controlPoint2: CGPointMake(11.94, 8.45)];
            [bezier25Path addCurveToPoint: CGPointMake(12.02, 8.62) controlPoint1: CGPointMake(11.92, 8.52) controlPoint2: CGPointMake(11.99, 8.57)];
            [bezier25Path addCurveToPoint: CGPointMake(12.08, 8.9) controlPoint1: CGPointMake(12.07, 8.7) controlPoint2: CGPointMake(12.08, 8.77)];
            [bezier25Path addLineToPoint: CGPointMake(12.08, 9.2)];
            [bezier25Path addLineToPoint: CGPointMake(11.71, 9.2)];
            [bezier25Path addLineToPoint: CGPointMake(11.71, 9.01)];
            [bezier25Path addCurveToPoint: CGPointMake(11.65, 8.71) controlPoint1: CGPointMake(11.71, 8.92) controlPoint2: CGPointMake(11.72, 8.79)];
            [bezier25Path addCurveToPoint: CGPointMake(11.39, 8.64) controlPoint1: CGPointMake(11.6, 8.66) controlPoint2: CGPointMake(11.52, 8.64)];
            [bezier25Path addLineToPoint: CGPointMake(11, 8.64)];
            [bezier25Path addLineToPoint: CGPointMake(11, 9.2)];
            [bezier25Path addLineToPoint: CGPointMake(10.63, 9.2)];
            [bezier25Path addLineToPoint: CGPointMake(10.63, 7.67)];
            [bezier25Path addLineToPoint: CGPointMake(11.47, 7.67)];
            [bezier25Path addCurveToPoint: CGPointMake(11.91, 7.75) controlPoint1: CGPointMake(11.65, 7.67) controlPoint2: CGPointMake(11.79, 7.68)];
            [bezier25Path addCurveToPoint: CGPointMake(12.1, 8.08) controlPoint1: CGPointMake(12.03, 7.81) controlPoint2: CGPointMake(12.1, 7.91)];
            [bezier25Path closePath];
            [bezier25Path moveToPoint: CGPointMake(10.38, 9.2)];
            [bezier25Path addLineToPoint: CGPointMake(9.16, 9.2)];
            [bezier25Path addLineToPoint: CGPointMake(9.16, 7.67)];
            [bezier25Path addLineToPoint: CGPointMake(10.38, 7.67)];
            [bezier25Path addLineToPoint: CGPointMake(10.38, 7.99)];
            [bezier25Path addLineToPoint: CGPointMake(9.53, 7.99)];
            [bezier25Path addLineToPoint: CGPointMake(9.53, 8.27)];
            [bezier25Path addLineToPoint: CGPointMake(10.36, 8.27)];
            [bezier25Path addLineToPoint: CGPointMake(10.36, 8.58)];
            [bezier25Path addLineToPoint: CGPointMake(9.53, 8.58)];
            [bezier25Path addLineToPoint: CGPointMake(9.53, 8.89)];
            [bezier25Path addLineToPoint: CGPointMake(10.38, 8.89)];
            [bezier25Path addLineToPoint: CGPointMake(10.38, 9.2)];
            [bezier25Path closePath];
            [bezier25Path moveToPoint: CGPointMake(8.88, 9.2)];
            [bezier25Path addLineToPoint: CGPointMake(8.51, 9.2)];
            [bezier25Path addLineToPoint: CGPointMake(8.51, 8)];
            [bezier25Path addLineToPoint: CGPointMake(7.98, 9.2)];
            [bezier25Path addLineToPoint: CGPointMake(7.66, 9.2)];
            [bezier25Path addLineToPoint: CGPointMake(7.13, 8)];
            [bezier25Path addLineToPoint: CGPointMake(7.13, 9.2)];
            [bezier25Path addLineToPoint: CGPointMake(6.38, 9.2)];
            [bezier25Path addLineToPoint: CGPointMake(6.24, 8.86)];
            [bezier25Path addLineToPoint: CGPointMake(5.48, 8.86)];
            [bezier25Path addLineToPoint: CGPointMake(5.34, 9.2)];
            [bezier25Path addLineToPoint: CGPointMake(4.94, 9.2)];
            [bezier25Path addLineToPoint: CGPointMake(5.6, 7.67)];
            [bezier25Path addLineToPoint: CGPointMake(6.14, 7.67)];
            [bezier25Path addLineToPoint: CGPointMake(6.76, 9.12)];
            [bezier25Path addLineToPoint: CGPointMake(6.76, 7.67)];
            [bezier25Path addLineToPoint: CGPointMake(7.36, 7.67)];
            [bezier25Path addLineToPoint: CGPointMake(7.84, 8.71)];
            [bezier25Path addLineToPoint: CGPointMake(8.28, 7.67)];
            [bezier25Path addLineToPoint: CGPointMake(8.89, 7.67)];
            [bezier25Path addLineToPoint: CGPointMake(8.89, 9.2)];
            [bezier25Path addLineToPoint: CGPointMake(8.88, 9.2)];
            [bezier25Path closePath];
            [bezier25Path moveToPoint: CGPointMake(14.79, 8.54)];
            [bezier25Path addLineToPoint: CGPointMake(14.53, 7.93)];
            [bezier25Path addLineToPoint: CGPointMake(14.28, 8.54)];
            [bezier25Path addLineToPoint: CGPointMake(14.79, 8.54)];
            [bezier25Path closePath];
            [bezier25Path moveToPoint: CGPointMake(11.62, 8.3)];
            [bezier25Path addCurveToPoint: CGPointMake(11.44, 8.33) controlPoint1: CGPointMake(11.57, 8.33) controlPoint2: CGPointMake(11.51, 8.33)];
            [bezier25Path addLineToPoint: CGPointMake(11, 8.33)];
            [bezier25Path addLineToPoint: CGPointMake(11, 7.99)];
            [bezier25Path addLineToPoint: CGPointMake(11.45, 7.99)];
            [bezier25Path addCurveToPoint: CGPointMake(11.62, 8.02) controlPoint1: CGPointMake(11.51, 7.99) controlPoint2: CGPointMake(11.58, 7.99)];
            [bezier25Path addCurveToPoint: CGPointMake(11.69, 8.16) controlPoint1: CGPointMake(11.67, 8.04) controlPoint2: CGPointMake(11.69, 8.09)];
            [bezier25Path addCurveToPoint: CGPointMake(11.62, 8.3) controlPoint1: CGPointMake(11.7, 8.22) controlPoint2: CGPointMake(11.67, 8.27)];
            [bezier25Path closePath];
            [bezier25Path moveToPoint: CGPointMake(6.11, 8.54)];
            [bezier25Path addLineToPoint: CGPointMake(5.86, 7.93)];
            [bezier25Path addLineToPoint: CGPointMake(5.61, 8.54)];
            [bezier25Path addLineToPoint: CGPointMake(6.11, 8.54)];
            [bezier25Path closePath];
            bezier25Path.miterLimit = 4;

            [fillColor4 setFill];
            [bezier25Path fill];


            //// Bezier 26 Drawing
            UIBezierPath* bezier26Path = [UIBezierPath bezierPath];
            [bezier26Path moveToPoint: CGPointMake(12.02, 10.8)];
            [bezier26Path addCurveToPoint: CGPointMake(11.38, 11.31) controlPoint1: CGPointMake(12.02, 11.22) controlPoint2: CGPointMake(11.7, 11.31)];
            [bezier26Path addLineToPoint: CGPointMake(10.92, 11.31)];
            [bezier26Path addLineToPoint: CGPointMake(10.92, 11.82)];
            [bezier26Path addLineToPoint: CGPointMake(10.21, 11.82)];
            [bezier26Path addLineToPoint: CGPointMake(9.76, 11.31)];
            [bezier26Path addLineToPoint: CGPointMake(9.3, 11.83)];
            [bezier26Path addLineToPoint: CGPointMake(7.86, 11.83)];
            [bezier26Path addLineToPoint: CGPointMake(7.86, 10.3)];
            [bezier26Path addLineToPoint: CGPointMake(9.33, 10.3)];
            [bezier26Path addLineToPoint: CGPointMake(9.78, 10.8)];
            [bezier26Path addLineToPoint: CGPointMake(10.24, 10.3)];
            [bezier26Path addLineToPoint: CGPointMake(11.41, 10.3)];
            [bezier26Path addCurveToPoint: CGPointMake(12.02, 10.8) controlPoint1: CGPointMake(11.7, 10.3) controlPoint2: CGPointMake(12.02, 10.38)];
            [bezier26Path closePath];
            [bezier26Path moveToPoint: CGPointMake(9.12, 11.51)];
            [bezier26Path addLineToPoint: CGPointMake(8.22, 11.51)];
            [bezier26Path addLineToPoint: CGPointMake(8.22, 11.21)];
            [bezier26Path addLineToPoint: CGPointMake(9.02, 11.21)];
            [bezier26Path addLineToPoint: CGPointMake(9.02, 10.9)];
            [bezier26Path addLineToPoint: CGPointMake(8.22, 10.9)];
            [bezier26Path addLineToPoint: CGPointMake(8.22, 10.62)];
            [bezier26Path addLineToPoint: CGPointMake(9.14, 10.62)];
            [bezier26Path addLineToPoint: CGPointMake(9.54, 11.07)];
            [bezier26Path addLineToPoint: CGPointMake(9.12, 11.51)];
            [bezier26Path closePath];
            [bezier26Path moveToPoint: CGPointMake(10.57, 11.69)];
            [bezier26Path addLineToPoint: CGPointMake(10.01, 11.07)];
            [bezier26Path addLineToPoint: CGPointMake(10.57, 10.47)];
            [bezier26Path addLineToPoint: CGPointMake(10.57, 11.69)];
            [bezier26Path closePath];
            [bezier26Path moveToPoint: CGPointMake(11.4, 11.01)];
            [bezier26Path addLineToPoint: CGPointMake(10.93, 11.01)];
            [bezier26Path addLineToPoint: CGPointMake(10.93, 10.62)];
            [bezier26Path addLineToPoint: CGPointMake(11.41, 10.62)];
            [bezier26Path addCurveToPoint: CGPointMake(11.63, 10.81) controlPoint1: CGPointMake(11.54, 10.62) controlPoint2: CGPointMake(11.63, 10.67)];
            [bezier26Path addCurveToPoint: CGPointMake(11.4, 11.01) controlPoint1: CGPointMake(11.63, 10.94) controlPoint2: CGPointMake(11.54, 11.01)];
            [bezier26Path closePath];
            [bezier26Path moveToPoint: CGPointMake(13.87, 10.3)];
            [bezier26Path addLineToPoint: CGPointMake(15.09, 10.3)];
            [bezier26Path addLineToPoint: CGPointMake(15.09, 10.62)];
            [bezier26Path addLineToPoint: CGPointMake(14.23, 10.62)];
            [bezier26Path addLineToPoint: CGPointMake(14.23, 10.9)];
            [bezier26Path addLineToPoint: CGPointMake(15.06, 10.9)];
            [bezier26Path addLineToPoint: CGPointMake(15.06, 11.21)];
            [bezier26Path addLineToPoint: CGPointMake(14.23, 11.21)];
            [bezier26Path addLineToPoint: CGPointMake(14.23, 11.51)];
            [bezier26Path addLineToPoint: CGPointMake(15.09, 11.51)];
            [bezier26Path addLineToPoint: CGPointMake(15.09, 11.83)];
            [bezier26Path addLineToPoint: CGPointMake(13.87, 11.83)];
            [bezier26Path addLineToPoint: CGPointMake(13.87, 10.3)];
            [bezier26Path closePath];
            [bezier26Path moveToPoint: CGPointMake(13.41, 11.12)];
            [bezier26Path addCurveToPoint: CGPointMake(13.59, 11.25) controlPoint1: CGPointMake(13.49, 11.15) controlPoint2: CGPointMake(13.56, 11.2)];
            [bezier26Path addCurveToPoint: CGPointMake(13.65, 11.53) controlPoint1: CGPointMake(13.64, 11.32) controlPoint2: CGPointMake(13.65, 11.39)];
            [bezier26Path addLineToPoint: CGPointMake(13.65, 11.83)];
            [bezier26Path addLineToPoint: CGPointMake(13.29, 11.83)];
            [bezier26Path addLineToPoint: CGPointMake(13.29, 11.64)];
            [bezier26Path addCurveToPoint: CGPointMake(13.23, 11.34) controlPoint1: CGPointMake(13.29, 11.55) controlPoint2: CGPointMake(13.3, 11.41)];
            [bezier26Path addCurveToPoint: CGPointMake(12.97, 11.27) controlPoint1: CGPointMake(13.18, 11.28) controlPoint2: CGPointMake(13.1, 11.27)];
            [bezier26Path addLineToPoint: CGPointMake(12.58, 11.27)];
            [bezier26Path addLineToPoint: CGPointMake(12.58, 11.83)];
            [bezier26Path addLineToPoint: CGPointMake(12.2, 11.83)];
            [bezier26Path addLineToPoint: CGPointMake(12.2, 10.3)];
            [bezier26Path addLineToPoint: CGPointMake(13.04, 10.3)];
            [bezier26Path addCurveToPoint: CGPointMake(13.48, 10.37) controlPoint1: CGPointMake(13.23, 10.3) controlPoint2: CGPointMake(13.36, 10.31)];
            [bezier26Path addCurveToPoint: CGPointMake(13.67, 10.71) controlPoint1: CGPointMake(13.59, 10.44) controlPoint2: CGPointMake(13.67, 10.54)];
            [bezier26Path addCurveToPoint: CGPointMake(13.41, 11.12) controlPoint1: CGPointMake(13.67, 10.96) controlPoint2: CGPointMake(13.51, 11.08)];
            [bezier26Path closePath];
            [bezier26Path moveToPoint: CGPointMake(13.19, 10.93)];
            [bezier26Path addCurveToPoint: CGPointMake(13.01, 10.96) controlPoint1: CGPointMake(13.14, 10.96) controlPoint2: CGPointMake(13.08, 10.96)];
            [bezier26Path addLineToPoint: CGPointMake(12.56, 10.96)];
            [bezier26Path addLineToPoint: CGPointMake(12.56, 10.62)];
            [bezier26Path addLineToPoint: CGPointMake(13.01, 10.62)];
            [bezier26Path addCurveToPoint: CGPointMake(13.19, 10.65) controlPoint1: CGPointMake(13.08, 10.62) controlPoint2: CGPointMake(13.14, 10.62)];
            [bezier26Path addCurveToPoint: CGPointMake(13.26, 10.79) controlPoint1: CGPointMake(13.24, 10.68) controlPoint2: CGPointMake(13.26, 10.72)];
            [bezier26Path addCurveToPoint: CGPointMake(13.19, 10.93) controlPoint1: CGPointMake(13.26, 10.85) controlPoint2: CGPointMake(13.24, 10.9)];
            [bezier26Path closePath];
            [bezier26Path moveToPoint: CGPointMake(16.48, 11.02)];
            [bezier26Path addCurveToPoint: CGPointMake(16.59, 11.34) controlPoint1: CGPointMake(16.55, 11.1) controlPoint2: CGPointMake(16.59, 11.19)];
            [bezier26Path addCurveToPoint: CGPointMake(16.01, 11.82) controlPoint1: CGPointMake(16.59, 11.67) controlPoint2: CGPointMake(16.38, 11.82)];
            [bezier26Path addLineToPoint: CGPointMake(15.3, 11.82)];
            [bezier26Path addLineToPoint: CGPointMake(15.3, 11.5)];
            [bezier26Path addLineToPoint: CGPointMake(16.01, 11.5)];
            [bezier26Path addCurveToPoint: CGPointMake(16.16, 11.46) controlPoint1: CGPointMake(16.08, 11.5) controlPoint2: CGPointMake(16.13, 11.49)];
            [bezier26Path addCurveToPoint: CGPointMake(16.2, 11.36) controlPoint1: CGPointMake(16.18, 11.44) controlPoint2: CGPointMake(16.2, 11.4)];
            [bezier26Path addCurveToPoint: CGPointMake(16.16, 11.26) controlPoint1: CGPointMake(16.2, 11.31) controlPoint2: CGPointMake(16.18, 11.28)];
            [bezier26Path addCurveToPoint: CGPointMake(16.03, 11.22) controlPoint1: CGPointMake(16.13, 11.24) controlPoint2: CGPointMake(16.09, 11.23)];
            [bezier26Path addCurveToPoint: CGPointMake(15.26, 10.75) controlPoint1: CGPointMake(15.69, 11.21) controlPoint2: CGPointMake(15.26, 11.23)];
            [bezier26Path addCurveToPoint: CGPointMake(15.78, 10.29) controlPoint1: CGPointMake(15.26, 10.53) controlPoint2: CGPointMake(15.4, 10.29)];
            [bezier26Path addLineToPoint: CGPointMake(16.51, 10.29)];
            [bezier26Path addLineToPoint: CGPointMake(16.51, 10.62)];
            [bezier26Path addLineToPoint: CGPointMake(15.84, 10.62)];
            [bezier26Path addCurveToPoint: CGPointMake(15.7, 10.65) controlPoint1: CGPointMake(15.78, 10.62) controlPoint2: CGPointMake(15.73, 10.62)];
            [bezier26Path addCurveToPoint: CGPointMake(15.65, 10.76) controlPoint1: CGPointMake(15.66, 10.67) controlPoint2: CGPointMake(15.65, 10.71)];
            [bezier26Path addCurveToPoint: CGPointMake(15.73, 10.87) controlPoint1: CGPointMake(15.65, 10.82) controlPoint2: CGPointMake(15.68, 10.86)];
            [bezier26Path addCurveToPoint: CGPointMake(15.87, 10.89) controlPoint1: CGPointMake(15.77, 10.88) controlPoint2: CGPointMake(15.81, 10.89)];
            [bezier26Path addLineToPoint: CGPointMake(16.07, 10.89)];
            [bezier26Path addCurveToPoint: CGPointMake(16.48, 11.02) controlPoint1: CGPointMake(16.27, 10.91) controlPoint2: CGPointMake(16.4, 10.94)];
            [bezier26Path closePath];
            [bezier26Path moveToPoint: CGPointMake(17.94, 11.63)];
            [bezier26Path addCurveToPoint: CGPointMake(17.44, 11.83) controlPoint1: CGPointMake(17.85, 11.76) controlPoint2: CGPointMake(17.68, 11.83)];
            [bezier26Path addLineToPoint: CGPointMake(16.73, 11.83)];
            [bezier26Path addLineToPoint: CGPointMake(16.73, 11.5)];
            [bezier26Path addLineToPoint: CGPointMake(17.43, 11.5)];
            [bezier26Path addCurveToPoint: CGPointMake(17.58, 11.46) controlPoint1: CGPointMake(17.5, 11.5) controlPoint2: CGPointMake(17.55, 11.49)];
            [bezier26Path addCurveToPoint: CGPointMake(17.62, 11.36) controlPoint1: CGPointMake(17.61, 11.44) controlPoint2: CGPointMake(17.62, 11.4)];
            [bezier26Path addCurveToPoint: CGPointMake(17.58, 11.26) controlPoint1: CGPointMake(17.62, 11.31) controlPoint2: CGPointMake(17.6, 11.28)];
            [bezier26Path addCurveToPoint: CGPointMake(17.45, 11.22) controlPoint1: CGPointMake(17.55, 11.24) controlPoint2: CGPointMake(17.52, 11.23)];
            [bezier26Path addCurveToPoint: CGPointMake(16.68, 10.75) controlPoint1: CGPointMake(17.11, 11.21) controlPoint2: CGPointMake(16.68, 11.23)];
            [bezier26Path addCurveToPoint: CGPointMake(17.2, 10.29) controlPoint1: CGPointMake(16.68, 10.53) controlPoint2: CGPointMake(16.82, 10.29)];
            [bezier26Path addLineToPoint: CGPointMake(17.93, 10.29)];
            [bezier26Path addLineToPoint: CGPointMake(17.93, 10)];
            [bezier26Path addLineToPoint: CGPointMake(17.25, 10)];
            [bezier26Path addCurveToPoint: CGPointMake(16.79, 10.13) controlPoint1: CGPointMake(17.05, 10) controlPoint2: CGPointMake(16.9, 10.05)];
            [bezier26Path addLineToPoint: CGPointMake(16.79, 10)];
            [bezier26Path addLineToPoint: CGPointMake(15.79, 10)];
            [bezier26Path addCurveToPoint: CGPointMake(15.35, 10.13) controlPoint1: CGPointMake(15.63, 10) controlPoint2: CGPointMake(15.44, 10.04)];
            [bezier26Path addLineToPoint: CGPointMake(15.35, 10)];
            [bezier26Path addLineToPoint: CGPointMake(13.56, 10)];
            [bezier26Path addLineToPoint: CGPointMake(13.56, 10.13)];
            [bezier26Path addCurveToPoint: CGPointMake(13.09, 10) controlPoint1: CGPointMake(13.44, 10.02) controlPoint2: CGPointMake(13.2, 10)];
            [bezier26Path addLineToPoint: CGPointMake(11.91, 10)];
            [bezier26Path addLineToPoint: CGPointMake(11.91, 10.13)];
            [bezier26Path addCurveToPoint: CGPointMake(11.4, 10) controlPoint1: CGPointMake(11.8, 10.01) controlPoint2: CGPointMake(11.55, 10)];
            [bezier26Path addLineToPoint: CGPointMake(10.08, 10)];
            [bezier26Path addLineToPoint: CGPointMake(9.78, 10.33)];
            [bezier26Path addLineToPoint: CGPointMake(9.5, 10)];
            [bezier26Path addLineToPoint: CGPointMake(7.53, 10)];
            [bezier26Path addLineToPoint: CGPointMake(7.53, 12.14)];
            [bezier26Path addLineToPoint: CGPointMake(9.46, 12.14)];
            [bezier26Path addLineToPoint: CGPointMake(9.77, 11.81)];
            [bezier26Path addLineToPoint: CGPointMake(10.07, 12.14)];
            [bezier26Path addLineToPoint: CGPointMake(11.26, 12.14)];
            [bezier26Path addLineToPoint: CGPointMake(11.26, 11.64)];
            [bezier26Path addLineToPoint: CGPointMake(11.38, 11.64)];
            [bezier26Path addCurveToPoint: CGPointMake(11.89, 11.57) controlPoint1: CGPointMake(11.54, 11.64) controlPoint2: CGPointMake(11.72, 11.64)];
            [bezier26Path addLineToPoint: CGPointMake(11.89, 12.15)];
            [bezier26Path addLineToPoint: CGPointMake(12.87, 12.15)];
            [bezier26Path addLineToPoint: CGPointMake(12.87, 11.59)];
            [bezier26Path addLineToPoint: CGPointMake(12.92, 11.59)];
            [bezier26Path addCurveToPoint: CGPointMake(12.99, 11.65) controlPoint1: CGPointMake(12.98, 11.59) controlPoint2: CGPointMake(12.99, 11.59)];
            [bezier26Path addLineToPoint: CGPointMake(12.99, 12.14)];
            [bezier26Path addLineToPoint: CGPointMake(15.98, 12.14)];
            [bezier26Path addCurveToPoint: CGPointMake(16.48, 12) controlPoint1: CGPointMake(16.17, 12.14) controlPoint2: CGPointMake(16.37, 12.09)];
            [bezier26Path addLineToPoint: CGPointMake(16.48, 12.14)];
            [bezier26Path addLineToPoint: CGPointMake(17.43, 12.14)];
            [bezier26Path addCurveToPoint: CGPointMake(17.97, 12.04) controlPoint1: CGPointMake(17.63, 12.14) controlPoint2: CGPointMake(17.82, 12.11)];
            [bezier26Path addLineToPoint: CGPointMake(17.97, 11.63)];
            [bezier26Path addLineToPoint: CGPointMake(17.94, 11.63)];
            [bezier26Path closePath];
            [bezier26Path moveToPoint: CGPointMake(17.94, 10.63)];
            [bezier26Path addLineToPoint: CGPointMake(17.27, 10.63)];
            [bezier26Path addCurveToPoint: CGPointMake(17.12, 10.66) controlPoint1: CGPointMake(17.2, 10.63) controlPoint2: CGPointMake(17.16, 10.63)];
            [bezier26Path addCurveToPoint: CGPointMake(17.06, 10.77) controlPoint1: CGPointMake(17.08, 10.68) controlPoint2: CGPointMake(17.06, 10.72)];
            [bezier26Path addCurveToPoint: CGPointMake(17.15, 10.88) controlPoint1: CGPointMake(17.06, 10.83) controlPoint2: CGPointMake(17.09, 10.87)];
            [bezier26Path addCurveToPoint: CGPointMake(17.29, 10.9) controlPoint1: CGPointMake(17.19, 10.89) controlPoint2: CGPointMake(17.23, 10.9)];
            [bezier26Path addLineToPoint: CGPointMake(17.49, 10.9)];
            [bezier26Path addCurveToPoint: CGPointMake(17.91, 11.02) controlPoint1: CGPointMake(17.69, 10.91) controlPoint2: CGPointMake(17.82, 10.94)];
            [bezier26Path addCurveToPoint: CGPointMake(17.94, 11.06) controlPoint1: CGPointMake(17.92, 11.03) controlPoint2: CGPointMake(17.93, 11.05)];
            [bezier26Path addLineToPoint: CGPointMake(17.94, 10.63)];
            [bezier26Path closePath];
            bezier26Path.miterLimit = 4;

            [fillColor4 setFill];
            [bezier26Path fill];
        }
    }


    //// Cleanup
    CGGradientRelease(sVGID_5_);
    CGColorSpaceRelease(colorSpace);
}

- (void)drawCardCid {
    //// General Declarations
    CGColorSpaceRef colorSpace = CGColorSpaceCreateDeviceRGB();
    CGContextRef context = UIGraphicsGetCurrentContext();

    //// Color Declarations
    UIColor* gradientColor = [UIColor colorWithRed: 0.406 green: 0.745 blue: 0.935 alpha: 1];
    UIColor* gradientColor2 = [UIColor colorWithRed: 0.163 green: 0.415 blue: 0.695 alpha: 1];
    UIColor* gradientColor3 = [UIColor colorWithRed: 0.042 green: 0.316 blue: 0.619 alpha: 1];
    UIColor* fillColor = [UIColor colorWithRed: 0.651 green: 0.651 blue: 0.651 alpha: 1];
    UIColor* fillColor2 = [UIColor colorWithRed: 0.951 green: 0.956 blue: 0.956 alpha: 1];
    UIColor* fillColor3 = [UIColor colorWithRed: 0.037 green: 0.312 blue: 0.619 alpha: 1];
    UIColor* fillColor4 = [UIColor colorWithRed: 1 green: 1 blue: 1 alpha: 1];
    UIColor* fillColor5 = [UIColor colorWithRed: 0.89 green: 0.13 blue: 0.139 alpha: 1];
    UIColor* fillColor6 = [UIColor colorWithRed: 0.232 green: 0.232 blue: 0.232 alpha: 1];

    //// Gradient Declarations
    CGFloat sVGID_5_2Locations[] = {0, 0.68, 1};
    CGGradientRef sVGID_5_2 = CGGradientCreateWithColors(colorSpace, (__bridge CFArrayRef)@[(id)gradientColor.CGColor, (id)gradientColor2.CGColor, (id)gradientColor3.CGColor], sVGID_5_2Locations);

    //// ic_card_cid Group
    {
        //// Group 2
        {
            //// Bezier Drawing
            UIBezierPath* bezierPath = [UIBezierPath bezierPath];
            [bezierPath moveToPoint: CGPointMake(39.97, 0)];
            [bezierPath addLineToPoint: CGPointMake(2.04, 0)];
            [bezierPath addCurveToPoint: CGPointMake(0, 2.02) controlPoint1: CGPointMake(0.91, 0) controlPoint2: CGPointMake(0, 0.91)];
            [bezierPath addLineToPoint: CGPointMake(0, 3.04)];
            [bezierPath addLineToPoint: CGPointMake(0, 23.96)];
            [bezierPath addLineToPoint: CGPointMake(0, 24.98)];
            [bezierPath addCurveToPoint: CGPointMake(2.04, 27) controlPoint1: CGPointMake(0, 26.09) controlPoint2: CGPointMake(0.91, 27)];
            [bezierPath addLineToPoint: CGPointMake(39.97, 27)];
            [bezierPath addCurveToPoint: CGPointMake(42, 24.98) controlPoint1: CGPointMake(41.09, 27) controlPoint2: CGPointMake(42, 26.09)];
            [bezierPath addLineToPoint: CGPointMake(42, 2.02)];
            [bezierPath addCurveToPoint: CGPointMake(39.97, 0) controlPoint1: CGPointMake(42, 0.91) controlPoint2: CGPointMake(41.09, 0)];
            [bezierPath closePath];
            bezierPath.miterLimit = 4;

            [fillColor setFill];
            [bezierPath fill];


            //// Rectangle Drawing
            UIBezierPath* rectanglePath = [UIBezierPath bezierPathWithRoundedRect: CGRectMake(0.5, 0.5, 41, 25.5) cornerRadius: 1.6];
            [fillColor2 setFill];
            [rectanglePath fill];
        }


        //// Bezier 2 Drawing
        UIBezierPath* bezier2Path = [UIBezierPath bezierPath];
        [bezier2Path moveToPoint: CGPointMake(32.82, 8.22)];
        [bezier2Path addCurveToPoint: CGPointMake(32.21, 7.6) controlPoint1: CGPointMake(32.48, 8.22) controlPoint2: CGPointMake(32.21, 7.94)];
        [bezier2Path addLineToPoint: CGPointMake(32.21, 4.59)];
        [bezier2Path addCurveToPoint: CGPointMake(32.82, 3.98) controlPoint1: CGPointMake(32.21, 4.25) controlPoint2: CGPointMake(32.48, 3.98)];
        [bezier2Path addLineToPoint: CGPointMake(37.91, 3.98)];
        [bezier2Path addCurveToPoint: CGPointMake(38.53, 4.59) controlPoint1: CGPointMake(38.25, 3.98) controlPoint2: CGPointMake(38.53, 4.26)];
        [bezier2Path addLineToPoint: CGPointMake(38.53, 7.6)];
        [bezier2Path addCurveToPoint: CGPointMake(37.91, 8.22) controlPoint1: CGPointMake(38.53, 7.94) controlPoint2: CGPointMake(38.25, 8.22)];
        [bezier2Path addLineToPoint: CGPointMake(32.82, 8.22)];
        [bezier2Path closePath];
        [bezier2Path moveToPoint: CGPointMake(32.82, 4.3)];
        [bezier2Path addCurveToPoint: CGPointMake(32.52, 4.6) controlPoint1: CGPointMake(32.66, 4.3) controlPoint2: CGPointMake(32.52, 4.43)];
        [bezier2Path addLineToPoint: CGPointMake(32.52, 7.6)];
        [bezier2Path addCurveToPoint: CGPointMake(32.82, 7.9) controlPoint1: CGPointMake(32.52, 7.76) controlPoint2: CGPointMake(32.65, 7.9)];
        [bezier2Path addLineToPoint: CGPointMake(37.91, 7.9)];
        [bezier2Path addCurveToPoint: CGPointMake(38.2, 7.6) controlPoint1: CGPointMake(38.07, 7.9) controlPoint2: CGPointMake(38.2, 7.77)];
        [bezier2Path addLineToPoint: CGPointMake(38.2, 4.59)];
        [bezier2Path addCurveToPoint: CGPointMake(37.91, 4.29) controlPoint1: CGPointMake(38.2, 4.43) controlPoint2: CGPointMake(38.07, 4.29)];
        [bezier2Path addLineToPoint: CGPointMake(32.82, 4.29)];
        [bezier2Path addLineToPoint: CGPointMake(32.82, 4.3)];
        [bezier2Path closePath];
        bezier2Path.miterLimit = 4;

        [fillColor setFill];
        [bezier2Path fill];


        //// Group 3
        {
            //// Group 4
            {
                //// Group 5
                {
                    //// Bezier 3 Drawing
                    UIBezierPath* bezier3Path = [UIBezierPath bezierPath];
                    [bezier3Path moveToPoint: CGPointMake(8.66, 21.11)];
                    [bezier3Path addCurveToPoint: CGPointMake(8.63, 21.38) controlPoint1: CGPointMake(8.66, 21.22) controlPoint2: CGPointMake(8.65, 21.3)];
                    [bezier3Path addCurveToPoint: CGPointMake(8.5, 21.55) controlPoint1: CGPointMake(8.6, 21.45) controlPoint2: CGPointMake(8.56, 21.5)];
                    [bezier3Path addCurveToPoint: CGPointMake(8.27, 21.64) controlPoint1: CGPointMake(8.45, 21.59) controlPoint2: CGPointMake(8.37, 21.62)];
                    [bezier3Path addCurveToPoint: CGPointMake(7.9, 21.67) controlPoint1: CGPointMake(8.17, 21.66) controlPoint2: CGPointMake(8.05, 21.67)];
                    [bezier3Path addLineToPoint: CGPointMake(7.89, 21.67)];
                    [bezier3Path addCurveToPoint: CGPointMake(7.77, 21.67) controlPoint1: CGPointMake(7.86, 21.67) controlPoint2: CGPointMake(7.81, 21.67)];
                    [bezier3Path addCurveToPoint: CGPointMake(7.64, 21.66) controlPoint1: CGPointMake(7.73, 21.67) controlPoint2: CGPointMake(7.68, 21.67)];
                    [bezier3Path addCurveToPoint: CGPointMake(7.51, 21.64) controlPoint1: CGPointMake(7.6, 21.65) controlPoint2: CGPointMake(7.55, 21.65)];
                    [bezier3Path addCurveToPoint: CGPointMake(7.39, 21.6) controlPoint1: CGPointMake(7.46, 21.63) controlPoint2: CGPointMake(7.43, 21.62)];
                    [bezier3Path addCurveToPoint: CGPointMake(7.3, 21.53) controlPoint1: CGPointMake(7.35, 21.58) controlPoint2: CGPointMake(7.33, 21.56)];
                    [bezier3Path addCurveToPoint: CGPointMake(7.27, 21.43) controlPoint1: CGPointMake(7.28, 21.5) controlPoint2: CGPointMake(7.27, 21.47)];
                    [bezier3Path addLineToPoint: CGPointMake(7.27, 21.42)];
                    [bezier3Path addCurveToPoint: CGPointMake(7.32, 21.31) controlPoint1: CGPointMake(7.27, 21.38) controlPoint2: CGPointMake(7.29, 21.34)];
                    [bezier3Path addCurveToPoint: CGPointMake(7.43, 21.27) controlPoint1: CGPointMake(7.35, 21.28) controlPoint2: CGPointMake(7.39, 21.27)];
                    [bezier3Path addLineToPoint: CGPointMake(7.43, 21.27)];
                    [bezier3Path addCurveToPoint: CGPointMake(7.49, 21.27) controlPoint1: CGPointMake(7.46, 21.27) controlPoint2: CGPointMake(7.48, 21.27)];
                    [bezier3Path addCurveToPoint: CGPointMake(7.53, 21.28) controlPoint1: CGPointMake(7.51, 21.28) controlPoint2: CGPointMake(7.52, 21.28)];
                    [bezier3Path addCurveToPoint: CGPointMake(7.56, 21.3) controlPoint1: CGPointMake(7.54, 21.29) controlPoint2: CGPointMake(7.55, 21.29)];
                    [bezier3Path addCurveToPoint: CGPointMake(7.58, 21.32) controlPoint1: CGPointMake(7.57, 21.31) controlPoint2: CGPointMake(7.58, 21.31)];
                    [bezier3Path addLineToPoint: CGPointMake(7.58, 21.32)];
                    [bezier3Path addCurveToPoint: CGPointMake(7.62, 21.34) controlPoint1: CGPointMake(7.59, 21.33) controlPoint2: CGPointMake(7.61, 21.34)];
                    [bezier3Path addCurveToPoint: CGPointMake(7.68, 21.36) controlPoint1: CGPointMake(7.63, 21.35) controlPoint2: CGPointMake(7.66, 21.35)];
                    [bezier3Path addCurveToPoint: CGPointMake(7.77, 21.37) controlPoint1: CGPointMake(7.7, 21.37) controlPoint2: CGPointMake(7.74, 21.37)];
                    [bezier3Path addCurveToPoint: CGPointMake(7.92, 21.37) controlPoint1: CGPointMake(7.81, 21.37) controlPoint2: CGPointMake(7.86, 21.37)];
                    [bezier3Path addLineToPoint: CGPointMake(7.94, 21.37)];
                    [bezier3Path addCurveToPoint: CGPointMake(8.12, 21.35) controlPoint1: CGPointMake(8.01, 21.37) controlPoint2: CGPointMake(8.07, 21.37)];
                    [bezier3Path addCurveToPoint: CGPointMake(8.23, 21.3) controlPoint1: CGPointMake(8.17, 21.34) controlPoint2: CGPointMake(8.2, 21.32)];
                    [bezier3Path addCurveToPoint: CGPointMake(8.29, 21.21) controlPoint1: CGPointMake(8.25, 21.28) controlPoint2: CGPointMake(8.27, 21.25)];
                    [bezier3Path addCurveToPoint: CGPointMake(8.31, 21.09) controlPoint1: CGPointMake(8.3, 21.18) controlPoint2: CGPointMake(8.31, 21.14)];
                    [bezier3Path addCurveToPoint: CGPointMake(8.27, 20.91) controlPoint1: CGPointMake(8.31, 21.01) controlPoint2: CGPointMake(8.3, 20.95)];
                    [bezier3Path addCurveToPoint: CGPointMake(8.15, 20.86) controlPoint1: CGPointMake(8.25, 20.88) controlPoint2: CGPointMake(8.21, 20.86)];
                    [bezier3Path addLineToPoint: CGPointMake(7.77, 20.86)];
                    [bezier3Path addCurveToPoint: CGPointMake(7.71, 20.85) controlPoint1: CGPointMake(7.75, 20.86) controlPoint2: CGPointMake(7.73, 20.86)];
                    [bezier3Path addCurveToPoint: CGPointMake(7.65, 20.83) controlPoint1: CGPointMake(7.69, 20.85) controlPoint2: CGPointMake(7.67, 20.84)];
                    [bezier3Path addCurveToPoint: CGPointMake(7.61, 20.79) controlPoint1: CGPointMake(7.63, 20.82) controlPoint2: CGPointMake(7.62, 20.8)];
                    [bezier3Path addCurveToPoint: CGPointMake(7.6, 20.72) controlPoint1: CGPointMake(7.6, 20.77) controlPoint2: CGPointMake(7.6, 20.75)];
                    [bezier3Path addCurveToPoint: CGPointMake(7.65, 20.6) controlPoint1: CGPointMake(7.6, 20.67) controlPoint2: CGPointMake(7.62, 20.63)];
                    [bezier3Path addCurveToPoint: CGPointMake(7.77, 20.56) controlPoint1: CGPointMake(7.69, 20.58) controlPoint2: CGPointMake(7.73, 20.56)];
                    [bezier3Path addLineToPoint: CGPointMake(8.13, 20.56)];
                    [bezier3Path addCurveToPoint: CGPointMake(8.2, 20.55) controlPoint1: CGPointMake(8.16, 20.56) controlPoint2: CGPointMake(8.18, 20.56)];
                    [bezier3Path addCurveToPoint: CGPointMake(8.25, 20.52) controlPoint1: CGPointMake(8.22, 20.54) controlPoint2: CGPointMake(8.24, 20.53)];
                    [bezier3Path addCurveToPoint: CGPointMake(8.28, 20.46) controlPoint1: CGPointMake(8.26, 20.5) controlPoint2: CGPointMake(8.27, 20.48)];
                    [bezier3Path addCurveToPoint: CGPointMake(8.29, 20.35) controlPoint1: CGPointMake(8.29, 20.43) controlPoint2: CGPointMake(8.29, 20.4)];
                    [bezier3Path addCurveToPoint: CGPointMake(8.28, 20.23) controlPoint1: CGPointMake(8.29, 20.3) controlPoint2: CGPointMake(8.29, 20.26)];
                    [bezier3Path addCurveToPoint: CGPointMake(8.24, 20.15) controlPoint1: CGPointMake(8.28, 20.2) controlPoint2: CGPointMake(8.26, 20.17)];
                    [bezier3Path addCurveToPoint: CGPointMake(8.14, 20.11) controlPoint1: CGPointMake(8.22, 20.13) controlPoint2: CGPointMake(8.18, 20.11)];
                    [bezier3Path addCurveToPoint: CGPointMake(7.96, 20.1) controlPoint1: CGPointMake(8.09, 20.1) controlPoint2: CGPointMake(8.03, 20.1)];
                    [bezier3Path addLineToPoint: CGPointMake(7.94, 20.1)];
                    [bezier3Path addCurveToPoint: CGPointMake(7.79, 20.11) controlPoint1: CGPointMake(7.89, 20.1) controlPoint2: CGPointMake(7.84, 20.1)];
                    [bezier3Path addCurveToPoint: CGPointMake(7.66, 20.14) controlPoint1: CGPointMake(7.73, 20.12) controlPoint2: CGPointMake(7.7, 20.13)];
                    [bezier3Path addCurveToPoint: CGPointMake(7.62, 20.16) controlPoint1: CGPointMake(7.64, 20.15) controlPoint2: CGPointMake(7.63, 20.15)];
                    [bezier3Path addCurveToPoint: CGPointMake(7.58, 20.18) controlPoint1: CGPointMake(7.61, 20.17) controlPoint2: CGPointMake(7.59, 20.18)];
                    [bezier3Path addCurveToPoint: CGPointMake(7.54, 20.19) controlPoint1: CGPointMake(7.57, 20.19) controlPoint2: CGPointMake(7.55, 20.19)];
                    [bezier3Path addCurveToPoint: CGPointMake(7.49, 20.19) controlPoint1: CGPointMake(7.52, 20.19) controlPoint2: CGPointMake(7.51, 20.19)];
                    [bezier3Path addLineToPoint: CGPointMake(7.48, 20.19)];
                    [bezier3Path addCurveToPoint: CGPointMake(7.37, 20.15) controlPoint1: CGPointMake(7.44, 20.19) controlPoint2: CGPointMake(7.4, 20.18)];
                    [bezier3Path addCurveToPoint: CGPointMake(7.32, 20.05) controlPoint1: CGPointMake(7.34, 20.12) controlPoint2: CGPointMake(7.32, 20.09)];
                    [bezier3Path addLineToPoint: CGPointMake(7.32, 20.05)];
                    [bezier3Path addCurveToPoint: CGPointMake(7.36, 19.94) controlPoint1: CGPointMake(7.32, 20.01) controlPoint2: CGPointMake(7.34, 19.97)];
                    [bezier3Path addCurveToPoint: CGPointMake(7.47, 19.86) controlPoint1: CGPointMake(7.39, 19.91) controlPoint2: CGPointMake(7.42, 19.88)];
                    [bezier3Path addCurveToPoint: CGPointMake(7.66, 19.81) controlPoint1: CGPointMake(7.52, 19.84) controlPoint2: CGPointMake(7.58, 19.82)];
                    [bezier3Path addCurveToPoint: CGPointMake(7.94, 19.79) controlPoint1: CGPointMake(7.74, 19.8) controlPoint2: CGPointMake(7.83, 19.79)];
                    [bezier3Path addCurveToPoint: CGPointMake(8.28, 19.81) controlPoint1: CGPointMake(8.07, 19.79) controlPoint2: CGPointMake(8.18, 19.8)];
                    [bezier3Path addCurveToPoint: CGPointMake(8.5, 19.89) controlPoint1: CGPointMake(8.37, 19.82) controlPoint2: CGPointMake(8.44, 19.85)];
                    [bezier3Path addCurveToPoint: CGPointMake(8.62, 20.05) controlPoint1: CGPointMake(8.55, 19.93) controlPoint2: CGPointMake(8.6, 19.98)];
                    [bezier3Path addCurveToPoint: CGPointMake(8.66, 20.31) controlPoint1: CGPointMake(8.65, 20.12) controlPoint2: CGPointMake(8.66, 20.2)];
                    [bezier3Path addCurveToPoint: CGPointMake(8.65, 20.45) controlPoint1: CGPointMake(8.66, 20.36) controlPoint2: CGPointMake(8.66, 20.41)];
                    [bezier3Path addCurveToPoint: CGPointMake(8.63, 20.56) controlPoint1: CGPointMake(8.64, 20.49) controlPoint2: CGPointMake(8.64, 20.53)];
                    [bezier3Path addCurveToPoint: CGPointMake(8.6, 20.64) controlPoint1: CGPointMake(8.62, 20.59) controlPoint2: CGPointMake(8.61, 20.62)];
                    [bezier3Path addCurveToPoint: CGPointMake(8.55, 20.7) controlPoint1: CGPointMake(8.59, 20.66) controlPoint2: CGPointMake(8.57, 20.68)];
                    [bezier3Path addCurveToPoint: CGPointMake(8.59, 20.75) controlPoint1: CGPointMake(8.56, 20.71) controlPoint2: CGPointMake(8.58, 20.73)];
                    [bezier3Path addCurveToPoint: CGPointMake(8.63, 20.82) controlPoint1: CGPointMake(8.6, 20.77) controlPoint2: CGPointMake(8.61, 20.79)];
                    [bezier3Path addCurveToPoint: CGPointMake(8.66, 20.93) controlPoint1: CGPointMake(8.64, 20.85) controlPoint2: CGPointMake(8.65, 20.89)];
                    [bezier3Path addCurveToPoint: CGPointMake(8.66, 21.11) controlPoint1: CGPointMake(8.65, 20.99) controlPoint2: CGPointMake(8.66, 21.04)];
                    [bezier3Path closePath];
                    bezier3Path.miterLimit = 4;

                    [fillColor setFill];
                    [bezier3Path fill];


                    //// Bezier 4 Drawing
                    UIBezierPath* bezier4Path = [UIBezierPath bezierPath];
                    [bezier4Path moveToPoint: CGPointMake(10.66, 21.16)];
                    [bezier4Path addLineToPoint: CGPointMake(10.66, 21.16)];
                    [bezier4Path addCurveToPoint: CGPointMake(10.62, 21.4) controlPoint1: CGPointMake(10.66, 21.26) controlPoint2: CGPointMake(10.65, 21.34)];
                    [bezier4Path addCurveToPoint: CGPointMake(10.48, 21.56) controlPoint1: CGPointMake(10.59, 21.46) controlPoint2: CGPointMake(10.54, 21.51)];
                    [bezier4Path addCurveToPoint: CGPointMake(10.26, 21.64) controlPoint1: CGPointMake(10.42, 21.6) controlPoint2: CGPointMake(10.35, 21.62)];
                    [bezier4Path addCurveToPoint: CGPointMake(9.98, 21.66) controlPoint1: CGPointMake(10.17, 21.66) controlPoint2: CGPointMake(10.08, 21.66)];
                    [bezier4Path addCurveToPoint: CGPointMake(9.69, 21.63) controlPoint1: CGPointMake(9.87, 21.66) controlPoint2: CGPointMake(9.78, 21.65)];
                    [bezier4Path addCurveToPoint: CGPointMake(9.48, 21.54) controlPoint1: CGPointMake(9.61, 21.61) controlPoint2: CGPointMake(9.54, 21.58)];
                    [bezier4Path addCurveToPoint: CGPointMake(9.34, 21.39) controlPoint1: CGPointMake(9.42, 21.5) controlPoint2: CGPointMake(9.38, 21.45)];
                    [bezier4Path addCurveToPoint: CGPointMake(9.29, 21.17) controlPoint1: CGPointMake(9.31, 21.33) controlPoint2: CGPointMake(9.29, 21.25)];
                    [bezier4Path addLineToPoint: CGPointMake(9.29, 20.28)];
                    [bezier4Path addCurveToPoint: CGPointMake(9.47, 19.92) controlPoint1: CGPointMake(9.29, 20.12) controlPoint2: CGPointMake(9.35, 20)];
                    [bezier4Path addCurveToPoint: CGPointMake(9.98, 19.8) controlPoint1: CGPointMake(9.59, 19.84) controlPoint2: CGPointMake(9.76, 19.8)];
                    [bezier4Path addCurveToPoint: CGPointMake(10.26, 19.83) controlPoint1: CGPointMake(10.08, 19.8) controlPoint2: CGPointMake(10.18, 19.81)];
                    [bezier4Path addCurveToPoint: CGPointMake(10.47, 19.92) controlPoint1: CGPointMake(10.34, 19.85) controlPoint2: CGPointMake(10.42, 19.88)];
                    [bezier4Path addCurveToPoint: CGPointMake(10.61, 20.07) controlPoint1: CGPointMake(10.53, 19.96) controlPoint2: CGPointMake(10.58, 20.01)];
                    [bezier4Path addCurveToPoint: CGPointMake(10.65, 20.28) controlPoint1: CGPointMake(10.64, 20.13) controlPoint2: CGPointMake(10.65, 20.2)];
                    [bezier4Path addLineToPoint: CGPointMake(10.65, 21.16)];
                    [bezier4Path addLineToPoint: CGPointMake(10.66, 21.16)];
                    [bezier4Path closePath];
                    [bezier4Path moveToPoint: CGPointMake(10.3, 20.31)];
                    [bezier4Path addCurveToPoint: CGPointMake(10.22, 20.16) controlPoint1: CGPointMake(10.3, 20.25) controlPoint2: CGPointMake(10.27, 20.2)];
                    [bezier4Path addCurveToPoint: CGPointMake(9.97, 20.1) controlPoint1: CGPointMake(10.16, 20.12) controlPoint2: CGPointMake(10.08, 20.1)];
                    [bezier4Path addCurveToPoint: CGPointMake(9.72, 20.15) controlPoint1: CGPointMake(9.86, 20.1) controlPoint2: CGPointMake(9.78, 20.12)];
                    [bezier4Path addCurveToPoint: CGPointMake(9.64, 20.29) controlPoint1: CGPointMake(9.67, 20.19) controlPoint2: CGPointMake(9.64, 20.23)];
                    [bezier4Path addLineToPoint: CGPointMake(9.64, 21.16)];
                    [bezier4Path addCurveToPoint: CGPointMake(9.72, 21.31) controlPoint1: CGPointMake(9.64, 21.23) controlPoint2: CGPointMake(9.67, 21.28)];
                    [bezier4Path addCurveToPoint: CGPointMake(9.97, 21.35) controlPoint1: CGPointMake(9.77, 21.34) controlPoint2: CGPointMake(9.85, 21.35)];
                    [bezier4Path addCurveToPoint: CGPointMake(10.21, 21.3) controlPoint1: CGPointMake(10.07, 21.35) controlPoint2: CGPointMake(10.15, 21.34)];
                    [bezier4Path addCurveToPoint: CGPointMake(10.3, 21.15) controlPoint1: CGPointMake(10.27, 21.27) controlPoint2: CGPointMake(10.3, 21.22)];
                    [bezier4Path addLineToPoint: CGPointMake(10.3, 20.31)];
                    [bezier4Path closePath];
                    bezier4Path.miterLimit = 4;

                    [fillColor setFill];
                    [bezier4Path fill];


                    //// Bezier 5 Drawing
                    UIBezierPath* bezier5Path = [UIBezierPath bezierPath];
                    [bezier5Path moveToPoint: CGPointMake(12.37, 20.61)];
                    [bezier5Path addCurveToPoint: CGPointMake(12.53, 20.69) controlPoint1: CGPointMake(12.44, 20.63) controlPoint2: CGPointMake(12.49, 20.65)];
                    [bezier5Path addCurveToPoint: CGPointMake(12.62, 20.85) controlPoint1: CGPointMake(12.57, 20.73) controlPoint2: CGPointMake(12.6, 20.78)];
                    [bezier5Path addCurveToPoint: CGPointMake(12.65, 21.11) controlPoint1: CGPointMake(12.64, 20.92) controlPoint2: CGPointMake(12.65, 21.01)];
                    [bezier5Path addCurveToPoint: CGPointMake(12.62, 21.37) controlPoint1: CGPointMake(12.65, 21.22) controlPoint2: CGPointMake(12.64, 21.3)];
                    [bezier5Path addCurveToPoint: CGPointMake(12.5, 21.54) controlPoint1: CGPointMake(12.6, 21.44) controlPoint2: CGPointMake(12.56, 21.5)];
                    [bezier5Path addCurveToPoint: CGPointMake(12.27, 21.63) controlPoint1: CGPointMake(12.44, 21.58) controlPoint2: CGPointMake(12.37, 21.61)];
                    [bezier5Path addCurveToPoint: CGPointMake(11.91, 21.66) controlPoint1: CGPointMake(12.18, 21.65) controlPoint2: CGPointMake(12.05, 21.66)];
                    [bezier5Path addLineToPoint: CGPointMake(11.83, 21.66)];
                    [bezier5Path addCurveToPoint: CGPointMake(11.65, 21.65) controlPoint1: CGPointMake(11.77, 21.66) controlPoint2: CGPointMake(11.72, 21.66)];
                    [bezier5Path addCurveToPoint: CGPointMake(11.47, 21.62) controlPoint1: CGPointMake(11.58, 21.65) controlPoint2: CGPointMake(11.52, 21.64)];
                    [bezier5Path addCurveToPoint: CGPointMake(11.33, 21.54) controlPoint1: CGPointMake(11.41, 21.6) controlPoint2: CGPointMake(11.37, 21.58)];
                    [bezier5Path addCurveToPoint: CGPointMake(11.27, 21.4) controlPoint1: CGPointMake(11.29, 21.51) controlPoint2: CGPointMake(11.27, 21.46)];
                    [bezier5Path addLineToPoint: CGPointMake(11.27, 21.39)];
                    [bezier5Path addCurveToPoint: CGPointMake(11.32, 21.29) controlPoint1: CGPointMake(11.27, 21.35) controlPoint2: CGPointMake(11.29, 21.31)];
                    [bezier5Path addCurveToPoint: CGPointMake(11.43, 21.25) controlPoint1: CGPointMake(11.35, 21.26) controlPoint2: CGPointMake(11.39, 21.25)];
                    [bezier5Path addLineToPoint: CGPointMake(11.43, 21.25)];
                    [bezier5Path addCurveToPoint: CGPointMake(11.51, 21.26) controlPoint1: CGPointMake(11.47, 21.25) controlPoint2: CGPointMake(11.49, 21.26)];
                    [bezier5Path addCurveToPoint: CGPointMake(11.56, 21.28) controlPoint1: CGPointMake(11.53, 21.27) controlPoint2: CGPointMake(11.55, 21.27)];
                    [bezier5Path addCurveToPoint: CGPointMake(11.6, 21.31) controlPoint1: CGPointMake(11.57, 21.29) controlPoint2: CGPointMake(11.59, 21.3)];
                    [bezier5Path addCurveToPoint: CGPointMake(11.67, 21.33) controlPoint1: CGPointMake(11.62, 21.32) controlPoint2: CGPointMake(11.64, 21.33)];
                    [bezier5Path addCurveToPoint: CGPointMake(11.77, 21.35) controlPoint1: CGPointMake(11.7, 21.34) controlPoint2: CGPointMake(11.73, 21.34)];
                    [bezier5Path addCurveToPoint: CGPointMake(11.94, 21.36) controlPoint1: CGPointMake(11.81, 21.36) controlPoint2: CGPointMake(11.87, 21.36)];
                    [bezier5Path addCurveToPoint: CGPointMake(12.12, 21.34) controlPoint1: CGPointMake(12.01, 21.36) controlPoint2: CGPointMake(12.07, 21.36)];
                    [bezier5Path addCurveToPoint: CGPointMake(12.23, 21.29) controlPoint1: CGPointMake(12.16, 21.33) controlPoint2: CGPointMake(12.2, 21.31)];
                    [bezier5Path addCurveToPoint: CGPointMake(12.28, 21.2) controlPoint1: CGPointMake(12.26, 21.27) controlPoint2: CGPointMake(12.27, 21.24)];
                    [bezier5Path addCurveToPoint: CGPointMake(12.3, 21.08) controlPoint1: CGPointMake(12.29, 21.17) controlPoint2: CGPointMake(12.3, 21.13)];
                    [bezier5Path addCurveToPoint: CGPointMake(12.27, 20.91) controlPoint1: CGPointMake(12.3, 21) controlPoint2: CGPointMake(12.29, 20.94)];
                    [bezier5Path addCurveToPoint: CGPointMake(12.15, 20.86) controlPoint1: CGPointMake(12.25, 20.88) controlPoint2: CGPointMake(12.21, 20.86)];
                    [bezier5Path addLineToPoint: CGPointMake(11.54, 20.86)];
                    [bezier5Path addCurveToPoint: CGPointMake(11.41, 20.85) controlPoint1: CGPointMake(11.49, 20.86) controlPoint2: CGPointMake(11.45, 20.86)];
                    [bezier5Path addCurveToPoint: CGPointMake(11.34, 20.82) controlPoint1: CGPointMake(11.38, 20.85) controlPoint2: CGPointMake(11.35, 20.83)];
                    [bezier5Path addCurveToPoint: CGPointMake(11.31, 20.75) controlPoint1: CGPointMake(11.32, 20.8) controlPoint2: CGPointMake(11.31, 20.78)];
                    [bezier5Path addCurveToPoint: CGPointMake(11.3, 20.64) controlPoint1: CGPointMake(11.3, 20.72) controlPoint2: CGPointMake(11.3, 20.69)];
                    [bezier5Path addLineToPoint: CGPointMake(11.3, 19.96)];
                    [bezier5Path addCurveToPoint: CGPointMake(11.35, 19.84) controlPoint1: CGPointMake(11.3, 19.91) controlPoint2: CGPointMake(11.32, 19.87)];
                    [bezier5Path addCurveToPoint: CGPointMake(11.5, 19.8) controlPoint1: CGPointMake(11.37, 19.81) controlPoint2: CGPointMake(11.43, 19.8)];
                    [bezier5Path addCurveToPoint: CGPointMake(11.61, 19.8) controlPoint1: CGPointMake(11.52, 19.8) controlPoint2: CGPointMake(11.56, 19.8)];
                    [bezier5Path addCurveToPoint: CGPointMake(11.78, 19.8) controlPoint1: CGPointMake(11.66, 19.8) controlPoint2: CGPointMake(11.72, 19.8)];
                    [bezier5Path addCurveToPoint: CGPointMake(11.97, 19.8) controlPoint1: CGPointMake(11.84, 19.8) controlPoint2: CGPointMake(11.9, 19.8)];
                    [bezier5Path addCurveToPoint: CGPointMake(12.15, 19.8) controlPoint1: CGPointMake(12.04, 19.8) controlPoint2: CGPointMake(12.1, 19.8)];
                    [bezier5Path addCurveToPoint: CGPointMake(12.29, 19.8) controlPoint1: CGPointMake(12.21, 19.8) controlPoint2: CGPointMake(12.25, 19.8)];
                    [bezier5Path addCurveToPoint: CGPointMake(12.37, 19.8) controlPoint1: CGPointMake(12.33, 19.8) controlPoint2: CGPointMake(12.36, 19.8)];
                    [bezier5Path addCurveToPoint: CGPointMake(12.43, 19.81) controlPoint1: CGPointMake(12.39, 19.8) controlPoint2: CGPointMake(12.41, 19.8)];
                    [bezier5Path addCurveToPoint: CGPointMake(12.49, 19.83) controlPoint1: CGPointMake(12.45, 19.81) controlPoint2: CGPointMake(12.47, 19.82)];
                    [bezier5Path addCurveToPoint: CGPointMake(12.55, 19.88) controlPoint1: CGPointMake(12.51, 19.84) controlPoint2: CGPointMake(12.53, 19.86)];
                    [bezier5Path addCurveToPoint: CGPointMake(12.57, 19.95) controlPoint1: CGPointMake(12.56, 19.9) controlPoint2: CGPointMake(12.57, 19.92)];
                    [bezier5Path addLineToPoint: CGPointMake(12.57, 19.96)];
                    [bezier5Path addCurveToPoint: CGPointMake(12.55, 20.04) controlPoint1: CGPointMake(12.57, 20) controlPoint2: CGPointMake(12.56, 20.02)];
                    [bezier5Path addCurveToPoint: CGPointMake(12.51, 20.08) controlPoint1: CGPointMake(12.54, 20.06) controlPoint2: CGPointMake(12.52, 20.08)];
                    [bezier5Path addCurveToPoint: CGPointMake(12.44, 20.1) controlPoint1: CGPointMake(12.49, 20.09) controlPoint2: CGPointMake(12.47, 20.09)];
                    [bezier5Path addCurveToPoint: CGPointMake(12.37, 20.1) controlPoint1: CGPointMake(12.42, 20.1) controlPoint2: CGPointMake(12.39, 20.1)];
                    [bezier5Path addLineToPoint: CGPointMake(11.66, 20.1)];
                    [bezier5Path addLineToPoint: CGPointMake(11.66, 20.56)];
                    [bezier5Path addLineToPoint: CGPointMake(12.13, 20.56)];
                    [bezier5Path addCurveToPoint: CGPointMake(12.37, 20.61) controlPoint1: CGPointMake(12.22, 20.58) controlPoint2: CGPointMake(12.3, 20.59)];
                    [bezier5Path closePath];
                    bezier5Path.miterLimit = 4;

                    [fillColor setFill];
                    [bezier5Path fill];


                    //// Bezier 6 Drawing
                    UIBezierPath* bezier6Path = [UIBezierPath bezierPath];
                    [bezier6Path moveToPoint: CGPointMake(15.25, 20.53)];
                    [bezier6Path addCurveToPoint: CGPointMake(15.54, 20.57) controlPoint1: CGPointMake(15.36, 20.53) controlPoint2: CGPointMake(15.46, 20.54)];
                    [bezier6Path addCurveToPoint: CGPointMake(15.73, 20.68) controlPoint1: CGPointMake(15.62, 20.59) controlPoint2: CGPointMake(15.68, 20.63)];
                    [bezier6Path addCurveToPoint: CGPointMake(15.83, 20.86) controlPoint1: CGPointMake(15.78, 20.73) controlPoint2: CGPointMake(15.81, 20.79)];
                    [bezier6Path addCurveToPoint: CGPointMake(15.86, 21.11) controlPoint1: CGPointMake(15.85, 20.93) controlPoint2: CGPointMake(15.86, 21.02)];
                    [bezier6Path addCurveToPoint: CGPointMake(15.83, 21.35) controlPoint1: CGPointMake(15.86, 21.2) controlPoint2: CGPointMake(15.85, 21.28)];
                    [bezier6Path addCurveToPoint: CGPointMake(15.71, 21.53) controlPoint1: CGPointMake(15.81, 21.42) controlPoint2: CGPointMake(15.76, 21.48)];
                    [bezier6Path addCurveToPoint: CGPointMake(15.5, 21.64) controlPoint1: CGPointMake(15.66, 21.58) controlPoint2: CGPointMake(15.59, 21.61)];
                    [bezier6Path addCurveToPoint: CGPointMake(15.17, 21.68) controlPoint1: CGPointMake(15.41, 21.66) controlPoint2: CGPointMake(15.3, 21.68)];
                    [bezier6Path addCurveToPoint: CGPointMake(14.9, 21.65) controlPoint1: CGPointMake(15.07, 21.68) controlPoint2: CGPointMake(14.98, 21.67)];
                    [bezier6Path addCurveToPoint: CGPointMake(14.69, 21.56) controlPoint1: CGPointMake(14.82, 21.63) controlPoint2: CGPointMake(14.75, 21.6)];
                    [bezier6Path addCurveToPoint: CGPointMake(14.55, 21.4) controlPoint1: CGPointMake(14.63, 21.52) controlPoint2: CGPointMake(14.58, 21.47)];
                    [bezier6Path addCurveToPoint: CGPointMake(14.5, 21.16) controlPoint1: CGPointMake(14.52, 21.33) controlPoint2: CGPointMake(14.5, 21.25)];
                    [bezier6Path addLineToPoint: CGPointMake(14.5, 19.97)];
                    [bezier6Path addCurveToPoint: CGPointMake(14.51, 19.92) controlPoint1: CGPointMake(14.5, 19.95) controlPoint2: CGPointMake(14.5, 19.93)];
                    [bezier6Path addCurveToPoint: CGPointMake(14.54, 19.87) controlPoint1: CGPointMake(14.51, 19.9) controlPoint2: CGPointMake(14.53, 19.88)];
                    [bezier6Path addCurveToPoint: CGPointMake(14.6, 19.84) controlPoint1: CGPointMake(14.55, 19.86) controlPoint2: CGPointMake(14.57, 19.84)];
                    [bezier6Path addCurveToPoint: CGPointMake(14.69, 19.82) controlPoint1: CGPointMake(14.62, 19.83) controlPoint2: CGPointMake(14.65, 19.82)];
                    [bezier6Path addCurveToPoint: CGPointMake(14.82, 19.87) controlPoint1: CGPointMake(14.75, 19.82) controlPoint2: CGPointMake(14.79, 19.84)];
                    [bezier6Path addCurveToPoint: CGPointMake(14.86, 19.98) controlPoint1: CGPointMake(14.85, 19.9) controlPoint2: CGPointMake(14.86, 19.93)];
                    [bezier6Path addLineToPoint: CGPointMake(14.86, 20.57)];
                    [bezier6Path addCurveToPoint: CGPointMake(15.08, 20.55) controlPoint1: CGPointMake(14.95, 20.56) controlPoint2: CGPointMake(15.02, 20.55)];
                    [bezier6Path addCurveToPoint: CGPointMake(15.25, 20.53) controlPoint1: CGPointMake(15.15, 20.53) controlPoint2: CGPointMake(15.21, 20.53)];
                    [bezier6Path closePath];
                    [bezier6Path moveToPoint: CGPointMake(15.51, 21.1)];
                    [bezier6Path addCurveToPoint: CGPointMake(15.5, 20.97) controlPoint1: CGPointMake(15.51, 21.04) controlPoint2: CGPointMake(15.51, 21)];
                    [bezier6Path addCurveToPoint: CGPointMake(15.45, 20.89) controlPoint1: CGPointMake(15.49, 20.93) controlPoint2: CGPointMake(15.47, 20.91)];
                    [bezier6Path addCurveToPoint: CGPointMake(15.35, 20.85) controlPoint1: CGPointMake(15.42, 20.87) controlPoint2: CGPointMake(15.39, 20.86)];
                    [bezier6Path addCurveToPoint: CGPointMake(15.19, 20.84) controlPoint1: CGPointMake(15.31, 20.84) controlPoint2: CGPointMake(15.26, 20.84)];
                    [bezier6Path addCurveToPoint: CGPointMake(15.07, 20.84) controlPoint1: CGPointMake(15.14, 20.84) controlPoint2: CGPointMake(15.1, 20.84)];
                    [bezier6Path addCurveToPoint: CGPointMake(14.99, 20.84) controlPoint1: CGPointMake(15.04, 20.84) controlPoint2: CGPointMake(15.01, 20.84)];
                    [bezier6Path addCurveToPoint: CGPointMake(14.93, 20.85) controlPoint1: CGPointMake(14.97, 20.84) controlPoint2: CGPointMake(14.95, 20.84)];
                    [bezier6Path addCurveToPoint: CGPointMake(14.87, 20.86) controlPoint1: CGPointMake(14.91, 20.85) controlPoint2: CGPointMake(14.89, 20.86)];
                    [bezier6Path addLineToPoint: CGPointMake(14.87, 21.1)];
                    [bezier6Path addCurveToPoint: CGPointMake(14.89, 21.23) controlPoint1: CGPointMake(14.87, 21.15) controlPoint2: CGPointMake(14.87, 21.19)];
                    [bezier6Path addCurveToPoint: CGPointMake(14.94, 21.32) controlPoint1: CGPointMake(14.9, 21.26) controlPoint2: CGPointMake(14.91, 21.29)];
                    [bezier6Path addCurveToPoint: CGPointMake(15.04, 21.37) controlPoint1: CGPointMake(14.96, 21.35) controlPoint2: CGPointMake(15, 21.36)];
                    [bezier6Path addCurveToPoint: CGPointMake(15.2, 21.39) controlPoint1: CGPointMake(15.08, 21.38) controlPoint2: CGPointMake(15.14, 21.39)];
                    [bezier6Path addCurveToPoint: CGPointMake(15.35, 21.38) controlPoint1: CGPointMake(15.26, 21.39) controlPoint2: CGPointMake(15.31, 21.39)];
                    [bezier6Path addCurveToPoint: CGPointMake(15.45, 21.34) controlPoint1: CGPointMake(15.39, 21.37) controlPoint2: CGPointMake(15.42, 21.36)];
                    [bezier6Path addCurveToPoint: CGPointMake(15.51, 21.26) controlPoint1: CGPointMake(15.48, 21.32) controlPoint2: CGPointMake(15.49, 21.29)];
                    [bezier6Path addCurveToPoint: CGPointMake(15.51, 21.1) controlPoint1: CGPointMake(15.51, 21.2) controlPoint2: CGPointMake(15.51, 21.15)];
                    [bezier6Path closePath];
                    bezier6Path.miterLimit = 4;

                    [fillColor setFill];
                    [bezier6Path fill];


                    //// Bezier 7 Drawing
                    UIBezierPath* bezier7Path = [UIBezierPath bezierPath];
                    [bezier7Path moveToPoint: CGPointMake(17.79, 21.16)];
                    [bezier7Path addLineToPoint: CGPointMake(17.79, 21.16)];
                    [bezier7Path addCurveToPoint: CGPointMake(17.75, 21.4) controlPoint1: CGPointMake(17.79, 21.26) controlPoint2: CGPointMake(17.78, 21.34)];
                    [bezier7Path addCurveToPoint: CGPointMake(17.61, 21.56) controlPoint1: CGPointMake(17.72, 21.46) controlPoint2: CGPointMake(17.67, 21.51)];
                    [bezier7Path addCurveToPoint: CGPointMake(17.39, 21.64) controlPoint1: CGPointMake(17.55, 21.6) controlPoint2: CGPointMake(17.47, 21.62)];
                    [bezier7Path addCurveToPoint: CGPointMake(17.11, 21.66) controlPoint1: CGPointMake(17.31, 21.66) controlPoint2: CGPointMake(17.21, 21.66)];
                    [bezier7Path addCurveToPoint: CGPointMake(16.83, 21.63) controlPoint1: CGPointMake(17, 21.66) controlPoint2: CGPointMake(16.91, 21.65)];
                    [bezier7Path addCurveToPoint: CGPointMake(16.62, 21.54) controlPoint1: CGPointMake(16.75, 21.61) controlPoint2: CGPointMake(16.67, 21.58)];
                    [bezier7Path addCurveToPoint: CGPointMake(16.48, 21.39) controlPoint1: CGPointMake(16.56, 21.5) controlPoint2: CGPointMake(16.51, 21.45)];
                    [bezier7Path addCurveToPoint: CGPointMake(16.43, 21.17) controlPoint1: CGPointMake(16.45, 21.33) controlPoint2: CGPointMake(16.43, 21.25)];
                    [bezier7Path addLineToPoint: CGPointMake(16.43, 20.28)];
                    [bezier7Path addCurveToPoint: CGPointMake(16.61, 19.92) controlPoint1: CGPointMake(16.43, 20.12) controlPoint2: CGPointMake(16.49, 20)];
                    [bezier7Path addCurveToPoint: CGPointMake(17.12, 19.8) controlPoint1: CGPointMake(16.73, 19.84) controlPoint2: CGPointMake(16.9, 19.8)];
                    [bezier7Path addCurveToPoint: CGPointMake(17.4, 19.83) controlPoint1: CGPointMake(17.22, 19.8) controlPoint2: CGPointMake(17.32, 19.81)];
                    [bezier7Path addCurveToPoint: CGPointMake(17.62, 19.92) controlPoint1: CGPointMake(17.48, 19.85) controlPoint2: CGPointMake(17.56, 19.88)];
                    [bezier7Path addCurveToPoint: CGPointMake(17.76, 20.07) controlPoint1: CGPointMake(17.68, 19.96) controlPoint2: CGPointMake(17.72, 20.01)];
                    [bezier7Path addCurveToPoint: CGPointMake(17.8, 20.28) controlPoint1: CGPointMake(17.79, 20.13) controlPoint2: CGPointMake(17.8, 20.2)];
                    [bezier7Path addLineToPoint: CGPointMake(17.8, 21.16)];
                    [bezier7Path addLineToPoint: CGPointMake(17.79, 21.16)];
                    [bezier7Path closePath];
                    [bezier7Path moveToPoint: CGPointMake(17.43, 20.31)];
                    [bezier7Path addCurveToPoint: CGPointMake(17.35, 20.16) controlPoint1: CGPointMake(17.43, 20.25) controlPoint2: CGPointMake(17.4, 20.2)];
                    [bezier7Path addCurveToPoint: CGPointMake(17.1, 20.1) controlPoint1: CGPointMake(17.3, 20.12) controlPoint2: CGPointMake(17.21, 20.1)];
                    [bezier7Path addCurveToPoint: CGPointMake(16.86, 20.15) controlPoint1: CGPointMake(16.99, 20.1) controlPoint2: CGPointMake(16.91, 20.12)];
                    [bezier7Path addCurveToPoint: CGPointMake(16.78, 20.29) controlPoint1: CGPointMake(16.8, 20.19) controlPoint2: CGPointMake(16.78, 20.23)];
                    [bezier7Path addLineToPoint: CGPointMake(16.78, 21.16)];
                    [bezier7Path addCurveToPoint: CGPointMake(16.86, 21.31) controlPoint1: CGPointMake(16.78, 21.23) controlPoint2: CGPointMake(16.81, 21.28)];
                    [bezier7Path addCurveToPoint: CGPointMake(17.1, 21.35) controlPoint1: CGPointMake(16.92, 21.34) controlPoint2: CGPointMake(16.99, 21.35)];
                    [bezier7Path addCurveToPoint: CGPointMake(17.35, 21.3) controlPoint1: CGPointMake(17.2, 21.35) controlPoint2: CGPointMake(17.28, 21.34)];
                    [bezier7Path addCurveToPoint: CGPointMake(17.44, 21.15) controlPoint1: CGPointMake(17.41, 21.27) controlPoint2: CGPointMake(17.44, 21.22)];
                    [bezier7Path addLineToPoint: CGPointMake(17.44, 20.31)];
                    [bezier7Path addLineToPoint: CGPointMake(17.43, 20.31)];
                    [bezier7Path closePath];
                    bezier7Path.miterLimit = 4;

                    [fillColor setFill];
                    [bezier7Path fill];


                    //// Bezier 8 Drawing
                    UIBezierPath* bezier8Path = [UIBezierPath bezierPath];
                    [bezier8Path moveToPoint: CGPointMake(19.5, 20.61)];
                    [bezier8Path addCurveToPoint: CGPointMake(19.67, 20.69) controlPoint1: CGPointMake(19.57, 20.63) controlPoint2: CGPointMake(19.62, 20.65)];
                    [bezier8Path addCurveToPoint: CGPointMake(19.75, 20.85) controlPoint1: CGPointMake(19.71, 20.73) controlPoint2: CGPointMake(19.74, 20.78)];
                    [bezier8Path addCurveToPoint: CGPointMake(19.78, 21.11) controlPoint1: CGPointMake(19.77, 20.92) controlPoint2: CGPointMake(19.78, 21.01)];
                    [bezier8Path addCurveToPoint: CGPointMake(19.74, 21.37) controlPoint1: CGPointMake(19.78, 21.22) controlPoint2: CGPointMake(19.77, 21.3)];
                    [bezier8Path addCurveToPoint: CGPointMake(19.62, 21.54) controlPoint1: CGPointMake(19.72, 21.44) controlPoint2: CGPointMake(19.68, 21.5)];
                    [bezier8Path addCurveToPoint: CGPointMake(19.39, 21.63) controlPoint1: CGPointMake(19.56, 21.58) controlPoint2: CGPointMake(19.49, 21.61)];
                    [bezier8Path addCurveToPoint: CGPointMake(19.03, 21.66) controlPoint1: CGPointMake(19.29, 21.65) controlPoint2: CGPointMake(19.17, 21.66)];
                    [bezier8Path addLineToPoint: CGPointMake(18.95, 21.66)];
                    [bezier8Path addCurveToPoint: CGPointMake(18.77, 21.65) controlPoint1: CGPointMake(18.89, 21.66) controlPoint2: CGPointMake(18.83, 21.66)];
                    [bezier8Path addCurveToPoint: CGPointMake(18.59, 21.62) controlPoint1: CGPointMake(18.7, 21.65) controlPoint2: CGPointMake(18.64, 21.64)];
                    [bezier8Path addCurveToPoint: CGPointMake(18.45, 21.54) controlPoint1: CGPointMake(18.53, 21.6) controlPoint2: CGPointMake(18.49, 21.58)];
                    [bezier8Path addCurveToPoint: CGPointMake(18.39, 21.4) controlPoint1: CGPointMake(18.41, 21.51) controlPoint2: CGPointMake(18.39, 21.46)];
                    [bezier8Path addLineToPoint: CGPointMake(18.39, 21.39)];
                    [bezier8Path addCurveToPoint: CGPointMake(18.44, 21.29) controlPoint1: CGPointMake(18.39, 21.35) controlPoint2: CGPointMake(18.41, 21.31)];
                    [bezier8Path addCurveToPoint: CGPointMake(18.55, 21.25) controlPoint1: CGPointMake(18.47, 21.26) controlPoint2: CGPointMake(18.51, 21.25)];
                    [bezier8Path addLineToPoint: CGPointMake(18.55, 21.25)];
                    [bezier8Path addCurveToPoint: CGPointMake(18.63, 21.26) controlPoint1: CGPointMake(18.58, 21.25) controlPoint2: CGPointMake(18.61, 21.26)];
                    [bezier8Path addCurveToPoint: CGPointMake(18.68, 21.28) controlPoint1: CGPointMake(18.65, 21.27) controlPoint2: CGPointMake(18.67, 21.27)];
                    [bezier8Path addCurveToPoint: CGPointMake(18.72, 21.31) controlPoint1: CGPointMake(18.69, 21.29) controlPoint2: CGPointMake(18.71, 21.3)];
                    [bezier8Path addCurveToPoint: CGPointMake(18.78, 21.33) controlPoint1: CGPointMake(18.73, 21.32) controlPoint2: CGPointMake(18.75, 21.33)];
                    [bezier8Path addCurveToPoint: CGPointMake(18.88, 21.35) controlPoint1: CGPointMake(18.81, 21.34) controlPoint2: CGPointMake(18.84, 21.34)];
                    [bezier8Path addCurveToPoint: CGPointMake(19.06, 21.36) controlPoint1: CGPointMake(18.92, 21.36) controlPoint2: CGPointMake(18.98, 21.36)];
                    [bezier8Path addCurveToPoint: CGPointMake(19.24, 21.34) controlPoint1: CGPointMake(19.13, 21.36) controlPoint2: CGPointMake(19.19, 21.36)];
                    [bezier8Path addCurveToPoint: CGPointMake(19.35, 21.29) controlPoint1: CGPointMake(19.28, 21.33) controlPoint2: CGPointMake(19.32, 21.31)];
                    [bezier8Path addCurveToPoint: CGPointMake(19.4, 21.2) controlPoint1: CGPointMake(19.37, 21.27) controlPoint2: CGPointMake(19.39, 21.24)];
                    [bezier8Path addCurveToPoint: CGPointMake(19.41, 21.08) controlPoint1: CGPointMake(19.41, 21.17) controlPoint2: CGPointMake(19.41, 21.13)];
                    [bezier8Path addCurveToPoint: CGPointMake(19.38, 20.91) controlPoint1: CGPointMake(19.41, 21) controlPoint2: CGPointMake(19.4, 20.94)];
                    [bezier8Path addCurveToPoint: CGPointMake(19.26, 20.86) controlPoint1: CGPointMake(19.36, 20.88) controlPoint2: CGPointMake(19.32, 20.86)];
                    [bezier8Path addLineToPoint: CGPointMake(18.65, 20.86)];
                    [bezier8Path addCurveToPoint: CGPointMake(18.52, 20.85) controlPoint1: CGPointMake(18.6, 20.86) controlPoint2: CGPointMake(18.55, 20.86)];
                    [bezier8Path addCurveToPoint: CGPointMake(18.45, 20.82) controlPoint1: CGPointMake(18.49, 20.85) controlPoint2: CGPointMake(18.46, 20.83)];
                    [bezier8Path addCurveToPoint: CGPointMake(18.42, 20.75) controlPoint1: CGPointMake(18.43, 20.8) controlPoint2: CGPointMake(18.42, 20.78)];
                    [bezier8Path addCurveToPoint: CGPointMake(18.41, 20.64) controlPoint1: CGPointMake(18.42, 20.72) controlPoint2: CGPointMake(18.41, 20.69)];
                    [bezier8Path addLineToPoint: CGPointMake(18.41, 19.96)];
                    [bezier8Path addCurveToPoint: CGPointMake(18.45, 19.84) controlPoint1: CGPointMake(18.41, 19.91) controlPoint2: CGPointMake(18.43, 19.87)];
                    [bezier8Path addCurveToPoint: CGPointMake(18.6, 19.8) controlPoint1: CGPointMake(18.48, 19.81) controlPoint2: CGPointMake(18.53, 19.8)];
                    [bezier8Path addCurveToPoint: CGPointMake(18.71, 19.8) controlPoint1: CGPointMake(18.62, 19.8) controlPoint2: CGPointMake(18.66, 19.8)];
                    [bezier8Path addCurveToPoint: CGPointMake(18.87, 19.8) controlPoint1: CGPointMake(18.76, 19.8) controlPoint2: CGPointMake(18.82, 19.8)];
                    [bezier8Path addCurveToPoint: CGPointMake(19.06, 19.8) controlPoint1: CGPointMake(18.93, 19.8) controlPoint2: CGPointMake(18.99, 19.8)];
                    [bezier8Path addCurveToPoint: CGPointMake(19.24, 19.8) controlPoint1: CGPointMake(19.13, 19.8) controlPoint2: CGPointMake(19.19, 19.8)];
                    [bezier8Path addCurveToPoint: CGPointMake(19.38, 19.8) controlPoint1: CGPointMake(19.3, 19.8) controlPoint2: CGPointMake(19.35, 19.8)];
                    [bezier8Path addCurveToPoint: CGPointMake(19.46, 19.8) controlPoint1: CGPointMake(19.42, 19.8) controlPoint2: CGPointMake(19.45, 19.8)];
                    [bezier8Path addCurveToPoint: CGPointMake(19.52, 19.81) controlPoint1: CGPointMake(19.48, 19.8) controlPoint2: CGPointMake(19.5, 19.8)];
                    [bezier8Path addCurveToPoint: CGPointMake(19.59, 19.83) controlPoint1: CGPointMake(19.55, 19.81) controlPoint2: CGPointMake(19.57, 19.82)];
                    [bezier8Path addCurveToPoint: CGPointMake(19.64, 19.88) controlPoint1: CGPointMake(19.61, 19.84) controlPoint2: CGPointMake(19.63, 19.86)];
                    [bezier8Path addCurveToPoint: CGPointMake(19.66, 19.95) controlPoint1: CGPointMake(19.65, 19.9) controlPoint2: CGPointMake(19.66, 19.92)];
                    [bezier8Path addLineToPoint: CGPointMake(19.66, 19.96)];
                    [bezier8Path addCurveToPoint: CGPointMake(19.64, 20.04) controlPoint1: CGPointMake(19.66, 20) controlPoint2: CGPointMake(19.65, 20.02)];
                    [bezier8Path addCurveToPoint: CGPointMake(19.6, 20.08) controlPoint1: CGPointMake(19.63, 20.06) controlPoint2: CGPointMake(19.61, 20.08)];
                    [bezier8Path addCurveToPoint: CGPointMake(19.53, 20.1) controlPoint1: CGPointMake(19.58, 20.09) controlPoint2: CGPointMake(19.56, 20.09)];
                    [bezier8Path addCurveToPoint: CGPointMake(19.45, 20.1) controlPoint1: CGPointMake(19.5, 20.1) controlPoint2: CGPointMake(19.48, 20.1)];
                    [bezier8Path addLineToPoint: CGPointMake(18.74, 20.1)];
                    [bezier8Path addLineToPoint: CGPointMake(18.74, 20.56)];
                    [bezier8Path addLineToPoint: CGPointMake(19.22, 20.56)];
                    [bezier8Path addCurveToPoint: CGPointMake(19.5, 20.61) controlPoint1: CGPointMake(19.35, 20.58) controlPoint2: CGPointMake(19.43, 20.59)];
                    [bezier8Path closePath];
                    bezier8Path.miterLimit = 4;

                    [fillColor setFill];
                    [bezier8Path fill];


                    //// Bezier 9 Drawing
                    UIBezierPath* bezier9Path = [UIBezierPath bezierPath];
                    [bezier9Path moveToPoint: CGPointMake(21.08, 19.81)];
                    [bezier9Path addCurveToPoint: CGPointMake(21.42, 19.84) controlPoint1: CGPointMake(21.21, 19.81) controlPoint2: CGPointMake(21.33, 19.82)];
                    [bezier9Path addCurveToPoint: CGPointMake(21.64, 19.93) controlPoint1: CGPointMake(21.51, 19.86) controlPoint2: CGPointMake(21.59, 19.89)];
                    [bezier9Path addCurveToPoint: CGPointMake(21.76, 20.09) controlPoint1: CGPointMake(21.7, 19.97) controlPoint2: CGPointMake(21.74, 20.03)];
                    [bezier9Path addCurveToPoint: CGPointMake(21.8, 20.33) controlPoint1: CGPointMake(21.79, 20.16) controlPoint2: CGPointMake(21.8, 20.24)];
                    [bezier9Path addLineToPoint: CGPointMake(21.8, 20.34)];
                    [bezier9Path addCurveToPoint: CGPointMake(21.77, 20.6) controlPoint1: CGPointMake(21.8, 20.44) controlPoint2: CGPointMake(21.79, 20.53)];
                    [bezier9Path addCurveToPoint: CGPointMake(21.67, 20.77) controlPoint1: CGPointMake(21.75, 20.67) controlPoint2: CGPointMake(21.71, 20.73)];
                    [bezier9Path addCurveToPoint: CGPointMake(21.49, 20.86) controlPoint1: CGPointMake(21.62, 20.81) controlPoint2: CGPointMake(21.56, 20.84)];
                    [bezier9Path addCurveToPoint: CGPointMake(21.21, 20.89) controlPoint1: CGPointMake(21.42, 20.88) controlPoint2: CGPointMake(21.32, 20.89)];
                    [bezier9Path addCurveToPoint: CGPointMake(20.97, 20.89) controlPoint1: CGPointMake(21.11, 20.89) controlPoint2: CGPointMake(21.03, 20.89)];
                    [bezier9Path addCurveToPoint: CGPointMake(20.82, 20.92) controlPoint1: CGPointMake(20.91, 20.89) controlPoint2: CGPointMake(20.85, 20.9)];
                    [bezier9Path addCurveToPoint: CGPointMake(20.74, 21.01) controlPoint1: CGPointMake(20.78, 20.94) controlPoint2: CGPointMake(20.76, 20.97)];
                    [bezier9Path addCurveToPoint: CGPointMake(20.72, 21.18) controlPoint1: CGPointMake(20.73, 21.05) controlPoint2: CGPointMake(20.72, 21.11)];
                    [bezier9Path addLineToPoint: CGPointMake(20.72, 21.34)];
                    [bezier9Path addLineToPoint: CGPointMake(21.61, 21.34)];
                    [bezier9Path addCurveToPoint: CGPointMake(21.68, 21.35) controlPoint1: CGPointMake(21.63, 21.34) controlPoint2: CGPointMake(21.66, 21.34)];
                    [bezier9Path addCurveToPoint: CGPointMake(21.74, 21.38) controlPoint1: CGPointMake(21.7, 21.36) controlPoint2: CGPointMake(21.72, 21.36)];
                    [bezier9Path addCurveToPoint: CGPointMake(21.78, 21.43) controlPoint1: CGPointMake(21.76, 21.39) controlPoint2: CGPointMake(21.77, 21.41)];
                    [bezier9Path addCurveToPoint: CGPointMake(21.8, 21.5) controlPoint1: CGPointMake(21.79, 21.45) controlPoint2: CGPointMake(21.8, 21.47)];
                    [bezier9Path addCurveToPoint: CGPointMake(21.78, 21.57) controlPoint1: CGPointMake(21.8, 21.53) controlPoint2: CGPointMake(21.79, 21.55)];
                    [bezier9Path addCurveToPoint: CGPointMake(21.74, 21.61) controlPoint1: CGPointMake(21.77, 21.59) controlPoint2: CGPointMake(21.76, 21.6)];
                    [bezier9Path addCurveToPoint: CGPointMake(21.68, 21.64) controlPoint1: CGPointMake(21.72, 21.62) controlPoint2: CGPointMake(21.7, 21.63)];
                    [bezier9Path addCurveToPoint: CGPointMake(21.61, 21.65) controlPoint1: CGPointMake(21.66, 21.65) controlPoint2: CGPointMake(21.63, 21.65)];
                    [bezier9Path addLineToPoint: CGPointMake(20.57, 21.65)];
                    [bezier9Path addCurveToPoint: CGPointMake(20.42, 21.61) controlPoint1: CGPointMake(20.49, 21.65) controlPoint2: CGPointMake(20.44, 21.64)];
                    [bezier9Path addCurveToPoint: CGPointMake(20.37, 21.49) controlPoint1: CGPointMake(20.39, 21.58) controlPoint2: CGPointMake(20.37, 21.55)];
                    [bezier9Path addLineToPoint: CGPointMake(20.37, 21.12)];
                    [bezier9Path addCurveToPoint: CGPointMake(20.41, 20.87) controlPoint1: CGPointMake(20.37, 21.02) controlPoint2: CGPointMake(20.38, 20.94)];
                    [bezier9Path addCurveToPoint: CGPointMake(20.52, 20.71) controlPoint1: CGPointMake(20.44, 20.8) controlPoint2: CGPointMake(20.47, 20.75)];
                    [bezier9Path addCurveToPoint: CGPointMake(20.7, 20.62) controlPoint1: CGPointMake(20.57, 20.67) controlPoint2: CGPointMake(20.63, 20.64)];
                    [bezier9Path addCurveToPoint: CGPointMake(20.94, 20.59) controlPoint1: CGPointMake(20.77, 20.6) controlPoint2: CGPointMake(20.85, 20.59)];
                    [bezier9Path addLineToPoint: CGPointMake(21.2, 20.58)];
                    [bezier9Path addCurveToPoint: CGPointMake(21.32, 20.57) controlPoint1: CGPointMake(21.25, 20.58) controlPoint2: CGPointMake(21.29, 20.58)];
                    [bezier9Path addCurveToPoint: CGPointMake(21.4, 20.53) controlPoint1: CGPointMake(21.35, 20.56) controlPoint2: CGPointMake(21.38, 20.55)];
                    [bezier9Path addCurveToPoint: CGPointMake(21.44, 20.46) controlPoint1: CGPointMake(21.42, 20.51) controlPoint2: CGPointMake(21.43, 20.49)];
                    [bezier9Path addCurveToPoint: CGPointMake(21.45, 20.35) controlPoint1: CGPointMake(21.45, 20.43) controlPoint2: CGPointMake(21.45, 20.39)];
                    [bezier9Path addLineToPoint: CGPointMake(21.45, 20.34)];
                    [bezier9Path addCurveToPoint: CGPointMake(21.44, 20.22) controlPoint1: CGPointMake(21.45, 20.29) controlPoint2: CGPointMake(21.44, 20.25)];
                    [bezier9Path addCurveToPoint: CGPointMake(21.38, 20.14) controlPoint1: CGPointMake(21.43, 20.19) controlPoint2: CGPointMake(21.41, 20.16)];
                    [bezier9Path addCurveToPoint: CGPointMake(21.26, 20.1) controlPoint1: CGPointMake(21.35, 20.12) controlPoint2: CGPointMake(21.32, 20.11)];
                    [bezier9Path addCurveToPoint: CGPointMake(21.07, 20.09) controlPoint1: CGPointMake(21.21, 20.09) controlPoint2: CGPointMake(21.15, 20.09)];
                    [bezier9Path addCurveToPoint: CGPointMake(20.9, 20.1) controlPoint1: CGPointMake(21.01, 20.09) controlPoint2: CGPointMake(20.95, 20.09)];
                    [bezier9Path addCurveToPoint: CGPointMake(20.77, 20.13) controlPoint1: CGPointMake(20.85, 20.11) controlPoint2: CGPointMake(20.81, 20.12)];
                    [bezier9Path addCurveToPoint: CGPointMake(20.68, 20.16) controlPoint1: CGPointMake(20.73, 20.14) controlPoint2: CGPointMake(20.7, 20.15)];
                    [bezier9Path addCurveToPoint: CGPointMake(20.59, 20.18) controlPoint1: CGPointMake(20.65, 20.17) controlPoint2: CGPointMake(20.62, 20.18)];
                    [bezier9Path addLineToPoint: CGPointMake(20.58, 20.18)];
                    [bezier9Path addCurveToPoint: CGPointMake(20.47, 20.13) controlPoint1: CGPointMake(20.54, 20.18) controlPoint2: CGPointMake(20.5, 20.16)];
                    [bezier9Path addCurveToPoint: CGPointMake(20.43, 20.02) controlPoint1: CGPointMake(20.44, 20.1) controlPoint2: CGPointMake(20.43, 20.06)];
                    [bezier9Path addLineToPoint: CGPointMake(20.43, 20.01)];
                    [bezier9Path addCurveToPoint: CGPointMake(20.49, 19.91) controlPoint1: CGPointMake(20.43, 19.97) controlPoint2: CGPointMake(20.45, 19.93)];
                    [bezier9Path addCurveToPoint: CGPointMake(20.63, 19.84) controlPoint1: CGPointMake(20.53, 19.88) controlPoint2: CGPointMake(20.57, 19.86)];
                    [bezier9Path addCurveToPoint: CGPointMake(20.84, 19.8) controlPoint1: CGPointMake(20.69, 19.82) controlPoint2: CGPointMake(20.76, 19.81)];
                    [bezier9Path addCurveToPoint: CGPointMake(21.08, 19.81) controlPoint1: CGPointMake(20.91, 19.81) controlPoint2: CGPointMake(20.99, 19.81)];
                    [bezier9Path closePath];
                    bezier9Path.miterLimit = 4;

                    [fillColor setFill];
                    [bezier9Path fill];


                    //// Bezier 10 Drawing
                    UIBezierPath* bezier10Path = [UIBezierPath bezierPath];
                    [bezier10Path moveToPoint: CGPointMake(23.7, 21.16)];
                    [bezier10Path addCurveToPoint: CGPointMake(23.68, 21.37) controlPoint1: CGPointMake(23.7, 21.24) controlPoint2: CGPointMake(23.69, 21.31)];
                    [bezier10Path addCurveToPoint: CGPointMake(23.58, 21.53) controlPoint1: CGPointMake(23.66, 21.43) controlPoint2: CGPointMake(23.63, 21.49)];
                    [bezier10Path addCurveToPoint: CGPointMake(23.37, 21.63) controlPoint1: CGPointMake(23.53, 21.57) controlPoint2: CGPointMake(23.46, 21.61)];
                    [bezier10Path addCurveToPoint: CGPointMake(23, 21.66) controlPoint1: CGPointMake(23.28, 21.65) controlPoint2: CGPointMake(23.15, 21.66)];
                    [bezier10Path addCurveToPoint: CGPointMake(22.65, 21.62) controlPoint1: CGPointMake(22.86, 21.66) controlPoint2: CGPointMake(22.74, 21.65)];
                    [bezier10Path addCurveToPoint: CGPointMake(22.45, 21.52) controlPoint1: CGPointMake(22.56, 21.59) controlPoint2: CGPointMake(22.49, 21.56)];
                    [bezier10Path addCurveToPoint: CGPointMake(22.35, 21.36) controlPoint1: CGPointMake(22.4, 21.48) controlPoint2: CGPointMake(22.37, 21.42)];
                    [bezier10Path addCurveToPoint: CGPointMake(22.33, 21.16) controlPoint1: CGPointMake(22.33, 21.3) controlPoint2: CGPointMake(22.33, 21.23)];
                    [bezier10Path addCurveToPoint: CGPointMake(22.33, 21.01) controlPoint1: CGPointMake(22.33, 21.1) controlPoint2: CGPointMake(22.33, 21.05)];
                    [bezier10Path addCurveToPoint: CGPointMake(22.36, 20.91) controlPoint1: CGPointMake(22.33, 20.97) controlPoint2: CGPointMake(22.34, 20.94)];
                    [bezier10Path addCurveToPoint: CGPointMake(22.44, 20.83) controlPoint1: CGPointMake(22.38, 20.88) controlPoint2: CGPointMake(22.4, 20.86)];
                    [bezier10Path addCurveToPoint: CGPointMake(22.6, 20.75) controlPoint1: CGPointMake(22.48, 20.81) controlPoint2: CGPointMake(22.53, 20.78)];
                    [bezier10Path addCurveToPoint: CGPointMake(22.45, 20.69) controlPoint1: CGPointMake(22.53, 20.73) controlPoint2: CGPointMake(22.48, 20.71)];
                    [bezier10Path addCurveToPoint: CGPointMake(22.37, 20.62) controlPoint1: CGPointMake(22.41, 20.67) controlPoint2: CGPointMake(22.39, 20.65)];
                    [bezier10Path addCurveToPoint: CGPointMake(22.34, 20.51) controlPoint1: CGPointMake(22.35, 20.59) controlPoint2: CGPointMake(22.34, 20.55)];
                    [bezier10Path addCurveToPoint: CGPointMake(22.33, 20.33) controlPoint1: CGPointMake(22.34, 20.46) controlPoint2: CGPointMake(22.33, 20.4)];
                    [bezier10Path addCurveToPoint: CGPointMake(22.37, 20.08) controlPoint1: CGPointMake(22.33, 20.23) controlPoint2: CGPointMake(22.34, 20.15)];
                    [bezier10Path addCurveToPoint: CGPointMake(22.49, 19.92) controlPoint1: CGPointMake(22.39, 20.02) controlPoint2: CGPointMake(22.43, 19.96)];
                    [bezier10Path addCurveToPoint: CGPointMake(22.7, 19.84) controlPoint1: CGPointMake(22.54, 19.88) controlPoint2: CGPointMake(22.62, 19.85)];
                    [bezier10Path addCurveToPoint: CGPointMake(23.02, 19.81) controlPoint1: CGPointMake(22.79, 19.82) controlPoint2: CGPointMake(22.89, 19.81)];
                    [bezier10Path addCurveToPoint: CGPointMake(23.35, 19.84) controlPoint1: CGPointMake(23.15, 19.81) controlPoint2: CGPointMake(23.26, 19.82)];
                    [bezier10Path addCurveToPoint: CGPointMake(23.57, 19.92) controlPoint1: CGPointMake(23.44, 19.86) controlPoint2: CGPointMake(23.51, 19.89)];
                    [bezier10Path addCurveToPoint: CGPointMake(23.69, 20.07) controlPoint1: CGPointMake(23.62, 19.96) controlPoint2: CGPointMake(23.66, 20.01)];
                    [bezier10Path addCurveToPoint: CGPointMake(23.73, 20.31) controlPoint1: CGPointMake(23.72, 20.14) controlPoint2: CGPointMake(23.73, 20.22)];
                    [bezier10Path addCurveToPoint: CGPointMake(23.72, 20.49) controlPoint1: CGPointMake(23.73, 20.39) controlPoint2: CGPointMake(23.73, 20.45)];
                    [bezier10Path addCurveToPoint: CGPointMake(23.69, 20.6) controlPoint1: CGPointMake(23.72, 20.54) controlPoint2: CGPointMake(23.71, 20.57)];
                    [bezier10Path addCurveToPoint: CGPointMake(23.61, 20.67) controlPoint1: CGPointMake(23.67, 20.63) controlPoint2: CGPointMake(23.65, 20.65)];
                    [bezier10Path addCurveToPoint: CGPointMake(23.47, 20.73) controlPoint1: CGPointMake(23.58, 20.69) controlPoint2: CGPointMake(23.53, 20.71)];
                    [bezier10Path addCurveToPoint: CGPointMake(23.62, 20.8) controlPoint1: CGPointMake(23.53, 20.76) controlPoint2: CGPointMake(23.58, 20.78)];
                    [bezier10Path addCurveToPoint: CGPointMake(23.7, 20.87) controlPoint1: CGPointMake(23.65, 20.82) controlPoint2: CGPointMake(23.68, 20.85)];
                    [bezier10Path addCurveToPoint: CGPointMake(23.73, 20.97) controlPoint1: CGPointMake(23.72, 20.9) controlPoint2: CGPointMake(23.72, 20.93)];
                    [bezier10Path addCurveToPoint: CGPointMake(23.7, 21.16) controlPoint1: CGPointMake(23.7, 21.03) controlPoint2: CGPointMake(23.7, 21.09)];
                    [bezier10Path closePath];
                    [bezier10Path moveToPoint: CGPointMake(23.35, 21.13)];
                    [bezier10Path addCurveToPoint: CGPointMake(23.34, 21.11) controlPoint1: CGPointMake(23.35, 21.13) controlPoint2: CGPointMake(23.35, 21.12)];
                    [bezier10Path addCurveToPoint: CGPointMake(23.3, 21.04) controlPoint1: CGPointMake(23.33, 21.09) controlPoint2: CGPointMake(23.32, 21.07)];
                    [bezier10Path addCurveToPoint: CGPointMake(23.2, 20.96) controlPoint1: CGPointMake(23.28, 21.02) controlPoint2: CGPointMake(23.24, 20.99)];
                    [bezier10Path addCurveToPoint: CGPointMake(23.02, 20.88) controlPoint1: CGPointMake(23.16, 20.93) controlPoint2: CGPointMake(23.09, 20.9)];
                    [bezier10Path addCurveToPoint: CGPointMake(22.83, 20.97) controlPoint1: CGPointMake(22.94, 20.91) controlPoint2: CGPointMake(22.88, 20.94)];
                    [bezier10Path addCurveToPoint: CGPointMake(22.73, 21.06) controlPoint1: CGPointMake(22.79, 21) controlPoint2: CGPointMake(22.76, 21.03)];
                    [bezier10Path addCurveToPoint: CGPointMake(22.69, 21.13) controlPoint1: CGPointMake(22.71, 21.09) controlPoint2: CGPointMake(22.69, 21.11)];
                    [bezier10Path addCurveToPoint: CGPointMake(22.68, 21.16) controlPoint1: CGPointMake(22.68, 21.15) controlPoint2: CGPointMake(22.68, 21.16)];
                    [bezier10Path addLineToPoint: CGPointMake(22.68, 21.17)];
                    [bezier10Path addCurveToPoint: CGPointMake(22.7, 21.26) controlPoint1: CGPointMake(22.68, 21.21) controlPoint2: CGPointMake(22.69, 21.24)];
                    [bezier10Path addCurveToPoint: CGPointMake(22.75, 21.32) controlPoint1: CGPointMake(22.71, 21.29) controlPoint2: CGPointMake(22.73, 21.31)];
                    [bezier10Path addCurveToPoint: CGPointMake(22.86, 21.35) controlPoint1: CGPointMake(22.78, 21.33) controlPoint2: CGPointMake(22.82, 21.35)];
                    [bezier10Path addCurveToPoint: CGPointMake(23.04, 21.36) controlPoint1: CGPointMake(22.9, 21.36) controlPoint2: CGPointMake(22.96, 21.36)];
                    [bezier10Path addCurveToPoint: CGPointMake(23.2, 21.35) controlPoint1: CGPointMake(23.1, 21.36) controlPoint2: CGPointMake(23.15, 21.36)];
                    [bezier10Path addCurveToPoint: CGPointMake(23.3, 21.32) controlPoint1: CGPointMake(23.24, 21.34) controlPoint2: CGPointMake(23.27, 21.33)];
                    [bezier10Path addCurveToPoint: CGPointMake(23.35, 21.26) controlPoint1: CGPointMake(23.32, 21.31) controlPoint2: CGPointMake(23.34, 21.28)];
                    [bezier10Path addCurveToPoint: CGPointMake(23.37, 21.17) controlPoint1: CGPointMake(23.36, 21.24) controlPoint2: CGPointMake(23.37, 21.21)];
                    [bezier10Path addLineToPoint: CGPointMake(23.37, 21.13)];
                    [bezier10Path addLineToPoint: CGPointMake(23.35, 21.13)];
                    [bezier10Path closePath];
                    [bezier10Path moveToPoint: CGPointMake(23.01, 20.59)];
                    [bezier10Path addCurveToPoint: CGPointMake(23.2, 20.54) controlPoint1: CGPointMake(23.09, 20.57) controlPoint2: CGPointMake(23.15, 20.55)];
                    [bezier10Path addCurveToPoint: CGPointMake(23.3, 20.49) controlPoint1: CGPointMake(23.24, 20.53) controlPoint2: CGPointMake(23.28, 20.51)];
                    [bezier10Path addCurveToPoint: CGPointMake(23.34, 20.41) controlPoint1: CGPointMake(23.32, 20.47) controlPoint2: CGPointMake(23.33, 20.44)];
                    [bezier10Path addCurveToPoint: CGPointMake(23.35, 20.28) controlPoint1: CGPointMake(23.34, 20.38) controlPoint2: CGPointMake(23.35, 20.33)];
                    [bezier10Path addCurveToPoint: CGPointMake(23.33, 20.18) controlPoint1: CGPointMake(23.35, 20.24) controlPoint2: CGPointMake(23.34, 20.21)];
                    [bezier10Path addCurveToPoint: CGPointMake(23.26, 20.13) controlPoint1: CGPointMake(23.31, 20.16) controlPoint2: CGPointMake(23.29, 20.14)];
                    [bezier10Path addCurveToPoint: CGPointMake(23.15, 20.11) controlPoint1: CGPointMake(23.23, 20.12) controlPoint2: CGPointMake(23.19, 20.11)];
                    [bezier10Path addCurveToPoint: CGPointMake(23.01, 20.11) controlPoint1: CGPointMake(23.11, 20.11) controlPoint2: CGPointMake(23.06, 20.11)];
                    [bezier10Path addCurveToPoint: CGPointMake(22.86, 20.12) controlPoint1: CGPointMake(22.95, 20.11) controlPoint2: CGPointMake(22.9, 20.11)];
                    [bezier10Path addCurveToPoint: CGPointMake(22.76, 20.15) controlPoint1: CGPointMake(22.82, 20.12) controlPoint2: CGPointMake(22.79, 20.13)];
                    [bezier10Path addCurveToPoint: CGPointMake(22.7, 20.22) controlPoint1: CGPointMake(22.73, 20.17) controlPoint2: CGPointMake(22.72, 20.19)];
                    [bezier10Path addCurveToPoint: CGPointMake(22.68, 20.34) controlPoint1: CGPointMake(22.69, 20.25) controlPoint2: CGPointMake(22.68, 20.29)];
                    [bezier10Path addCurveToPoint: CGPointMake(22.68, 20.45) controlPoint1: CGPointMake(22.68, 20.39) controlPoint2: CGPointMake(22.68, 20.42)];
                    [bezier10Path addCurveToPoint: CGPointMake(22.72, 20.52) controlPoint1: CGPointMake(22.68, 20.48) controlPoint2: CGPointMake(22.7, 20.5)];
                    [bezier10Path addCurveToPoint: CGPointMake(22.82, 20.57) controlPoint1: CGPointMake(22.74, 20.54) controlPoint2: CGPointMake(22.77, 20.55)];
                    [bezier10Path addCurveToPoint: CGPointMake(23.01, 20.59) controlPoint1: CGPointMake(22.87, 20.56) controlPoint2: CGPointMake(22.93, 20.57)];
                    [bezier10Path closePath];
                    bezier10Path.miterLimit = 4;

                    [fillColor setFill];
                    [bezier10Path fill];


                    //// Bezier 11 Drawing
                    UIBezierPath* bezier11Path = [UIBezierPath bezierPath];
                    [bezier11Path moveToPoint: CGPointMake(25.71, 21.16)];
                    [bezier11Path addLineToPoint: CGPointMake(25.71, 21.16)];
                    [bezier11Path addCurveToPoint: CGPointMake(25.66, 21.4) controlPoint1: CGPointMake(25.71, 21.26) controlPoint2: CGPointMake(25.69, 21.34)];
                    [bezier11Path addCurveToPoint: CGPointMake(25.52, 21.56) controlPoint1: CGPointMake(25.63, 21.46) controlPoint2: CGPointMake(25.58, 21.51)];
                    [bezier11Path addCurveToPoint: CGPointMake(25.3, 21.64) controlPoint1: CGPointMake(25.46, 21.6) controlPoint2: CGPointMake(25.39, 21.62)];
                    [bezier11Path addCurveToPoint: CGPointMake(25.02, 21.66) controlPoint1: CGPointMake(25.22, 21.66) controlPoint2: CGPointMake(25.12, 21.66)];
                    [bezier11Path addCurveToPoint: CGPointMake(24.73, 21.63) controlPoint1: CGPointMake(24.91, 21.66) controlPoint2: CGPointMake(24.82, 21.65)];
                    [bezier11Path addCurveToPoint: CGPointMake(24.52, 21.54) controlPoint1: CGPointMake(24.65, 21.61) controlPoint2: CGPointMake(24.58, 21.58)];
                    [bezier11Path addCurveToPoint: CGPointMake(24.39, 21.39) controlPoint1: CGPointMake(24.46, 21.5) controlPoint2: CGPointMake(24.42, 21.45)];
                    [bezier11Path addCurveToPoint: CGPointMake(24.34, 21.17) controlPoint1: CGPointMake(24.36, 21.33) controlPoint2: CGPointMake(24.34, 21.25)];
                    [bezier11Path addLineToPoint: CGPointMake(24.34, 20.28)];
                    [bezier11Path addCurveToPoint: CGPointMake(24.52, 19.92) controlPoint1: CGPointMake(24.34, 20.12) controlPoint2: CGPointMake(24.4, 20)];
                    [bezier11Path addCurveToPoint: CGPointMake(25.03, 19.8) controlPoint1: CGPointMake(24.64, 19.84) controlPoint2: CGPointMake(24.81, 19.8)];
                    [bezier11Path addCurveToPoint: CGPointMake(25.31, 19.83) controlPoint1: CGPointMake(25.13, 19.8) controlPoint2: CGPointMake(25.22, 19.81)];
                    [bezier11Path addCurveToPoint: CGPointMake(25.52, 19.92) controlPoint1: CGPointMake(25.39, 19.85) controlPoint2: CGPointMake(25.47, 19.88)];
                    [bezier11Path addCurveToPoint: CGPointMake(25.66, 20.07) controlPoint1: CGPointMake(25.58, 19.96) controlPoint2: CGPointMake(25.62, 20.01)];
                    [bezier11Path addCurveToPoint: CGPointMake(25.71, 20.28) controlPoint1: CGPointMake(25.69, 20.13) controlPoint2: CGPointMake(25.71, 20.2)];
                    [bezier11Path addLineToPoint: CGPointMake(25.71, 21.16)];
                    [bezier11Path closePath];
                    [bezier11Path moveToPoint: CGPointMake(25.35, 20.31)];
                    [bezier11Path addCurveToPoint: CGPointMake(25.27, 20.16) controlPoint1: CGPointMake(25.35, 20.25) controlPoint2: CGPointMake(25.32, 20.2)];
                    [bezier11Path addCurveToPoint: CGPointMake(25.02, 20.1) controlPoint1: CGPointMake(25.22, 20.12) controlPoint2: CGPointMake(25.13, 20.1)];
                    [bezier11Path addCurveToPoint: CGPointMake(24.77, 20.15) controlPoint1: CGPointMake(24.91, 20.1) controlPoint2: CGPointMake(24.83, 20.12)];
                    [bezier11Path addCurveToPoint: CGPointMake(24.69, 20.29) controlPoint1: CGPointMake(24.72, 20.19) controlPoint2: CGPointMake(24.69, 20.23)];
                    [bezier11Path addLineToPoint: CGPointMake(24.69, 21.16)];
                    [bezier11Path addCurveToPoint: CGPointMake(24.77, 21.31) controlPoint1: CGPointMake(24.69, 21.23) controlPoint2: CGPointMake(24.72, 21.28)];
                    [bezier11Path addCurveToPoint: CGPointMake(25.01, 21.35) controlPoint1: CGPointMake(24.83, 21.34) controlPoint2: CGPointMake(24.9, 21.35)];
                    [bezier11Path addCurveToPoint: CGPointMake(25.26, 21.3) controlPoint1: CGPointMake(25.12, 21.35) controlPoint2: CGPointMake(25.2, 21.34)];
                    [bezier11Path addCurveToPoint: CGPointMake(25.35, 21.15) controlPoint1: CGPointMake(25.32, 21.27) controlPoint2: CGPointMake(25.35, 21.22)];
                    [bezier11Path addLineToPoint: CGPointMake(25.35, 20.31)];
                    [bezier11Path closePath];
                    bezier11Path.miterLimit = 4;

                    [fillColor setFill];
                    [bezier11Path fill];


                    //// Bezier 12 Drawing
                    UIBezierPath* bezier12Path = [UIBezierPath bezierPath];
                    [bezier12Path moveToPoint: CGPointMake(28.92, 20.6)];
                    [bezier12Path addCurveToPoint: CGPointMake(29.04, 20.63) controlPoint1: CGPointMake(28.97, 20.6) controlPoint2: CGPointMake(29.01, 20.61)];
                    [bezier12Path addCurveToPoint: CGPointMake(29.09, 20.74) controlPoint1: CGPointMake(29.08, 20.65) controlPoint2: CGPointMake(29.09, 20.69)];
                    [bezier12Path addCurveToPoint: CGPointMake(29.04, 20.86) controlPoint1: CGPointMake(29.09, 20.79) controlPoint2: CGPointMake(29.07, 20.84)];
                    [bezier12Path addCurveToPoint: CGPointMake(28.92, 20.9) controlPoint1: CGPointMake(29.01, 20.88) controlPoint2: CGPointMake(28.96, 20.9)];
                    [bezier12Path addLineToPoint: CGPointMake(28.86, 20.9)];
                    [bezier12Path addLineToPoint: CGPointMake(28.86, 21.51)];
                    [bezier12Path addCurveToPoint: CGPointMake(28.85, 21.56) controlPoint1: CGPointMake(28.86, 21.53) controlPoint2: CGPointMake(28.85, 21.54)];
                    [bezier12Path addCurveToPoint: CGPointMake(28.82, 21.61) controlPoint1: CGPointMake(28.84, 21.58) controlPoint2: CGPointMake(28.83, 21.6)];
                    [bezier12Path addCurveToPoint: CGPointMake(28.76, 21.65) controlPoint1: CGPointMake(28.8, 21.63) controlPoint2: CGPointMake(28.78, 21.64)];
                    [bezier12Path addCurveToPoint: CGPointMake(28.68, 21.67) controlPoint1: CGPointMake(28.74, 21.66) controlPoint2: CGPointMake(28.71, 21.67)];
                    [bezier12Path addCurveToPoint: CGPointMake(28.6, 21.65) controlPoint1: CGPointMake(28.65, 21.67) controlPoint2: CGPointMake(28.62, 21.67)];
                    [bezier12Path addCurveToPoint: CGPointMake(28.54, 21.61) controlPoint1: CGPointMake(28.58, 21.64) controlPoint2: CGPointMake(28.56, 21.63)];
                    [bezier12Path addCurveToPoint: CGPointMake(28.51, 21.56) controlPoint1: CGPointMake(28.53, 21.6) controlPoint2: CGPointMake(28.52, 21.58)];
                    [bezier12Path addCurveToPoint: CGPointMake(28.5, 21.51) controlPoint1: CGPointMake(28.5, 21.54) controlPoint2: CGPointMake(28.5, 21.53)];
                    [bezier12Path addLineToPoint: CGPointMake(28.5, 20.9)];
                    [bezier12Path addLineToPoint: CGPointMake(27.8, 20.9)];
                    [bezier12Path addCurveToPoint: CGPointMake(27.71, 20.88) controlPoint1: CGPointMake(27.76, 20.9) controlPoint2: CGPointMake(27.73, 20.89)];
                    [bezier12Path addCurveToPoint: CGPointMake(27.69, 20.81) controlPoint1: CGPointMake(27.7, 20.86) controlPoint2: CGPointMake(27.69, 20.84)];
                    [bezier12Path addLineToPoint: CGPointMake(27.69, 19.98)];
                    [bezier12Path addCurveToPoint: CGPointMake(27.7, 19.93) controlPoint1: CGPointMake(27.69, 19.96) controlPoint2: CGPointMake(27.69, 19.94)];
                    [bezier12Path addCurveToPoint: CGPointMake(27.73, 19.88) controlPoint1: CGPointMake(27.71, 19.91) controlPoint2: CGPointMake(27.72, 19.89)];
                    [bezier12Path addCurveToPoint: CGPointMake(27.78, 19.84) controlPoint1: CGPointMake(27.74, 19.87) controlPoint2: CGPointMake(27.76, 19.85)];
                    [bezier12Path addCurveToPoint: CGPointMake(27.86, 19.82) controlPoint1: CGPointMake(27.8, 19.83) controlPoint2: CGPointMake(27.83, 19.82)];
                    [bezier12Path addCurveToPoint: CGPointMake(28, 19.86) controlPoint1: CGPointMake(27.92, 19.82) controlPoint2: CGPointMake(27.97, 19.84)];
                    [bezier12Path addCurveToPoint: CGPointMake(28.05, 19.98) controlPoint1: CGPointMake(28.03, 19.89) controlPoint2: CGPointMake(28.05, 19.93)];
                    [bezier12Path addLineToPoint: CGPointMake(28.05, 20.62)];
                    [bezier12Path addLineToPoint: CGPointMake(28.5, 20.62)];
                    [bezier12Path addLineToPoint: CGPointMake(28.5, 19.98)];
                    [bezier12Path addCurveToPoint: CGPointMake(28.55, 19.87) controlPoint1: CGPointMake(28.5, 19.93) controlPoint2: CGPointMake(28.52, 19.9)];
                    [bezier12Path addCurveToPoint: CGPointMake(28.68, 19.83) controlPoint1: CGPointMake(28.58, 19.84) controlPoint2: CGPointMake(28.62, 19.83)];
                    [bezier12Path addCurveToPoint: CGPointMake(28.81, 19.88) controlPoint1: CGPointMake(28.74, 19.83) controlPoint2: CGPointMake(28.78, 19.85)];
                    [bezier12Path addCurveToPoint: CGPointMake(28.86, 19.99) controlPoint1: CGPointMake(28.84, 19.91) controlPoint2: CGPointMake(28.86, 19.94)];
                    [bezier12Path addLineToPoint: CGPointMake(28.86, 20.63)];
                    [bezier12Path addLineToPoint: CGPointMake(28.92, 20.6)];
                    [bezier12Path addLineToPoint: CGPointMake(28.92, 20.6)];
                    [bezier12Path closePath];
                    bezier12Path.miterLimit = 4;

                    [fillColor setFill];
                    [bezier12Path fill];


                    //// Bezier 13 Drawing
                    UIBezierPath* bezier13Path = [UIBezierPath bezierPath];
                    [bezier13Path moveToPoint: CGPointMake(30.91, 20.6)];
                    [bezier13Path addCurveToPoint: CGPointMake(31.03, 20.63) controlPoint1: CGPointMake(30.96, 20.6) controlPoint2: CGPointMake(31, 20.61)];
                    [bezier13Path addCurveToPoint: CGPointMake(31.09, 20.74) controlPoint1: CGPointMake(31.07, 20.65) controlPoint2: CGPointMake(31.08, 20.69)];
                    [bezier13Path addCurveToPoint: CGPointMake(31.04, 20.86) controlPoint1: CGPointMake(31.09, 20.79) controlPoint2: CGPointMake(31.07, 20.84)];
                    [bezier13Path addCurveToPoint: CGPointMake(30.92, 20.9) controlPoint1: CGPointMake(31.01, 20.88) controlPoint2: CGPointMake(30.97, 20.9)];
                    [bezier13Path addLineToPoint: CGPointMake(30.86, 20.9)];
                    [bezier13Path addLineToPoint: CGPointMake(30.86, 21.51)];
                    [bezier13Path addCurveToPoint: CGPointMake(30.85, 21.56) controlPoint1: CGPointMake(30.86, 21.53) controlPoint2: CGPointMake(30.85, 21.54)];
                    [bezier13Path addCurveToPoint: CGPointMake(30.82, 21.61) controlPoint1: CGPointMake(30.85, 21.58) controlPoint2: CGPointMake(30.83, 21.6)];
                    [bezier13Path addCurveToPoint: CGPointMake(30.76, 21.65) controlPoint1: CGPointMake(30.8, 21.63) controlPoint2: CGPointMake(30.79, 21.64)];
                    [bezier13Path addCurveToPoint: CGPointMake(30.68, 21.67) controlPoint1: CGPointMake(30.74, 21.66) controlPoint2: CGPointMake(30.71, 21.67)];
                    [bezier13Path addCurveToPoint: CGPointMake(30.6, 21.65) controlPoint1: CGPointMake(30.65, 21.67) controlPoint2: CGPointMake(30.62, 21.67)];
                    [bezier13Path addCurveToPoint: CGPointMake(30.54, 21.61) controlPoint1: CGPointMake(30.58, 21.64) controlPoint2: CGPointMake(30.56, 21.63)];
                    [bezier13Path addCurveToPoint: CGPointMake(30.51, 21.56) controlPoint1: CGPointMake(30.53, 21.6) controlPoint2: CGPointMake(30.51, 21.58)];
                    [bezier13Path addCurveToPoint: CGPointMake(30.5, 21.51) controlPoint1: CGPointMake(30.5, 21.54) controlPoint2: CGPointMake(30.5, 21.53)];
                    [bezier13Path addLineToPoint: CGPointMake(30.5, 20.9)];
                    [bezier13Path addLineToPoint: CGPointMake(29.8, 20.9)];
                    [bezier13Path addCurveToPoint: CGPointMake(29.71, 20.88) controlPoint1: CGPointMake(29.75, 20.9) controlPoint2: CGPointMake(29.73, 20.89)];
                    [bezier13Path addCurveToPoint: CGPointMake(29.69, 20.81) controlPoint1: CGPointMake(29.7, 20.86) controlPoint2: CGPointMake(29.69, 20.84)];
                    [bezier13Path addLineToPoint: CGPointMake(29.68, 19.98)];
                    [bezier13Path addCurveToPoint: CGPointMake(29.69, 19.93) controlPoint1: CGPointMake(29.68, 19.96) controlPoint2: CGPointMake(29.69, 19.94)];
                    [bezier13Path addCurveToPoint: CGPointMake(29.72, 19.88) controlPoint1: CGPointMake(29.7, 19.91) controlPoint2: CGPointMake(29.71, 19.89)];
                    [bezier13Path addCurveToPoint: CGPointMake(29.77, 19.84) controlPoint1: CGPointMake(29.73, 19.87) controlPoint2: CGPointMake(29.75, 19.85)];
                    [bezier13Path addCurveToPoint: CGPointMake(29.85, 19.82) controlPoint1: CGPointMake(29.79, 19.83) controlPoint2: CGPointMake(29.82, 19.82)];
                    [bezier13Path addCurveToPoint: CGPointMake(29.99, 19.86) controlPoint1: CGPointMake(29.91, 19.82) controlPoint2: CGPointMake(29.96, 19.84)];
                    [bezier13Path addCurveToPoint: CGPointMake(30.04, 19.98) controlPoint1: CGPointMake(30.02, 19.89) controlPoint2: CGPointMake(30.04, 19.93)];
                    [bezier13Path addLineToPoint: CGPointMake(30.04, 20.62)];
                    [bezier13Path addLineToPoint: CGPointMake(30.49, 20.62)];
                    [bezier13Path addLineToPoint: CGPointMake(30.49, 19.98)];
                    [bezier13Path addCurveToPoint: CGPointMake(30.53, 19.87) controlPoint1: CGPointMake(30.49, 19.93) controlPoint2: CGPointMake(30.5, 19.9)];
                    [bezier13Path addCurveToPoint: CGPointMake(30.66, 19.83) controlPoint1: CGPointMake(30.56, 19.84) controlPoint2: CGPointMake(30.6, 19.83)];
                    [bezier13Path addCurveToPoint: CGPointMake(30.8, 19.88) controlPoint1: CGPointMake(30.72, 19.83) controlPoint2: CGPointMake(30.77, 19.85)];
                    [bezier13Path addCurveToPoint: CGPointMake(30.85, 19.99) controlPoint1: CGPointMake(30.83, 19.91) controlPoint2: CGPointMake(30.85, 19.94)];
                    [bezier13Path addLineToPoint: CGPointMake(30.85, 20.63)];
                    [bezier13Path addLineToPoint: CGPointMake(30.91, 20.6)];
                    [bezier13Path addLineToPoint: CGPointMake(30.91, 20.6)];
                    [bezier13Path closePath];
                    bezier13Path.miterLimit = 4;

                    [fillColor setFill];
                    [bezier13Path fill];


                    //// Bezier 14 Drawing
                    UIBezierPath* bezier14Path = [UIBezierPath bezierPath];
                    [bezier14Path moveToPoint: CGPointMake(32.61, 20.53)];
                    [bezier14Path addCurveToPoint: CGPointMake(32.9, 20.57) controlPoint1: CGPointMake(32.73, 20.53) controlPoint2: CGPointMake(32.83, 20.54)];
                    [bezier14Path addCurveToPoint: CGPointMake(33.09, 20.68) controlPoint1: CGPointMake(32.98, 20.59) controlPoint2: CGPointMake(33.04, 20.63)];
                    [bezier14Path addCurveToPoint: CGPointMake(33.19, 20.86) controlPoint1: CGPointMake(33.14, 20.73) controlPoint2: CGPointMake(33.17, 20.79)];
                    [bezier14Path addCurveToPoint: CGPointMake(33.22, 21.11) controlPoint1: CGPointMake(33.21, 20.93) controlPoint2: CGPointMake(33.22, 21.02)];
                    [bezier14Path addCurveToPoint: CGPointMake(33.19, 21.35) controlPoint1: CGPointMake(33.22, 21.2) controlPoint2: CGPointMake(33.21, 21.28)];
                    [bezier14Path addCurveToPoint: CGPointMake(33.07, 21.53) controlPoint1: CGPointMake(33.16, 21.42) controlPoint2: CGPointMake(33.13, 21.48)];
                    [bezier14Path addCurveToPoint: CGPointMake(32.86, 21.64) controlPoint1: CGPointMake(33.02, 21.58) controlPoint2: CGPointMake(32.95, 21.61)];
                    [bezier14Path addCurveToPoint: CGPointMake(32.53, 21.68) controlPoint1: CGPointMake(32.77, 21.66) controlPoint2: CGPointMake(32.66, 21.68)];
                    [bezier14Path addCurveToPoint: CGPointMake(32.26, 21.65) controlPoint1: CGPointMake(32.43, 21.68) controlPoint2: CGPointMake(32.34, 21.67)];
                    [bezier14Path addCurveToPoint: CGPointMake(32.04, 21.56) controlPoint1: CGPointMake(32.18, 21.63) controlPoint2: CGPointMake(32.11, 21.6)];
                    [bezier14Path addCurveToPoint: CGPointMake(31.9, 21.4) controlPoint1: CGPointMake(31.98, 21.52) controlPoint2: CGPointMake(31.94, 21.47)];
                    [bezier14Path addCurveToPoint: CGPointMake(31.85, 21.16) controlPoint1: CGPointMake(31.87, 21.33) controlPoint2: CGPointMake(31.85, 21.25)];
                    [bezier14Path addLineToPoint: CGPointMake(31.85, 19.97)];
                    [bezier14Path addCurveToPoint: CGPointMake(31.86, 19.92) controlPoint1: CGPointMake(31.85, 19.95) controlPoint2: CGPointMake(31.85, 19.93)];
                    [bezier14Path addCurveToPoint: CGPointMake(31.89, 19.87) controlPoint1: CGPointMake(31.87, 19.9) controlPoint2: CGPointMake(31.88, 19.88)];
                    [bezier14Path addCurveToPoint: CGPointMake(31.94, 19.84) controlPoint1: CGPointMake(31.9, 19.86) controlPoint2: CGPointMake(31.92, 19.84)];
                    [bezier14Path addCurveToPoint: CGPointMake(32.03, 19.82) controlPoint1: CGPointMake(31.96, 19.83) controlPoint2: CGPointMake(32, 19.82)];
                    [bezier14Path addCurveToPoint: CGPointMake(32.16, 19.87) controlPoint1: CGPointMake(32.09, 19.82) controlPoint2: CGPointMake(32.14, 19.84)];
                    [bezier14Path addCurveToPoint: CGPointMake(32.2, 19.98) controlPoint1: CGPointMake(32.19, 19.9) controlPoint2: CGPointMake(32.2, 19.93)];
                    [bezier14Path addLineToPoint: CGPointMake(32.2, 20.57)];
                    [bezier14Path addCurveToPoint: CGPointMake(32.42, 20.55) controlPoint1: CGPointMake(32.28, 20.56) controlPoint2: CGPointMake(32.36, 20.55)];
                    [bezier14Path addCurveToPoint: CGPointMake(32.61, 20.53) controlPoint1: CGPointMake(32.51, 20.53) controlPoint2: CGPointMake(32.56, 20.53)];
                    [bezier14Path closePath];
                    [bezier14Path moveToPoint: CGPointMake(32.88, 21.1)];
                    [bezier14Path addCurveToPoint: CGPointMake(32.86, 20.97) controlPoint1: CGPointMake(32.88, 21.04) controlPoint2: CGPointMake(32.87, 21)];
                    [bezier14Path addCurveToPoint: CGPointMake(32.81, 20.89) controlPoint1: CGPointMake(32.85, 20.93) controlPoint2: CGPointMake(32.83, 20.91)];
                    [bezier14Path addCurveToPoint: CGPointMake(32.71, 20.85) controlPoint1: CGPointMake(32.78, 20.87) controlPoint2: CGPointMake(32.75, 20.86)];
                    [bezier14Path addCurveToPoint: CGPointMake(32.55, 20.84) controlPoint1: CGPointMake(32.67, 20.84) controlPoint2: CGPointMake(32.61, 20.84)];
                    [bezier14Path addCurveToPoint: CGPointMake(32.42, 20.84) controlPoint1: CGPointMake(32.5, 20.84) controlPoint2: CGPointMake(32.46, 20.84)];
                    [bezier14Path addCurveToPoint: CGPointMake(32.34, 20.84) controlPoint1: CGPointMake(32.39, 20.84) controlPoint2: CGPointMake(32.36, 20.84)];
                    [bezier14Path addCurveToPoint: CGPointMake(32.28, 20.85) controlPoint1: CGPointMake(32.32, 20.84) controlPoint2: CGPointMake(32.3, 20.84)];
                    [bezier14Path addCurveToPoint: CGPointMake(32.22, 20.86) controlPoint1: CGPointMake(32.26, 20.85) controlPoint2: CGPointMake(32.24, 20.86)];
                    [bezier14Path addLineToPoint: CGPointMake(32.22, 21.1)];
                    [bezier14Path addCurveToPoint: CGPointMake(32.24, 21.23) controlPoint1: CGPointMake(32.22, 21.15) controlPoint2: CGPointMake(32.23, 21.19)];
                    [bezier14Path addCurveToPoint: CGPointMake(32.29, 21.32) controlPoint1: CGPointMake(32.25, 21.26) controlPoint2: CGPointMake(32.27, 21.29)];
                    [bezier14Path addCurveToPoint: CGPointMake(32.39, 21.37) controlPoint1: CGPointMake(32.31, 21.35) controlPoint2: CGPointMake(32.34, 21.36)];
                    [bezier14Path addCurveToPoint: CGPointMake(32.55, 21.39) controlPoint1: CGPointMake(32.43, 21.38) controlPoint2: CGPointMake(32.49, 21.39)];
                    [bezier14Path addCurveToPoint: CGPointMake(32.7, 21.38) controlPoint1: CGPointMake(32.61, 21.39) controlPoint2: CGPointMake(32.66, 21.39)];
                    [bezier14Path addCurveToPoint: CGPointMake(32.8, 21.34) controlPoint1: CGPointMake(32.74, 21.37) controlPoint2: CGPointMake(32.78, 21.36)];
                    [bezier14Path addCurveToPoint: CGPointMake(32.86, 21.26) controlPoint1: CGPointMake(32.83, 21.32) controlPoint2: CGPointMake(32.85, 21.29)];
                    [bezier14Path addCurveToPoint: CGPointMake(32.88, 21.1) controlPoint1: CGPointMake(32.87, 21.2) controlPoint2: CGPointMake(32.88, 21.15)];
                    [bezier14Path closePath];
                    bezier14Path.miterLimit = 4;

                    [fillColor setFill];
                    [bezier14Path fill];


                    //// Bezier 15 Drawing
                    UIBezierPath* bezier15Path = [UIBezierPath bezierPath];
                    [bezier15Path moveToPoint: CGPointMake(35, 20.6)];
                    [bezier15Path addCurveToPoint: CGPointMake(35.12, 20.63) controlPoint1: CGPointMake(35.05, 20.6) controlPoint2: CGPointMake(35.09, 20.61)];
                    [bezier15Path addCurveToPoint: CGPointMake(35.17, 20.74) controlPoint1: CGPointMake(35.16, 20.65) controlPoint2: CGPointMake(35.17, 20.69)];
                    [bezier15Path addCurveToPoint: CGPointMake(35.12, 20.86) controlPoint1: CGPointMake(35.17, 20.79) controlPoint2: CGPointMake(35.15, 20.84)];
                    [bezier15Path addCurveToPoint: CGPointMake(35, 20.9) controlPoint1: CGPointMake(35.09, 20.88) controlPoint2: CGPointMake(35.05, 20.9)];
                    [bezier15Path addLineToPoint: CGPointMake(34.94, 20.9)];
                    [bezier15Path addLineToPoint: CGPointMake(34.94, 21.51)];
                    [bezier15Path addCurveToPoint: CGPointMake(34.93, 21.56) controlPoint1: CGPointMake(34.94, 21.53) controlPoint2: CGPointMake(34.94, 21.54)];
                    [bezier15Path addCurveToPoint: CGPointMake(34.9, 21.61) controlPoint1: CGPointMake(34.92, 21.58) controlPoint2: CGPointMake(34.91, 21.6)];
                    [bezier15Path addCurveToPoint: CGPointMake(34.84, 21.65) controlPoint1: CGPointMake(34.88, 21.63) controlPoint2: CGPointMake(34.87, 21.64)];
                    [bezier15Path addCurveToPoint: CGPointMake(34.76, 21.67) controlPoint1: CGPointMake(34.81, 21.66) controlPoint2: CGPointMake(34.79, 21.67)];
                    [bezier15Path addCurveToPoint: CGPointMake(34.67, 21.65) controlPoint1: CGPointMake(34.73, 21.67) controlPoint2: CGPointMake(34.69, 21.67)];
                    [bezier15Path addCurveToPoint: CGPointMake(34.62, 21.61) controlPoint1: CGPointMake(34.65, 21.64) controlPoint2: CGPointMake(34.63, 21.63)];
                    [bezier15Path addCurveToPoint: CGPointMake(34.59, 21.56) controlPoint1: CGPointMake(34.6, 21.6) controlPoint2: CGPointMake(34.6, 21.58)];
                    [bezier15Path addCurveToPoint: CGPointMake(34.58, 21.51) controlPoint1: CGPointMake(34.58, 21.54) controlPoint2: CGPointMake(34.58, 21.53)];
                    [bezier15Path addLineToPoint: CGPointMake(34.58, 20.9)];
                    [bezier15Path addLineToPoint: CGPointMake(33.88, 20.9)];
                    [bezier15Path addCurveToPoint: CGPointMake(33.79, 20.88) controlPoint1: CGPointMake(33.83, 20.9) controlPoint2: CGPointMake(33.81, 20.89)];
                    [bezier15Path addCurveToPoint: CGPointMake(33.77, 20.81) controlPoint1: CGPointMake(33.78, 20.86) controlPoint2: CGPointMake(33.77, 20.84)];
                    [bezier15Path addLineToPoint: CGPointMake(33.77, 19.98)];
                    [bezier15Path addCurveToPoint: CGPointMake(33.78, 19.93) controlPoint1: CGPointMake(33.77, 19.96) controlPoint2: CGPointMake(33.78, 19.94)];
                    [bezier15Path addCurveToPoint: CGPointMake(33.81, 19.88) controlPoint1: CGPointMake(33.79, 19.91) controlPoint2: CGPointMake(33.8, 19.89)];
                    [bezier15Path addCurveToPoint: CGPointMake(33.86, 19.84) controlPoint1: CGPointMake(33.82, 19.87) controlPoint2: CGPointMake(33.84, 19.85)];
                    [bezier15Path addCurveToPoint: CGPointMake(33.94, 19.82) controlPoint1: CGPointMake(33.89, 19.83) controlPoint2: CGPointMake(33.91, 19.82)];
                    [bezier15Path addCurveToPoint: CGPointMake(34.08, 19.86) controlPoint1: CGPointMake(34, 19.82) controlPoint2: CGPointMake(34.05, 19.84)];
                    [bezier15Path addCurveToPoint: CGPointMake(34.13, 19.98) controlPoint1: CGPointMake(34.11, 19.89) controlPoint2: CGPointMake(34.13, 19.93)];
                    [bezier15Path addLineToPoint: CGPointMake(34.13, 20.62)];
                    [bezier15Path addLineToPoint: CGPointMake(34.58, 20.62)];
                    [bezier15Path addLineToPoint: CGPointMake(34.58, 19.98)];
                    [bezier15Path addCurveToPoint: CGPointMake(34.62, 19.87) controlPoint1: CGPointMake(34.58, 19.93) controlPoint2: CGPointMake(34.59, 19.9)];
                    [bezier15Path addCurveToPoint: CGPointMake(34.75, 19.83) controlPoint1: CGPointMake(34.65, 19.84) controlPoint2: CGPointMake(34.69, 19.83)];
                    [bezier15Path addCurveToPoint: CGPointMake(34.88, 19.88) controlPoint1: CGPointMake(34.8, 19.83) controlPoint2: CGPointMake(34.85, 19.85)];
                    [bezier15Path addCurveToPoint: CGPointMake(34.93, 19.99) controlPoint1: CGPointMake(34.91, 19.91) controlPoint2: CGPointMake(34.93, 19.94)];
                    [bezier15Path addLineToPoint: CGPointMake(34.93, 20.63)];
                    [bezier15Path addLineToPoint: CGPointMake(35, 20.6)];
                    [bezier15Path addLineToPoint: CGPointMake(35, 20.6)];
                    [bezier15Path closePath];
                    bezier15Path.miterLimit = 4;

                    [fillColor setFill];
                    [bezier15Path fill];


                    //// Bezier 16 Drawing
                    UIBezierPath* bezier16Path = [UIBezierPath bezierPath];
                    [bezier16Path moveToPoint: CGPointMake(37.15, 21.16)];
                    [bezier16Path addLineToPoint: CGPointMake(37.15, 21.16)];
                    [bezier16Path addCurveToPoint: CGPointMake(37.1, 21.4) controlPoint1: CGPointMake(37.15, 21.26) controlPoint2: CGPointMake(37.14, 21.34)];
                    [bezier16Path addCurveToPoint: CGPointMake(36.96, 21.56) controlPoint1: CGPointMake(37.06, 21.46) controlPoint2: CGPointMake(37.02, 21.51)];
                    [bezier16Path addCurveToPoint: CGPointMake(36.74, 21.64) controlPoint1: CGPointMake(36.9, 21.6) controlPoint2: CGPointMake(36.83, 21.62)];
                    [bezier16Path addCurveToPoint: CGPointMake(36.45, 21.66) controlPoint1: CGPointMake(36.65, 21.66) controlPoint2: CGPointMake(36.56, 21.66)];
                    [bezier16Path addCurveToPoint: CGPointMake(36.16, 21.63) controlPoint1: CGPointMake(36.35, 21.66) controlPoint2: CGPointMake(36.25, 21.65)];
                    [bezier16Path addCurveToPoint: CGPointMake(35.95, 21.54) controlPoint1: CGPointMake(36.07, 21.61) controlPoint2: CGPointMake(36.01, 21.58)];
                    [bezier16Path addCurveToPoint: CGPointMake(35.81, 21.39) controlPoint1: CGPointMake(35.89, 21.5) controlPoint2: CGPointMake(35.85, 21.45)];
                    [bezier16Path addCurveToPoint: CGPointMake(35.77, 21.17) controlPoint1: CGPointMake(35.78, 21.33) controlPoint2: CGPointMake(35.77, 21.25)];
                    [bezier16Path addLineToPoint: CGPointMake(35.77, 20.28)];
                    [bezier16Path addCurveToPoint: CGPointMake(35.95, 19.92) controlPoint1: CGPointMake(35.77, 20.12) controlPoint2: CGPointMake(35.83, 20)];
                    [bezier16Path addCurveToPoint: CGPointMake(36.47, 19.8) controlPoint1: CGPointMake(36.07, 19.84) controlPoint2: CGPointMake(36.24, 19.8)];
                    [bezier16Path addCurveToPoint: CGPointMake(36.75, 19.83) controlPoint1: CGPointMake(36.57, 19.8) controlPoint2: CGPointMake(36.66, 19.81)];
                    [bezier16Path addCurveToPoint: CGPointMake(36.96, 19.92) controlPoint1: CGPointMake(36.83, 19.85) controlPoint2: CGPointMake(36.91, 19.88)];
                    [bezier16Path addCurveToPoint: CGPointMake(37.1, 20.07) controlPoint1: CGPointMake(37.02, 19.96) controlPoint2: CGPointMake(37.07, 20.01)];
                    [bezier16Path addCurveToPoint: CGPointMake(37.15, 20.28) controlPoint1: CGPointMake(37.13, 20.13) controlPoint2: CGPointMake(37.15, 20.2)];
                    [bezier16Path addLineToPoint: CGPointMake(37.15, 21.16)];
                    [bezier16Path closePath];
                    [bezier16Path moveToPoint: CGPointMake(36.79, 20.31)];
                    [bezier16Path addCurveToPoint: CGPointMake(36.71, 20.16) controlPoint1: CGPointMake(36.79, 20.25) controlPoint2: CGPointMake(36.77, 20.2)];
                    [bezier16Path addCurveToPoint: CGPointMake(36.46, 20.1) controlPoint1: CGPointMake(36.66, 20.12) controlPoint2: CGPointMake(36.58, 20.1)];
                    [bezier16Path addCurveToPoint: CGPointMake(36.21, 20.15) controlPoint1: CGPointMake(36.35, 20.1) controlPoint2: CGPointMake(36.27, 20.12)];
                    [bezier16Path addCurveToPoint: CGPointMake(36.13, 20.29) controlPoint1: CGPointMake(36.16, 20.19) controlPoint2: CGPointMake(36.13, 20.23)];
                    [bezier16Path addLineToPoint: CGPointMake(36.13, 21.16)];
                    [bezier16Path addCurveToPoint: CGPointMake(36.21, 21.31) controlPoint1: CGPointMake(36.13, 21.23) controlPoint2: CGPointMake(36.16, 21.28)];
                    [bezier16Path addCurveToPoint: CGPointMake(36.45, 21.35) controlPoint1: CGPointMake(36.27, 21.34) controlPoint2: CGPointMake(36.34, 21.35)];
                    [bezier16Path addCurveToPoint: CGPointMake(36.7, 21.3) controlPoint1: CGPointMake(36.55, 21.35) controlPoint2: CGPointMake(36.64, 21.34)];
                    [bezier16Path addCurveToPoint: CGPointMake(36.79, 21.15) controlPoint1: CGPointMake(36.76, 21.27) controlPoint2: CGPointMake(36.79, 21.22)];
                    [bezier16Path addLineToPoint: CGPointMake(36.79, 20.31)];
                    [bezier16Path closePath];
                    bezier16Path.miterLimit = 4;

                    [fillColor setFill];
                    [bezier16Path fill];
                }
            }


            //// Bezier 17 Drawing
            UIBezierPath* bezier17Path = [UIBezierPath bezierPath];
            [bezier17Path moveToPoint: CGPointMake(6.72, 21.11)];
            [bezier17Path addCurveToPoint: CGPointMake(6.69, 21.38) controlPoint1: CGPointMake(6.72, 21.22) controlPoint2: CGPointMake(6.71, 21.3)];
            [bezier17Path addCurveToPoint: CGPointMake(6.57, 21.55) controlPoint1: CGPointMake(6.67, 21.45) controlPoint2: CGPointMake(6.63, 21.51)];
            [bezier17Path addCurveToPoint: CGPointMake(6.34, 21.64) controlPoint1: CGPointMake(6.52, 21.59) controlPoint2: CGPointMake(6.44, 21.62)];
            [bezier17Path addCurveToPoint: CGPointMake(5.97, 21.67) controlPoint1: CGPointMake(6.24, 21.66) controlPoint2: CGPointMake(6.12, 21.67)];
            [bezier17Path addLineToPoint: CGPointMake(5.96, 21.67)];
            [bezier17Path addCurveToPoint: CGPointMake(5.84, 21.67) controlPoint1: CGPointMake(5.93, 21.67) controlPoint2: CGPointMake(5.88, 21.67)];
            [bezier17Path addCurveToPoint: CGPointMake(5.71, 21.66) controlPoint1: CGPointMake(5.8, 21.67) controlPoint2: CGPointMake(5.75, 21.67)];
            [bezier17Path addCurveToPoint: CGPointMake(5.58, 21.64) controlPoint1: CGPointMake(5.67, 21.65) controlPoint2: CGPointMake(5.62, 21.65)];
            [bezier17Path addCurveToPoint: CGPointMake(5.46, 21.6) controlPoint1: CGPointMake(5.53, 21.63) controlPoint2: CGPointMake(5.5, 21.62)];
            [bezier17Path addCurveToPoint: CGPointMake(5.37, 21.53) controlPoint1: CGPointMake(5.42, 21.58) controlPoint2: CGPointMake(5.4, 21.56)];
            [bezier17Path addCurveToPoint: CGPointMake(5.34, 21.43) controlPoint1: CGPointMake(5.35, 21.5) controlPoint2: CGPointMake(5.34, 21.47)];
            [bezier17Path addLineToPoint: CGPointMake(5.34, 21.42)];
            [bezier17Path addCurveToPoint: CGPointMake(5.39, 21.31) controlPoint1: CGPointMake(5.34, 21.38) controlPoint2: CGPointMake(5.36, 21.34)];
            [bezier17Path addCurveToPoint: CGPointMake(5.5, 21.27) controlPoint1: CGPointMake(5.42, 21.28) controlPoint2: CGPointMake(5.46, 21.27)];
            [bezier17Path addLineToPoint: CGPointMake(5.5, 21.27)];
            [bezier17Path addCurveToPoint: CGPointMake(5.56, 21.27) controlPoint1: CGPointMake(5.53, 21.27) controlPoint2: CGPointMake(5.55, 21.27)];
            [bezier17Path addCurveToPoint: CGPointMake(5.6, 21.28) controlPoint1: CGPointMake(5.58, 21.28) controlPoint2: CGPointMake(5.59, 21.28)];
            [bezier17Path addCurveToPoint: CGPointMake(5.63, 21.3) controlPoint1: CGPointMake(5.61, 21.29) controlPoint2: CGPointMake(5.62, 21.29)];
            [bezier17Path addCurveToPoint: CGPointMake(5.65, 21.32) controlPoint1: CGPointMake(5.63, 21.31) controlPoint2: CGPointMake(5.65, 21.31)];
            [bezier17Path addLineToPoint: CGPointMake(5.65, 21.32)];
            [bezier17Path addCurveToPoint: CGPointMake(5.69, 21.34) controlPoint1: CGPointMake(5.66, 21.33) controlPoint2: CGPointMake(5.68, 21.34)];
            [bezier17Path addCurveToPoint: CGPointMake(5.75, 21.36) controlPoint1: CGPointMake(5.7, 21.35) controlPoint2: CGPointMake(5.73, 21.35)];
            [bezier17Path addCurveToPoint: CGPointMake(5.84, 21.37) controlPoint1: CGPointMake(5.77, 21.37) controlPoint2: CGPointMake(5.81, 21.37)];
            [bezier17Path addCurveToPoint: CGPointMake(5.99, 21.37) controlPoint1: CGPointMake(5.88, 21.37) controlPoint2: CGPointMake(5.93, 21.37)];
            [bezier17Path addLineToPoint: CGPointMake(6.01, 21.37)];
            [bezier17Path addCurveToPoint: CGPointMake(6.19, 21.35) controlPoint1: CGPointMake(6.08, 21.37) controlPoint2: CGPointMake(6.14, 21.37)];
            [bezier17Path addCurveToPoint: CGPointMake(6.3, 21.3) controlPoint1: CGPointMake(6.24, 21.34) controlPoint2: CGPointMake(6.27, 21.32)];
            [bezier17Path addCurveToPoint: CGPointMake(6.35, 21.21) controlPoint1: CGPointMake(6.32, 21.28) controlPoint2: CGPointMake(6.34, 21.25)];
            [bezier17Path addCurveToPoint: CGPointMake(6.37, 21.09) controlPoint1: CGPointMake(6.36, 21.18) controlPoint2: CGPointMake(6.37, 21.14)];
            [bezier17Path addCurveToPoint: CGPointMake(6.33, 20.91) controlPoint1: CGPointMake(6.37, 21.01) controlPoint2: CGPointMake(6.36, 20.95)];
            [bezier17Path addCurveToPoint: CGPointMake(6.21, 20.86) controlPoint1: CGPointMake(6.31, 20.88) controlPoint2: CGPointMake(6.27, 20.86)];
            [bezier17Path addLineToPoint: CGPointMake(5.83, 20.86)];
            [bezier17Path addCurveToPoint: CGPointMake(5.77, 20.85) controlPoint1: CGPointMake(5.81, 20.86) controlPoint2: CGPointMake(5.79, 20.86)];
            [bezier17Path addCurveToPoint: CGPointMake(5.71, 20.83) controlPoint1: CGPointMake(5.75, 20.85) controlPoint2: CGPointMake(5.73, 20.84)];
            [bezier17Path addCurveToPoint: CGPointMake(5.67, 20.79) controlPoint1: CGPointMake(5.69, 20.82) controlPoint2: CGPointMake(5.68, 20.8)];
            [bezier17Path addCurveToPoint: CGPointMake(5.65, 20.72) controlPoint1: CGPointMake(5.66, 20.77) controlPoint2: CGPointMake(5.65, 20.75)];
            [bezier17Path addCurveToPoint: CGPointMake(5.7, 20.6) controlPoint1: CGPointMake(5.65, 20.67) controlPoint2: CGPointMake(5.67, 20.63)];
            [bezier17Path addCurveToPoint: CGPointMake(5.82, 20.56) controlPoint1: CGPointMake(5.74, 20.58) controlPoint2: CGPointMake(5.78, 20.56)];
            [bezier17Path addLineToPoint: CGPointMake(6.18, 20.56)];
            [bezier17Path addCurveToPoint: CGPointMake(6.25, 20.55) controlPoint1: CGPointMake(6.21, 20.56) controlPoint2: CGPointMake(6.23, 20.56)];
            [bezier17Path addCurveToPoint: CGPointMake(6.3, 20.52) controlPoint1: CGPointMake(6.27, 20.54) controlPoint2: CGPointMake(6.29, 20.53)];
            [bezier17Path addCurveToPoint: CGPointMake(6.33, 20.46) controlPoint1: CGPointMake(6.31, 20.5) controlPoint2: CGPointMake(6.33, 20.48)];
            [bezier17Path addCurveToPoint: CGPointMake(6.34, 20.35) controlPoint1: CGPointMake(6.33, 20.43) controlPoint2: CGPointMake(6.34, 20.4)];
            [bezier17Path addCurveToPoint: CGPointMake(6.33, 20.23) controlPoint1: CGPointMake(6.34, 20.3) controlPoint2: CGPointMake(6.34, 20.26)];
            [bezier17Path addCurveToPoint: CGPointMake(6.28, 20.15) controlPoint1: CGPointMake(6.33, 20.2) controlPoint2: CGPointMake(6.31, 20.17)];
            [bezier17Path addCurveToPoint: CGPointMake(6.18, 20.11) controlPoint1: CGPointMake(6.26, 20.13) controlPoint2: CGPointMake(6.22, 20.11)];
            [bezier17Path addCurveToPoint: CGPointMake(6, 20.1) controlPoint1: CGPointMake(6.13, 20.1) controlPoint2: CGPointMake(6.07, 20.1)];
            [bezier17Path addLineToPoint: CGPointMake(6.01, 20.1)];
            [bezier17Path addCurveToPoint: CGPointMake(5.86, 20.11) controlPoint1: CGPointMake(5.96, 20.1) controlPoint2: CGPointMake(5.91, 20.1)];
            [bezier17Path addCurveToPoint: CGPointMake(5.74, 20.14) controlPoint1: CGPointMake(5.8, 20.12) controlPoint2: CGPointMake(5.77, 20.13)];
            [bezier17Path addCurveToPoint: CGPointMake(5.7, 20.16) controlPoint1: CGPointMake(5.72, 20.15) controlPoint2: CGPointMake(5.71, 20.15)];
            [bezier17Path addCurveToPoint: CGPointMake(5.66, 20.18) controlPoint1: CGPointMake(5.69, 20.17) controlPoint2: CGPointMake(5.67, 20.18)];
            [bezier17Path addCurveToPoint: CGPointMake(5.62, 20.19) controlPoint1: CGPointMake(5.65, 20.19) controlPoint2: CGPointMake(5.63, 20.19)];
            [bezier17Path addCurveToPoint: CGPointMake(5.57, 20.19) controlPoint1: CGPointMake(5.6, 20.19) controlPoint2: CGPointMake(5.59, 20.19)];
            [bezier17Path addLineToPoint: CGPointMake(5.54, 20.19)];
            [bezier17Path addCurveToPoint: CGPointMake(5.43, 20.15) controlPoint1: CGPointMake(5.5, 20.19) controlPoint2: CGPointMake(5.46, 20.18)];
            [bezier17Path addCurveToPoint: CGPointMake(5.38, 20.05) controlPoint1: CGPointMake(5.4, 20.12) controlPoint2: CGPointMake(5.38, 20.09)];
            [bezier17Path addLineToPoint: CGPointMake(5.38, 20.05)];
            [bezier17Path addCurveToPoint: CGPointMake(5.42, 19.94) controlPoint1: CGPointMake(5.38, 20.01) controlPoint2: CGPointMake(5.4, 19.97)];
            [bezier17Path addCurveToPoint: CGPointMake(5.53, 19.86) controlPoint1: CGPointMake(5.44, 19.91) controlPoint2: CGPointMake(5.48, 19.88)];
            [bezier17Path addCurveToPoint: CGPointMake(5.72, 19.81) controlPoint1: CGPointMake(5.58, 19.84) controlPoint2: CGPointMake(5.64, 19.82)];
            [bezier17Path addCurveToPoint: CGPointMake(6, 19.79) controlPoint1: CGPointMake(5.8, 19.8) controlPoint2: CGPointMake(5.89, 19.79)];
            [bezier17Path addCurveToPoint: CGPointMake(6.34, 19.81) controlPoint1: CGPointMake(6.13, 19.79) controlPoint2: CGPointMake(6.24, 19.8)];
            [bezier17Path addCurveToPoint: CGPointMake(6.56, 19.89) controlPoint1: CGPointMake(6.43, 19.82) controlPoint2: CGPointMake(6.5, 19.85)];
            [bezier17Path addCurveToPoint: CGPointMake(6.68, 20.05) controlPoint1: CGPointMake(6.61, 19.93) controlPoint2: CGPointMake(6.66, 19.98)];
            [bezier17Path addCurveToPoint: CGPointMake(6.72, 20.31) controlPoint1: CGPointMake(6.7, 20.12) controlPoint2: CGPointMake(6.72, 20.2)];
            [bezier17Path addCurveToPoint: CGPointMake(6.71, 20.45) controlPoint1: CGPointMake(6.72, 20.36) controlPoint2: CGPointMake(6.72, 20.41)];
            [bezier17Path addCurveToPoint: CGPointMake(6.69, 20.56) controlPoint1: CGPointMake(6.7, 20.49) controlPoint2: CGPointMake(6.7, 20.53)];
            [bezier17Path addCurveToPoint: CGPointMake(6.66, 20.64) controlPoint1: CGPointMake(6.68, 20.59) controlPoint2: CGPointMake(6.67, 20.62)];
            [bezier17Path addCurveToPoint: CGPointMake(6.61, 20.7) controlPoint1: CGPointMake(6.65, 20.66) controlPoint2: CGPointMake(6.63, 20.68)];
            [bezier17Path addCurveToPoint: CGPointMake(6.65, 20.75) controlPoint1: CGPointMake(6.63, 20.71) controlPoint2: CGPointMake(6.64, 20.73)];
            [bezier17Path addCurveToPoint: CGPointMake(6.69, 20.82) controlPoint1: CGPointMake(6.66, 20.77) controlPoint2: CGPointMake(6.67, 20.79)];
            [bezier17Path addCurveToPoint: CGPointMake(6.72, 20.93) controlPoint1: CGPointMake(6.7, 20.85) controlPoint2: CGPointMake(6.71, 20.89)];
            [bezier17Path addCurveToPoint: CGPointMake(6.72, 21.11) controlPoint1: CGPointMake(6.72, 20.99) controlPoint2: CGPointMake(6.72, 21.04)];
            [bezier17Path closePath];
            bezier17Path.miterLimit = 4;

            [fillColor setFill];
            [bezier17Path fill];
        }


        //// Bezier 18 Drawing
        UIBezierPath* bezier18Path = [UIBezierPath bezierPath];
        [bezier18Path moveToPoint: CGPointMake(38.04, 20.4)];
        [bezier18Path addLineToPoint: CGPointMake(30.55, 20.4)];
        [bezier18Path addCurveToPoint: CGPointMake(27.09, 16.96) controlPoint1: CGPointMake(28.64, 20.4) controlPoint2: CGPointMake(27.09, 18.86)];
        [bezier18Path addLineToPoint: CGPointMake(27.09, 14.08)];
        [bezier18Path addCurveToPoint: CGPointMake(30.55, 10.64) controlPoint1: CGPointMake(27.09, 12.18) controlPoint2: CGPointMake(28.64, 10.64)];
        [bezier18Path addLineToPoint: CGPointMake(38.04, 10.64)];
        [bezier18Path addCurveToPoint: CGPointMake(41.5, 14.08) controlPoint1: CGPointMake(39.95, 10.64) controlPoint2: CGPointMake(41.5, 12.18)];
        [bezier18Path addLineToPoint: CGPointMake(41.5, 16.96)];
        [bezier18Path addCurveToPoint: CGPointMake(38.04, 20.4) controlPoint1: CGPointMake(41.5, 18.86) controlPoint2: CGPointMake(39.95, 20.4)];
        [bezier18Path closePath];
        [bezier18Path moveToPoint: CGPointMake(30.36, 13.16)];
        [bezier18Path addCurveToPoint: CGPointMake(29.51, 14) controlPoint1: CGPointMake(29.9, 13.16) controlPoint2: CGPointMake(29.51, 13.55)];
        [bezier18Path addLineToPoint: CGPointMake(29.51, 17.03)];
        [bezier18Path addCurveToPoint: CGPointMake(30.36, 17.87) controlPoint1: CGPointMake(29.51, 17.49) controlPoint2: CGPointMake(29.9, 17.87)];
        [bezier18Path addLineToPoint: CGPointMake(38.22, 17.87)];
        [bezier18Path addCurveToPoint: CGPointMake(39.07, 17.03) controlPoint1: CGPointMake(38.68, 17.87) controlPoint2: CGPointMake(39.07, 17.49)];
        [bezier18Path addLineToPoint: CGPointMake(39.07, 14)];
        [bezier18Path addCurveToPoint: CGPointMake(38.22, 13.16) controlPoint1: CGPointMake(39.07, 13.54) controlPoint2: CGPointMake(38.68, 13.16)];
        [bezier18Path addLineToPoint: CGPointMake(30.36, 13.16)];
        [bezier18Path closePath];
        bezier18Path.miterLimit = 4;

        [fillColor5 setFill];
        [bezier18Path fill];


        //// Group 6
        {
            //// Bezier 19 Drawing
            UIBezierPath* bezier19Path = [UIBezierPath bezierPath];
            [bezier19Path moveToPoint: CGPointMake(30.97, 16.49)];
            [bezier19Path addLineToPoint: CGPointMake(30.97, 16.3)];
            [bezier19Path addCurveToPoint: CGPointMake(32.05, 15.09) controlPoint1: CGPointMake(31.67, 15.75) controlPoint2: CGPointMake(32.05, 15.43)];
            [bezier19Path addCurveToPoint: CGPointMake(31.65, 14.74) controlPoint1: CGPointMake(32.05, 14.84) controlPoint2: CGPointMake(31.85, 14.74)];
            [bezier19Path addCurveToPoint: CGPointMake(31.12, 14.98) controlPoint1: CGPointMake(31.42, 14.74) controlPoint2: CGPointMake(31.24, 14.84)];
            [bezier19Path addLineToPoint: CGPointMake(30.97, 14.83)];
            [bezier19Path addCurveToPoint: CGPointMake(31.65, 14.52) controlPoint1: CGPointMake(31.12, 14.63) controlPoint2: CGPointMake(31.37, 14.52)];
            [bezier19Path addCurveToPoint: CGPointMake(32.3, 15.09) controlPoint1: CGPointMake(31.97, 14.52) controlPoint2: CGPointMake(32.3, 14.7)];
            [bezier19Path addCurveToPoint: CGPointMake(31.36, 16.27) controlPoint1: CGPointMake(32.3, 15.49) controlPoint2: CGPointMake(31.9, 15.85)];
            [bezier19Path addLineToPoint: CGPointMake(32.31, 16.27)];
            [bezier19Path addLineToPoint: CGPointMake(32.31, 16.49)];
            [bezier19Path addLineToPoint: CGPointMake(30.97, 16.49)];
            [bezier19Path closePath];
            bezier19Path.miterLimit = 4;

            [fillColor6 setFill];
            [bezier19Path fill];


            //// Bezier 20 Drawing
            UIBezierPath* bezier20Path = [UIBezierPath bezierPath];
            [bezier20Path moveToPoint: CGPointMake(32.89, 16.21)];
            [bezier20Path addLineToPoint: CGPointMake(33.03, 16.06)];
            [bezier20Path addCurveToPoint: CGPointMake(33.57, 16.32) controlPoint1: CGPointMake(33.14, 16.21) controlPoint2: CGPointMake(33.34, 16.32)];
            [bezier20Path addCurveToPoint: CGPointMake(34.02, 15.96) controlPoint1: CGPointMake(33.85, 16.32) controlPoint2: CGPointMake(34.02, 16.18)];
            [bezier20Path addCurveToPoint: CGPointMake(33.54, 15.62) controlPoint1: CGPointMake(34.02, 15.72) controlPoint2: CGPointMake(33.82, 15.62)];
            [bezier20Path addCurveToPoint: CGPointMake(33.34, 15.62) controlPoint1: CGPointMake(33.46, 15.62) controlPoint2: CGPointMake(33.37, 15.62)];
            [bezier20Path addLineToPoint: CGPointMake(33.34, 15.4)];
            [bezier20Path addCurveToPoint: CGPointMake(33.54, 15.4) controlPoint1: CGPointMake(33.37, 15.4) controlPoint2: CGPointMake(33.46, 15.4)];
            [bezier20Path addCurveToPoint: CGPointMake(33.99, 15.08) controlPoint1: CGPointMake(33.78, 15.4) controlPoint2: CGPointMake(33.99, 15.3)];
            [bezier20Path addCurveToPoint: CGPointMake(33.56, 14.75) controlPoint1: CGPointMake(33.99, 14.86) controlPoint2: CGPointMake(33.79, 14.75)];
            [bezier20Path addCurveToPoint: CGPointMake(33.05, 14.99) controlPoint1: CGPointMake(33.35, 14.75) controlPoint2: CGPointMake(33.19, 14.83)];
            [bezier20Path addLineToPoint: CGPointMake(32.92, 14.84)];
            [bezier20Path addCurveToPoint: CGPointMake(33.58, 14.54) controlPoint1: CGPointMake(33.06, 14.67) controlPoint2: CGPointMake(33.28, 14.54)];
            [bezier20Path addCurveToPoint: CGPointMake(34.24, 15.06) controlPoint1: CGPointMake(33.95, 14.54) controlPoint2: CGPointMake(34.24, 14.73)];
            [bezier20Path addCurveToPoint: CGPointMake(33.82, 15.51) controlPoint1: CGPointMake(34.24, 15.34) controlPoint2: CGPointMake(34, 15.48)];
            [bezier20Path addCurveToPoint: CGPointMake(34.27, 15.99) controlPoint1: CGPointMake(34, 15.52) controlPoint2: CGPointMake(34.27, 15.68)];
            [bezier20Path addCurveToPoint: CGPointMake(33.58, 16.55) controlPoint1: CGPointMake(34.27, 16.31) controlPoint2: CGPointMake(34.01, 16.55)];
            [bezier20Path addCurveToPoint: CGPointMake(32.89, 16.21) controlPoint1: CGPointMake(33.25, 16.53) controlPoint2: CGPointMake(33.01, 16.38)];
            [bezier20Path closePath];
            bezier20Path.miterLimit = 4;

            [fillColor6 setFill];
            [bezier20Path fill];


            //// Bezier 21 Drawing
            UIBezierPath* bezier21Path = [UIBezierPath bezierPath];
            [bezier21Path moveToPoint: CGPointMake(35.31, 16.49)];
            [bezier21Path addLineToPoint: CGPointMake(35.31, 14.87)];
            [bezier21Path addLineToPoint: CGPointMake(35, 15.2)];
            [bezier21Path addLineToPoint: CGPointMake(34.85, 15.05)];
            [bezier21Path addLineToPoint: CGPointMake(35.34, 14.55)];
            [bezier21Path addLineToPoint: CGPointMake(35.55, 14.55)];
            [bezier21Path addLineToPoint: CGPointMake(35.55, 16.49)];
            [bezier21Path addLineToPoint: CGPointMake(35.31, 16.49)];
            [bezier21Path closePath];
            bezier21Path.miterLimit = 4;

            [fillColor6 setFill];
            [bezier21Path fill];


            //// Bezier 22 Drawing
            UIBezierPath* bezier22Path = [UIBezierPath bezierPath];
            [bezier22Path moveToPoint: CGPointMake(36.28, 16.49)];
            [bezier22Path addLineToPoint: CGPointMake(36.28, 16.3)];
            [bezier22Path addCurveToPoint: CGPointMake(37.36, 15.09) controlPoint1: CGPointMake(36.98, 15.75) controlPoint2: CGPointMake(37.36, 15.43)];
            [bezier22Path addCurveToPoint: CGPointMake(36.96, 14.74) controlPoint1: CGPointMake(37.36, 14.84) controlPoint2: CGPointMake(37.16, 14.74)];
            [bezier22Path addCurveToPoint: CGPointMake(36.43, 14.98) controlPoint1: CGPointMake(36.73, 14.74) controlPoint2: CGPointMake(36.55, 14.84)];
            [bezier22Path addLineToPoint: CGPointMake(36.28, 14.83)];
            [bezier22Path addCurveToPoint: CGPointMake(36.96, 14.52) controlPoint1: CGPointMake(36.43, 14.63) controlPoint2: CGPointMake(36.68, 14.52)];
            [bezier22Path addCurveToPoint: CGPointMake(37.61, 15.09) controlPoint1: CGPointMake(37.28, 14.52) controlPoint2: CGPointMake(37.61, 14.7)];
            [bezier22Path addCurveToPoint: CGPointMake(36.67, 16.27) controlPoint1: CGPointMake(37.61, 15.49) controlPoint2: CGPointMake(37.21, 15.85)];
            [bezier22Path addLineToPoint: CGPointMake(37.62, 16.27)];
            [bezier22Path addLineToPoint: CGPointMake(37.62, 16.49)];
            [bezier22Path addLineToPoint: CGPointMake(36.28, 16.49)];
            [bezier22Path closePath];
            bezier22Path.miterLimit = 4;

            [fillColor6 setFill];
            [bezier22Path fill];
        }


        //// Group 7
        {
            //// SVGID_1_ Drawing
            UIBezierPath* sVGID_1_Path = [UIBezierPath bezierPath];
            [sVGID_1_Path moveToPoint: CGPointMake(17.94, 2.89)];
            [sVGID_1_Path addLineToPoint: CGPointMake(4.94, 2.89)];
            [sVGID_1_Path addLineToPoint: CGPointMake(4.94, 15.94)];
            [sVGID_1_Path addLineToPoint: CGPointMake(17.94, 15.94)];
            [sVGID_1_Path addLineToPoint: CGPointMake(17.94, 11.63)];
            [sVGID_1_Path addCurveToPoint: CGPointMake(18.02, 11.34) controlPoint1: CGPointMake(17.99, 11.56) controlPoint2: CGPointMake(18.02, 11.46)];
            [sVGID_1_Path addCurveToPoint: CGPointMake(17.94, 11.06) controlPoint1: CGPointMake(18.02, 11.21) controlPoint2: CGPointMake(17.99, 11.13)];
            [sVGID_1_Path addLineToPoint: CGPointMake(17.94, 2.89)];
            [sVGID_1_Path closePath];
            sVGID_1_Path.miterLimit = 4;

            [fillColor3 setFill];
            [sVGID_1_Path fill];
        }


        //// Group 8
        {
            //// Group 9
            {
                //// Group 10
                {
                    //// Bezier 24 Drawing
                    UIBezierPath* bezier24Path = [UIBezierPath bezierPath];
                    [bezier24Path moveToPoint: CGPointMake(4.1, 15.67)];
                    [bezier24Path addLineToPoint: CGPointMake(3.99, 15.67)];
                    [bezier24Path addCurveToPoint: CGPointMake(3.97, 15.52) controlPoint1: CGPointMake(3.98, 15.62) controlPoint2: CGPointMake(3.97, 15.54)];
                    [bezier24Path addCurveToPoint: CGPointMake(3.88, 15.44) controlPoint1: CGPointMake(3.97, 15.48) controlPoint2: CGPointMake(3.96, 15.44)];
                    [bezier24Path addLineToPoint: CGPointMake(3.72, 15.44)];
                    [bezier24Path addLineToPoint: CGPointMake(3.72, 15.68)];
                    [bezier24Path addLineToPoint: CGPointMake(3.62, 15.68)];
                    [bezier24Path addLineToPoint: CGPointMake(3.62, 15.1)];
                    [bezier24Path addLineToPoint: CGPointMake(3.89, 15.1)];
                    [bezier24Path addCurveToPoint: CGPointMake(4.09, 15.26) controlPoint1: CGPointMake(3.98, 15.1) controlPoint2: CGPointMake(4.09, 15.13)];
                    [bezier24Path addCurveToPoint: CGPointMake(4.03, 15.39) controlPoint1: CGPointMake(4.09, 15.33) controlPoint2: CGPointMake(4.06, 15.37)];
                    [bezier24Path addCurveToPoint: CGPointMake(4.08, 15.49) controlPoint1: CGPointMake(4.06, 15.4) controlPoint2: CGPointMake(4.08, 15.43)];
                    [bezier24Path addLineToPoint: CGPointMake(4.08, 15.59)];
                    [bezier24Path addCurveToPoint: CGPointMake(4.11, 15.64) controlPoint1: CGPointMake(4.08, 15.62) controlPoint2: CGPointMake(4.08, 15.63)];
                    [bezier24Path addLineToPoint: CGPointMake(4.11, 15.67)];
                    [bezier24Path addLineToPoint: CGPointMake(4.1, 15.67)];
                    [bezier24Path closePath];
                    [bezier24Path moveToPoint: CGPointMake(3.98, 15.26)];
                    [bezier24Path addCurveToPoint: CGPointMake(3.89, 15.18) controlPoint1: CGPointMake(3.98, 15.19) controlPoint2: CGPointMake(3.93, 15.18)];
                    [bezier24Path addLineToPoint: CGPointMake(3.72, 15.18)];
                    [bezier24Path addLineToPoint: CGPointMake(3.72, 15.34)];
                    [bezier24Path addLineToPoint: CGPointMake(3.88, 15.34)];
                    [bezier24Path addCurveToPoint: CGPointMake(3.98, 15.26) controlPoint1: CGPointMake(3.94, 15.35) controlPoint2: CGPointMake(3.98, 15.33)];
                    [bezier24Path closePath];
                    [bezier24Path moveToPoint: CGPointMake(4.46, 15.39)];
                    [bezier24Path addCurveToPoint: CGPointMake(3.84, 14.77) controlPoint1: CGPointMake(4.46, 15.05) controlPoint2: CGPointMake(4.18, 14.77)];
                    [bezier24Path addCurveToPoint: CGPointMake(3.22, 15.39) controlPoint1: CGPointMake(3.5, 14.77) controlPoint2: CGPointMake(3.22, 15.04)];
                    [bezier24Path addCurveToPoint: CGPointMake(3.84, 16.01) controlPoint1: CGPointMake(3.22, 15.73) controlPoint2: CGPointMake(3.49, 16.01)];
                    [bezier24Path addCurveToPoint: CGPointMake(4.46, 15.39) controlPoint1: CGPointMake(4.18, 16.01) controlPoint2: CGPointMake(4.46, 15.73)];
                    [bezier24Path closePath];
                    [bezier24Path moveToPoint: CGPointMake(4.36, 15.39)];
                    [bezier24Path addCurveToPoint: CGPointMake(3.84, 15.92) controlPoint1: CGPointMake(4.36, 15.68) controlPoint2: CGPointMake(4.14, 15.92)];
                    [bezier24Path addCurveToPoint: CGPointMake(3.31, 15.39) controlPoint1: CGPointMake(3.54, 15.92) controlPoint2: CGPointMake(3.31, 15.68)];
                    [bezier24Path addCurveToPoint: CGPointMake(3.84, 14.86) controlPoint1: CGPointMake(3.31, 15.1) controlPoint2: CGPointMake(3.53, 14.86)];
                    [bezier24Path addCurveToPoint: CGPointMake(4.36, 15.39) controlPoint1: CGPointMake(4.14, 14.86) controlPoint2: CGPointMake(4.36, 15.1)];
                    [bezier24Path closePath];
                    bezier24Path.miterLimit = 4;

                    [fillColor3 setFill];
                    [bezier24Path fill];
                }
            }
        }


        //// Group 11
        {
            //// SVGID_4_
            {
                CGContextSaveGState(context);
                CGContextBeginTransparencyLayer(context, NULL);

                //// Clip Bezier 25
                UIBezierPath* bezier25Path = [UIBezierPath bezierPath];
                [bezier25Path moveToPoint: CGPointMake(17.94, 2.89)];
                [bezier25Path addLineToPoint: CGPointMake(4.94, 2.89)];
                [bezier25Path addLineToPoint: CGPointMake(4.94, 15.94)];
                [bezier25Path addLineToPoint: CGPointMake(17.94, 15.94)];
                [bezier25Path addLineToPoint: CGPointMake(17.94, 11.63)];
                [bezier25Path addCurveToPoint: CGPointMake(18.02, 11.34) controlPoint1: CGPointMake(17.99, 11.56) controlPoint2: CGPointMake(18.02, 11.46)];
                [bezier25Path addCurveToPoint: CGPointMake(17.94, 11.06) controlPoint1: CGPointMake(18.02, 11.21) controlPoint2: CGPointMake(17.99, 11.13)];
                [bezier25Path addLineToPoint: CGPointMake(17.94, 2.89)];
                [bezier25Path closePath];
                bezier25Path.miterLimit = 0;

                [bezier25Path addClip];


                //// Rectangle 2 Drawing
                UIBezierPath* rectangle2Path = [UIBezierPath bezierPathWithRect: CGRectMake(0.76, 0, 13.97, 13.97)];
                CGContextSaveGState(context);
                [rectangle2Path addClip];
                CGContextDrawRadialGradient(context, sVGID_5_2,
                    CGPointMake(7.75, 6.99), 0,
                    CGPointMake(7.75, 6.99), 6.99,
                    kCGGradientDrawsBeforeStartLocation | kCGGradientDrawsAfterEndLocation);
                CGContextRestoreGState(context);


                CGContextEndTransparencyLayer(context);
                CGContextRestoreGState(context);
            }
        }


        //// Group 13
        {
            //// Bezier 26 Drawing
            UIBezierPath* bezier26Path = [UIBezierPath bezierPath];
            [bezier26Path moveToPoint: CGPointMake(4.94, 9.5)];
            [bezier26Path addLineToPoint: CGPointMake(5.56, 9.5)];
            [bezier26Path addLineToPoint: CGPointMake(5.7, 9.16)];
            [bezier26Path addLineToPoint: CGPointMake(6.02, 9.16)];
            [bezier26Path addLineToPoint: CGPointMake(6.16, 9.5)];
            [bezier26Path addLineToPoint: CGPointMake(7.39, 9.5)];
            [bezier26Path addLineToPoint: CGPointMake(7.39, 9.24)];
            [bezier26Path addLineToPoint: CGPointMake(7.5, 9.5)];
            [bezier26Path addLineToPoint: CGPointMake(8.14, 9.5)];
            [bezier26Path addLineToPoint: CGPointMake(8.25, 9.23)];
            [bezier26Path addLineToPoint: CGPointMake(8.25, 9.5)];
            [bezier26Path addLineToPoint: CGPointMake(11.3, 9.5)];
            [bezier26Path addLineToPoint: CGPointMake(11.3, 8.94)];
            [bezier26Path addLineToPoint: CGPointMake(11.36, 8.94)];
            [bezier26Path addCurveToPoint: CGPointMake(11.41, 9.01) controlPoint1: CGPointMake(11.4, 8.94) controlPoint2: CGPointMake(11.41, 8.95)];
            [bezier26Path addLineToPoint: CGPointMake(11.41, 9.5)];
            [bezier26Path addLineToPoint: CGPointMake(12.99, 9.5)];
            [bezier26Path addLineToPoint: CGPointMake(12.99, 9.37)];
            [bezier26Path addCurveToPoint: CGPointMake(13.58, 9.5) controlPoint1: CGPointMake(13.12, 9.44) controlPoint2: CGPointMake(13.32, 9.5)];
            [bezier26Path addLineToPoint: CGPointMake(14.25, 9.5)];
            [bezier26Path addLineToPoint: CGPointMake(14.4, 9.16)];
            [bezier26Path addLineToPoint: CGPointMake(14.72, 9.16)];
            [bezier26Path addLineToPoint: CGPointMake(14.86, 9.5)];
            [bezier26Path addLineToPoint: CGPointMake(16.14, 9.5)];
            [bezier26Path addLineToPoint: CGPointMake(16.14, 9.18)];
            [bezier26Path addLineToPoint: CGPointMake(16.33, 9.5)];
            [bezier26Path addLineToPoint: CGPointMake(17.36, 9.5)];
            [bezier26Path addLineToPoint: CGPointMake(17.36, 7.36)];
            [bezier26Path addLineToPoint: CGPointMake(16.34, 7.36)];
            [bezier26Path addLineToPoint: CGPointMake(16.34, 7.61)];
            [bezier26Path addLineToPoint: CGPointMake(16.2, 7.36)];
            [bezier26Path addLineToPoint: CGPointMake(15.16, 7.36)];
            [bezier26Path addLineToPoint: CGPointMake(15.16, 7.61)];
            [bezier26Path addLineToPoint: CGPointMake(15.03, 7.36)];
            [bezier26Path addLineToPoint: CGPointMake(13.6, 7.36)];
            [bezier26Path addCurveToPoint: CGPointMake(12.99, 7.48) controlPoint1: CGPointMake(13.37, 7.36) controlPoint2: CGPointMake(13.16, 7.39)];
            [bezier26Path addLineToPoint: CGPointMake(12.99, 7.36)];
            [bezier26Path addLineToPoint: CGPointMake(12.02, 7.36)];
            [bezier26Path addLineToPoint: CGPointMake(12.02, 7.48)];
            [bezier26Path addCurveToPoint: CGPointMake(11.61, 7.36) controlPoint1: CGPointMake(11.91, 7.39) controlPoint2: CGPointMake(11.77, 7.36)];
            [bezier26Path addLineToPoint: CGPointMake(8.06, 7.36)];
            [bezier26Path addLineToPoint: CGPointMake(7.82, 7.92)];
            [bezier26Path addLineToPoint: CGPointMake(7.58, 7.36)];
            [bezier26Path addLineToPoint: CGPointMake(6.46, 7.36)];
            [bezier26Path addLineToPoint: CGPointMake(6.46, 7.61)];
            [bezier26Path addLineToPoint: CGPointMake(6.33, 7.36)];
            [bezier26Path addLineToPoint: CGPointMake(5.38, 7.36)];
            [bezier26Path addLineToPoint: CGPointMake(4.94, 8.38)];
            [bezier26Path addLineToPoint: CGPointMake(4.94, 9.5)];
            [bezier26Path closePath];
            [bezier26Path moveToPoint: CGPointMake(17.01, 9.2)];
            [bezier26Path addLineToPoint: CGPointMake(16.5, 9.2)];
            [bezier26Path addLineToPoint: CGPointMake(15.8, 8.05)];
            [bezier26Path addLineToPoint: CGPointMake(15.8, 9.2)];
            [bezier26Path addLineToPoint: CGPointMake(15.06, 9.2)];
            [bezier26Path addLineToPoint: CGPointMake(14.92, 8.86)];
            [bezier26Path addLineToPoint: CGPointMake(14.16, 8.86)];
            [bezier26Path addLineToPoint: CGPointMake(14.02, 9.2)];
            [bezier26Path addLineToPoint: CGPointMake(13.59, 9.2)];
            [bezier26Path addCurveToPoint: CGPointMake(13.06, 9.03) controlPoint1: CGPointMake(13.41, 9.2) controlPoint2: CGPointMake(13.19, 9.16)];
            [bezier26Path addCurveToPoint: CGPointMake(12.86, 8.45) controlPoint1: CGPointMake(12.93, 8.9) controlPoint2: CGPointMake(12.86, 8.72)];
            [bezier26Path addCurveToPoint: CGPointMake(13.06, 7.85) controlPoint1: CGPointMake(12.86, 8.22) controlPoint2: CGPointMake(12.9, 8.02)];
            [bezier26Path addCurveToPoint: CGPointMake(13.62, 7.67) controlPoint1: CGPointMake(13.18, 7.73) controlPoint2: CGPointMake(13.37, 7.67)];
            [bezier26Path addLineToPoint: CGPointMake(13.97, 7.67)];
            [bezier26Path addLineToPoint: CGPointMake(13.97, 8)];
            [bezier26Path addLineToPoint: CGPointMake(13.63, 8)];
            [bezier26Path addCurveToPoint: CGPointMake(13.35, 8.09) controlPoint1: CGPointMake(13.5, 8) controlPoint2: CGPointMake(13.42, 8.02)];
            [bezier26Path addCurveToPoint: CGPointMake(13.24, 8.44) controlPoint1: CGPointMake(13.29, 8.16) controlPoint2: CGPointMake(13.24, 8.28)];
            [bezier26Path addCurveToPoint: CGPointMake(13.34, 8.8) controlPoint1: CGPointMake(13.24, 8.6) controlPoint2: CGPointMake(13.27, 8.72)];
            [bezier26Path addCurveToPoint: CGPointMake(13.59, 8.88) controlPoint1: CGPointMake(13.39, 8.86) controlPoint2: CGPointMake(13.5, 8.88)];
            [bezier26Path addLineToPoint: CGPointMake(13.76, 8.88)];
            [bezier26Path addLineToPoint: CGPointMake(14.27, 7.68)];
            [bezier26Path addLineToPoint: CGPointMake(14.82, 7.68)];
            [bezier26Path addLineToPoint: CGPointMake(15.44, 9.13)];
            [bezier26Path addLineToPoint: CGPointMake(15.44, 7.67)];
            [bezier26Path addLineToPoint: CGPointMake(16, 7.67)];
            [bezier26Path addLineToPoint: CGPointMake(16.64, 8.74)];
            [bezier26Path addLineToPoint: CGPointMake(16.64, 7.67)];
            [bezier26Path addLineToPoint: CGPointMake(17.01, 7.67)];
            [bezier26Path addLineToPoint: CGPointMake(17.01, 9.2)];
            [bezier26Path closePath];
            [bezier26Path moveToPoint: CGPointMake(12.69, 9.2)];
            [bezier26Path addLineToPoint: CGPointMake(12.32, 9.2)];
            [bezier26Path addLineToPoint: CGPointMake(12.32, 7.67)];
            [bezier26Path addLineToPoint: CGPointMake(12.69, 7.67)];
            [bezier26Path addLineToPoint: CGPointMake(12.69, 9.2)];
            [bezier26Path closePath];
            [bezier26Path moveToPoint: CGPointMake(12.1, 8.08)];
            [bezier26Path addCurveToPoint: CGPointMake(11.84, 8.49) controlPoint1: CGPointMake(12.1, 8.32) controlPoint2: CGPointMake(11.94, 8.45)];
            [bezier26Path addCurveToPoint: CGPointMake(12.02, 8.62) controlPoint1: CGPointMake(11.92, 8.52) controlPoint2: CGPointMake(11.99, 8.57)];
            [bezier26Path addCurveToPoint: CGPointMake(12.08, 8.9) controlPoint1: CGPointMake(12.07, 8.7) controlPoint2: CGPointMake(12.08, 8.77)];
            [bezier26Path addLineToPoint: CGPointMake(12.08, 9.2)];
            [bezier26Path addLineToPoint: CGPointMake(11.71, 9.2)];
            [bezier26Path addLineToPoint: CGPointMake(11.71, 9.01)];
            [bezier26Path addCurveToPoint: CGPointMake(11.65, 8.71) controlPoint1: CGPointMake(11.71, 8.92) controlPoint2: CGPointMake(11.72, 8.79)];
            [bezier26Path addCurveToPoint: CGPointMake(11.39, 8.64) controlPoint1: CGPointMake(11.6, 8.66) controlPoint2: CGPointMake(11.52, 8.64)];
            [bezier26Path addLineToPoint: CGPointMake(11, 8.64)];
            [bezier26Path addLineToPoint: CGPointMake(11, 9.2)];
            [bezier26Path addLineToPoint: CGPointMake(10.63, 9.2)];
            [bezier26Path addLineToPoint: CGPointMake(10.63, 7.67)];
            [bezier26Path addLineToPoint: CGPointMake(11.47, 7.67)];
            [bezier26Path addCurveToPoint: CGPointMake(11.91, 7.75) controlPoint1: CGPointMake(11.65, 7.67) controlPoint2: CGPointMake(11.79, 7.68)];
            [bezier26Path addCurveToPoint: CGPointMake(12.1, 8.08) controlPoint1: CGPointMake(12.03, 7.81) controlPoint2: CGPointMake(12.1, 7.91)];
            [bezier26Path closePath];
            [bezier26Path moveToPoint: CGPointMake(10.38, 9.2)];
            [bezier26Path addLineToPoint: CGPointMake(9.16, 9.2)];
            [bezier26Path addLineToPoint: CGPointMake(9.16, 7.67)];
            [bezier26Path addLineToPoint: CGPointMake(10.38, 7.67)];
            [bezier26Path addLineToPoint: CGPointMake(10.38, 7.99)];
            [bezier26Path addLineToPoint: CGPointMake(9.53, 7.99)];
            [bezier26Path addLineToPoint: CGPointMake(9.53, 8.27)];
            [bezier26Path addLineToPoint: CGPointMake(10.36, 8.27)];
            [bezier26Path addLineToPoint: CGPointMake(10.36, 8.58)];
            [bezier26Path addLineToPoint: CGPointMake(9.53, 8.58)];
            [bezier26Path addLineToPoint: CGPointMake(9.53, 8.89)];
            [bezier26Path addLineToPoint: CGPointMake(10.38, 8.89)];
            [bezier26Path addLineToPoint: CGPointMake(10.38, 9.2)];
            [bezier26Path closePath];
            [bezier26Path moveToPoint: CGPointMake(8.88, 9.2)];
            [bezier26Path addLineToPoint: CGPointMake(8.51, 9.2)];
            [bezier26Path addLineToPoint: CGPointMake(8.51, 8)];
            [bezier26Path addLineToPoint: CGPointMake(7.98, 9.2)];
            [bezier26Path addLineToPoint: CGPointMake(7.66, 9.2)];
            [bezier26Path addLineToPoint: CGPointMake(7.13, 8)];
            [bezier26Path addLineToPoint: CGPointMake(7.13, 9.2)];
            [bezier26Path addLineToPoint: CGPointMake(6.38, 9.2)];
            [bezier26Path addLineToPoint: CGPointMake(6.24, 8.86)];
            [bezier26Path addLineToPoint: CGPointMake(5.48, 8.86)];
            [bezier26Path addLineToPoint: CGPointMake(5.34, 9.2)];
            [bezier26Path addLineToPoint: CGPointMake(4.94, 9.2)];
            [bezier26Path addLineToPoint: CGPointMake(5.6, 7.67)];
            [bezier26Path addLineToPoint: CGPointMake(6.14, 7.67)];
            [bezier26Path addLineToPoint: CGPointMake(6.76, 9.12)];
            [bezier26Path addLineToPoint: CGPointMake(6.76, 7.67)];
            [bezier26Path addLineToPoint: CGPointMake(7.36, 7.67)];
            [bezier26Path addLineToPoint: CGPointMake(7.84, 8.71)];
            [bezier26Path addLineToPoint: CGPointMake(8.28, 7.67)];
            [bezier26Path addLineToPoint: CGPointMake(8.89, 7.67)];
            [bezier26Path addLineToPoint: CGPointMake(8.89, 9.2)];
            [bezier26Path addLineToPoint: CGPointMake(8.88, 9.2)];
            [bezier26Path closePath];
            [bezier26Path moveToPoint: CGPointMake(14.79, 8.54)];
            [bezier26Path addLineToPoint: CGPointMake(14.53, 7.93)];
            [bezier26Path addLineToPoint: CGPointMake(14.28, 8.54)];
            [bezier26Path addLineToPoint: CGPointMake(14.79, 8.54)];
            [bezier26Path closePath];
            [bezier26Path moveToPoint: CGPointMake(11.62, 8.3)];
            [bezier26Path addCurveToPoint: CGPointMake(11.44, 8.33) controlPoint1: CGPointMake(11.57, 8.33) controlPoint2: CGPointMake(11.51, 8.33)];
            [bezier26Path addLineToPoint: CGPointMake(11, 8.33)];
            [bezier26Path addLineToPoint: CGPointMake(11, 7.99)];
            [bezier26Path addLineToPoint: CGPointMake(11.45, 7.99)];
            [bezier26Path addCurveToPoint: CGPointMake(11.62, 8.02) controlPoint1: CGPointMake(11.51, 7.99) controlPoint2: CGPointMake(11.58, 7.99)];
            [bezier26Path addCurveToPoint: CGPointMake(11.69, 8.16) controlPoint1: CGPointMake(11.67, 8.04) controlPoint2: CGPointMake(11.69, 8.09)];
            [bezier26Path addCurveToPoint: CGPointMake(11.62, 8.3) controlPoint1: CGPointMake(11.69, 8.22) controlPoint2: CGPointMake(11.67, 8.27)];
            [bezier26Path closePath];
            [bezier26Path moveToPoint: CGPointMake(6.11, 8.54)];
            [bezier26Path addLineToPoint: CGPointMake(5.86, 7.93)];
            [bezier26Path addLineToPoint: CGPointMake(5.61, 8.54)];
            [bezier26Path addLineToPoint: CGPointMake(6.11, 8.54)];
            [bezier26Path closePath];
            bezier26Path.miterLimit = 4;

            [fillColor4 setFill];
            [bezier26Path fill];


            //// Bezier 27 Drawing
            UIBezierPath* bezier27Path = [UIBezierPath bezierPath];
            [bezier27Path moveToPoint: CGPointMake(12.02, 10.8)];
            [bezier27Path addCurveToPoint: CGPointMake(11.38, 11.31) controlPoint1: CGPointMake(12.02, 11.22) controlPoint2: CGPointMake(11.7, 11.31)];
            [bezier27Path addLineToPoint: CGPointMake(10.92, 11.31)];
            [bezier27Path addLineToPoint: CGPointMake(10.92, 11.82)];
            [bezier27Path addLineToPoint: CGPointMake(10.21, 11.82)];
            [bezier27Path addLineToPoint: CGPointMake(9.76, 11.31)];
            [bezier27Path addLineToPoint: CGPointMake(9.3, 11.83)];
            [bezier27Path addLineToPoint: CGPointMake(7.86, 11.83)];
            [bezier27Path addLineToPoint: CGPointMake(7.86, 10.3)];
            [bezier27Path addLineToPoint: CGPointMake(9.33, 10.3)];
            [bezier27Path addLineToPoint: CGPointMake(9.78, 10.8)];
            [bezier27Path addLineToPoint: CGPointMake(10.24, 10.3)];
            [bezier27Path addLineToPoint: CGPointMake(11.41, 10.3)];
            [bezier27Path addCurveToPoint: CGPointMake(12.02, 10.8) controlPoint1: CGPointMake(11.69, 10.3) controlPoint2: CGPointMake(12.02, 10.38)];
            [bezier27Path closePath];
            [bezier27Path moveToPoint: CGPointMake(9.12, 11.51)];
            [bezier27Path addLineToPoint: CGPointMake(8.22, 11.51)];
            [bezier27Path addLineToPoint: CGPointMake(8.22, 11.21)];
            [bezier27Path addLineToPoint: CGPointMake(9.02, 11.21)];
            [bezier27Path addLineToPoint: CGPointMake(9.02, 10.9)];
            [bezier27Path addLineToPoint: CGPointMake(8.22, 10.9)];
            [bezier27Path addLineToPoint: CGPointMake(8.22, 10.62)];
            [bezier27Path addLineToPoint: CGPointMake(9.14, 10.62)];
            [bezier27Path addLineToPoint: CGPointMake(9.54, 11.07)];
            [bezier27Path addLineToPoint: CGPointMake(9.12, 11.51)];
            [bezier27Path closePath];
            [bezier27Path moveToPoint: CGPointMake(10.57, 11.69)];
            [bezier27Path addLineToPoint: CGPointMake(10.01, 11.07)];
            [bezier27Path addLineToPoint: CGPointMake(10.57, 10.47)];
            [bezier27Path addLineToPoint: CGPointMake(10.57, 11.69)];
            [bezier27Path closePath];
            [bezier27Path moveToPoint: CGPointMake(11.4, 11.01)];
            [bezier27Path addLineToPoint: CGPointMake(10.93, 11.01)];
            [bezier27Path addLineToPoint: CGPointMake(10.93, 10.62)];
            [bezier27Path addLineToPoint: CGPointMake(11.41, 10.62)];
            [bezier27Path addCurveToPoint: CGPointMake(11.63, 10.81) controlPoint1: CGPointMake(11.54, 10.62) controlPoint2: CGPointMake(11.63, 10.67)];
            [bezier27Path addCurveToPoint: CGPointMake(11.4, 11.01) controlPoint1: CGPointMake(11.63, 10.94) controlPoint2: CGPointMake(11.54, 11.01)];
            [bezier27Path closePath];
            [bezier27Path moveToPoint: CGPointMake(13.87, 10.3)];
            [bezier27Path addLineToPoint: CGPointMake(15.09, 10.3)];
            [bezier27Path addLineToPoint: CGPointMake(15.09, 10.62)];
            [bezier27Path addLineToPoint: CGPointMake(14.23, 10.62)];
            [bezier27Path addLineToPoint: CGPointMake(14.23, 10.9)];
            [bezier27Path addLineToPoint: CGPointMake(15.06, 10.9)];
            [bezier27Path addLineToPoint: CGPointMake(15.06, 11.21)];
            [bezier27Path addLineToPoint: CGPointMake(14.23, 11.21)];
            [bezier27Path addLineToPoint: CGPointMake(14.23, 11.51)];
            [bezier27Path addLineToPoint: CGPointMake(15.09, 11.51)];
            [bezier27Path addLineToPoint: CGPointMake(15.09, 11.83)];
            [bezier27Path addLineToPoint: CGPointMake(13.87, 11.83)];
            [bezier27Path addLineToPoint: CGPointMake(13.87, 10.3)];
            [bezier27Path closePath];
            [bezier27Path moveToPoint: CGPointMake(13.41, 11.12)];
            [bezier27Path addCurveToPoint: CGPointMake(13.59, 11.25) controlPoint1: CGPointMake(13.49, 11.15) controlPoint2: CGPointMake(13.56, 11.2)];
            [bezier27Path addCurveToPoint: CGPointMake(13.65, 11.53) controlPoint1: CGPointMake(13.64, 11.32) controlPoint2: CGPointMake(13.65, 11.39)];
            [bezier27Path addLineToPoint: CGPointMake(13.65, 11.83)];
            [bezier27Path addLineToPoint: CGPointMake(13.29, 11.83)];
            [bezier27Path addLineToPoint: CGPointMake(13.29, 11.64)];
            [bezier27Path addCurveToPoint: CGPointMake(13.23, 11.34) controlPoint1: CGPointMake(13.29, 11.55) controlPoint2: CGPointMake(13.3, 11.41)];
            [bezier27Path addCurveToPoint: CGPointMake(12.97, 11.27) controlPoint1: CGPointMake(13.18, 11.28) controlPoint2: CGPointMake(13.1, 11.27)];
            [bezier27Path addLineToPoint: CGPointMake(12.58, 11.27)];
            [bezier27Path addLineToPoint: CGPointMake(12.58, 11.83)];
            [bezier27Path addLineToPoint: CGPointMake(12.2, 11.83)];
            [bezier27Path addLineToPoint: CGPointMake(12.2, 10.3)];
            [bezier27Path addLineToPoint: CGPointMake(13.04, 10.3)];
            [bezier27Path addCurveToPoint: CGPointMake(13.48, 10.37) controlPoint1: CGPointMake(13.23, 10.3) controlPoint2: CGPointMake(13.36, 10.31)];
            [bezier27Path addCurveToPoint: CGPointMake(13.67, 10.71) controlPoint1: CGPointMake(13.59, 10.44) controlPoint2: CGPointMake(13.67, 10.54)];
            [bezier27Path addCurveToPoint: CGPointMake(13.41, 11.12) controlPoint1: CGPointMake(13.67, 10.96) controlPoint2: CGPointMake(13.5, 11.08)];
            [bezier27Path closePath];
            [bezier27Path moveToPoint: CGPointMake(13.19, 10.93)];
            [bezier27Path addCurveToPoint: CGPointMake(13.01, 10.96) controlPoint1: CGPointMake(13.14, 10.96) controlPoint2: CGPointMake(13.08, 10.96)];
            [bezier27Path addLineToPoint: CGPointMake(12.56, 10.96)];
            [bezier27Path addLineToPoint: CGPointMake(12.56, 10.62)];
            [bezier27Path addLineToPoint: CGPointMake(13.01, 10.62)];
            [bezier27Path addCurveToPoint: CGPointMake(13.19, 10.65) controlPoint1: CGPointMake(13.08, 10.62) controlPoint2: CGPointMake(13.14, 10.62)];
            [bezier27Path addCurveToPoint: CGPointMake(13.26, 10.79) controlPoint1: CGPointMake(13.24, 10.68) controlPoint2: CGPointMake(13.26, 10.72)];
            [bezier27Path addCurveToPoint: CGPointMake(13.19, 10.93) controlPoint1: CGPointMake(13.26, 10.85) controlPoint2: CGPointMake(13.23, 10.9)];
            [bezier27Path closePath];
            [bezier27Path moveToPoint: CGPointMake(16.48, 11.02)];
            [bezier27Path addCurveToPoint: CGPointMake(16.59, 11.34) controlPoint1: CGPointMake(16.55, 11.1) controlPoint2: CGPointMake(16.59, 11.19)];
            [bezier27Path addCurveToPoint: CGPointMake(16.01, 11.82) controlPoint1: CGPointMake(16.59, 11.67) controlPoint2: CGPointMake(16.38, 11.82)];
            [bezier27Path addLineToPoint: CGPointMake(15.3, 11.82)];
            [bezier27Path addLineToPoint: CGPointMake(15.3, 11.5)];
            [bezier27Path addLineToPoint: CGPointMake(16.01, 11.5)];
            [bezier27Path addCurveToPoint: CGPointMake(16.16, 11.46) controlPoint1: CGPointMake(16.08, 11.5) controlPoint2: CGPointMake(16.13, 11.49)];
            [bezier27Path addCurveToPoint: CGPointMake(16.2, 11.36) controlPoint1: CGPointMake(16.18, 11.44) controlPoint2: CGPointMake(16.2, 11.4)];
            [bezier27Path addCurveToPoint: CGPointMake(16.16, 11.26) controlPoint1: CGPointMake(16.2, 11.31) controlPoint2: CGPointMake(16.18, 11.28)];
            [bezier27Path addCurveToPoint: CGPointMake(16.03, 11.22) controlPoint1: CGPointMake(16.13, 11.24) controlPoint2: CGPointMake(16.09, 11.23)];
            [bezier27Path addCurveToPoint: CGPointMake(15.26, 10.75) controlPoint1: CGPointMake(15.69, 11.21) controlPoint2: CGPointMake(15.26, 11.23)];
            [bezier27Path addCurveToPoint: CGPointMake(15.78, 10.29) controlPoint1: CGPointMake(15.26, 10.53) controlPoint2: CGPointMake(15.4, 10.29)];
            [bezier27Path addLineToPoint: CGPointMake(16.51, 10.29)];
            [bezier27Path addLineToPoint: CGPointMake(16.51, 10.62)];
            [bezier27Path addLineToPoint: CGPointMake(15.84, 10.62)];
            [bezier27Path addCurveToPoint: CGPointMake(15.7, 10.65) controlPoint1: CGPointMake(15.78, 10.62) controlPoint2: CGPointMake(15.73, 10.62)];
            [bezier27Path addCurveToPoint: CGPointMake(15.65, 10.76) controlPoint1: CGPointMake(15.66, 10.67) controlPoint2: CGPointMake(15.65, 10.71)];
            [bezier27Path addCurveToPoint: CGPointMake(15.73, 10.87) controlPoint1: CGPointMake(15.65, 10.82) controlPoint2: CGPointMake(15.68, 10.86)];
            [bezier27Path addCurveToPoint: CGPointMake(15.87, 10.89) controlPoint1: CGPointMake(15.77, 10.88) controlPoint2: CGPointMake(15.81, 10.89)];
            [bezier27Path addLineToPoint: CGPointMake(16.07, 10.89)];
            [bezier27Path addCurveToPoint: CGPointMake(16.48, 11.02) controlPoint1: CGPointMake(16.27, 10.91) controlPoint2: CGPointMake(16.4, 10.94)];
            [bezier27Path closePath];
            [bezier27Path moveToPoint: CGPointMake(17.94, 11.63)];
            [bezier27Path addCurveToPoint: CGPointMake(17.44, 11.83) controlPoint1: CGPointMake(17.85, 11.76) controlPoint2: CGPointMake(17.68, 11.83)];
            [bezier27Path addLineToPoint: CGPointMake(16.73, 11.83)];
            [bezier27Path addLineToPoint: CGPointMake(16.73, 11.5)];
            [bezier27Path addLineToPoint: CGPointMake(17.43, 11.5)];
            [bezier27Path addCurveToPoint: CGPointMake(17.58, 11.46) controlPoint1: CGPointMake(17.5, 11.5) controlPoint2: CGPointMake(17.55, 11.49)];
            [bezier27Path addCurveToPoint: CGPointMake(17.62, 11.36) controlPoint1: CGPointMake(17.61, 11.44) controlPoint2: CGPointMake(17.62, 11.4)];
            [bezier27Path addCurveToPoint: CGPointMake(17.58, 11.26) controlPoint1: CGPointMake(17.62, 11.31) controlPoint2: CGPointMake(17.6, 11.28)];
            [bezier27Path addCurveToPoint: CGPointMake(17.45, 11.22) controlPoint1: CGPointMake(17.55, 11.24) controlPoint2: CGPointMake(17.52, 11.23)];
            [bezier27Path addCurveToPoint: CGPointMake(16.68, 10.75) controlPoint1: CGPointMake(17.11, 11.21) controlPoint2: CGPointMake(16.68, 11.23)];
            [bezier27Path addCurveToPoint: CGPointMake(17.2, 10.29) controlPoint1: CGPointMake(16.68, 10.53) controlPoint2: CGPointMake(16.82, 10.29)];
            [bezier27Path addLineToPoint: CGPointMake(17.93, 10.29)];
            [bezier27Path addLineToPoint: CGPointMake(17.93, 10)];
            [bezier27Path addLineToPoint: CGPointMake(17.25, 10)];
            [bezier27Path addCurveToPoint: CGPointMake(16.79, 10.13) controlPoint1: CGPointMake(17.05, 10) controlPoint2: CGPointMake(16.9, 10.05)];
            [bezier27Path addLineToPoint: CGPointMake(16.79, 10)];
            [bezier27Path addLineToPoint: CGPointMake(15.79, 10)];
            [bezier27Path addCurveToPoint: CGPointMake(15.35, 10.13) controlPoint1: CGPointMake(15.63, 10) controlPoint2: CGPointMake(15.44, 10.04)];
            [bezier27Path addLineToPoint: CGPointMake(15.35, 10)];
            [bezier27Path addLineToPoint: CGPointMake(13.56, 10)];
            [bezier27Path addLineToPoint: CGPointMake(13.56, 10.13)];
            [bezier27Path addCurveToPoint: CGPointMake(13.09, 10) controlPoint1: CGPointMake(13.44, 10.02) controlPoint2: CGPointMake(13.2, 10)];
            [bezier27Path addLineToPoint: CGPointMake(11.91, 10)];
            [bezier27Path addLineToPoint: CGPointMake(11.91, 10.13)];
            [bezier27Path addCurveToPoint: CGPointMake(11.4, 10) controlPoint1: CGPointMake(11.8, 10.01) controlPoint2: CGPointMake(11.55, 10)];
            [bezier27Path addLineToPoint: CGPointMake(10.08, 10)];
            [bezier27Path addLineToPoint: CGPointMake(9.78, 10.33)];
            [bezier27Path addLineToPoint: CGPointMake(9.5, 10)];
            [bezier27Path addLineToPoint: CGPointMake(7.53, 10)];
            [bezier27Path addLineToPoint: CGPointMake(7.53, 12.14)];
            [bezier27Path addLineToPoint: CGPointMake(9.46, 12.14)];
            [bezier27Path addLineToPoint: CGPointMake(9.77, 11.81)];
            [bezier27Path addLineToPoint: CGPointMake(10.07, 12.14)];
            [bezier27Path addLineToPoint: CGPointMake(11.26, 12.14)];
            [bezier27Path addLineToPoint: CGPointMake(11.26, 11.64)];
            [bezier27Path addLineToPoint: CGPointMake(11.38, 11.64)];
            [bezier27Path addCurveToPoint: CGPointMake(11.89, 11.57) controlPoint1: CGPointMake(11.54, 11.64) controlPoint2: CGPointMake(11.72, 11.64)];
            [bezier27Path addLineToPoint: CGPointMake(11.89, 12.15)];
            [bezier27Path addLineToPoint: CGPointMake(12.87, 12.15)];
            [bezier27Path addLineToPoint: CGPointMake(12.87, 11.59)];
            [bezier27Path addLineToPoint: CGPointMake(12.92, 11.59)];
            [bezier27Path addCurveToPoint: CGPointMake(12.99, 11.65) controlPoint1: CGPointMake(12.98, 11.59) controlPoint2: CGPointMake(12.99, 11.59)];
            [bezier27Path addLineToPoint: CGPointMake(12.99, 12.14)];
            [bezier27Path addLineToPoint: CGPointMake(15.98, 12.14)];
            [bezier27Path addCurveToPoint: CGPointMake(16.48, 12) controlPoint1: CGPointMake(16.17, 12.14) controlPoint2: CGPointMake(16.37, 12.09)];
            [bezier27Path addLineToPoint: CGPointMake(16.48, 12.14)];
            [bezier27Path addLineToPoint: CGPointMake(17.43, 12.14)];
            [bezier27Path addCurveToPoint: CGPointMake(17.97, 12.04) controlPoint1: CGPointMake(17.63, 12.14) controlPoint2: CGPointMake(17.82, 12.11)];
            [bezier27Path addLineToPoint: CGPointMake(17.97, 11.63)];
            [bezier27Path addLineToPoint: CGPointMake(17.94, 11.63)];
            [bezier27Path closePath];
            [bezier27Path moveToPoint: CGPointMake(17.94, 10.63)];
            [bezier27Path addLineToPoint: CGPointMake(17.27, 10.63)];
            [bezier27Path addCurveToPoint: CGPointMake(17.12, 10.66) controlPoint1: CGPointMake(17.2, 10.63) controlPoint2: CGPointMake(17.16, 10.63)];
            [bezier27Path addCurveToPoint: CGPointMake(17.06, 10.77) controlPoint1: CGPointMake(17.08, 10.68) controlPoint2: CGPointMake(17.06, 10.72)];
            [bezier27Path addCurveToPoint: CGPointMake(17.15, 10.88) controlPoint1: CGPointMake(17.06, 10.83) controlPoint2: CGPointMake(17.09, 10.87)];
            [bezier27Path addCurveToPoint: CGPointMake(17.29, 10.9) controlPoint1: CGPointMake(17.19, 10.89) controlPoint2: CGPointMake(17.23, 10.9)];
            [bezier27Path addLineToPoint: CGPointMake(17.49, 10.9)];
            [bezier27Path addCurveToPoint: CGPointMake(17.91, 11.02) controlPoint1: CGPointMake(17.69, 10.91) controlPoint2: CGPointMake(17.82, 10.94)];
            [bezier27Path addCurveToPoint: CGPointMake(17.94, 11.06) controlPoint1: CGPointMake(17.92, 11.03) controlPoint2: CGPointMake(17.93, 11.05)];
            [bezier27Path addLineToPoint: CGPointMake(17.94, 10.63)];
            [bezier27Path closePath];
            bezier27Path.miterLimit = 4;

            [fillColor4 setFill];
            [bezier27Path fill];
        }
    }


    //// Cleanup
    CGGradientRelease(sVGID_5_2);
    CGColorSpaceRelease(colorSpace);
}

- (void)drawCardCvc {
    //// Color Declarations
    UIColor* fillColor = [UIColor colorWithRed: 0.651 green: 0.651 blue: 0.651 alpha: 1];
    UIColor* fillColor2 = [UIColor colorWithRed: 0.951 green: 0.956 blue: 0.956 alpha: 1];
    UIColor* fillColor4 = [UIColor colorWithRed: 1 green: 1 blue: 1 alpha: 1];
    UIColor* fillColor5 = [UIColor colorWithRed: 0.89 green: 0.13 blue: 0.139 alpha: 1];
    UIColor* fillColor6 = [UIColor colorWithRed: 0.232 green: 0.232 blue: 0.232 alpha: 1];
    UIColor* fillColor7 = [UIColor colorWithRed: 0.073 green: 0.322 blue: 0.491 alpha: 1];

    //// ic_card_cvc Group
    {
        //// Group 2
        {
            //// Bezier Drawing
            UIBezierPath* bezierPath = [UIBezierPath bezierPath];
            [bezierPath moveToPoint: CGPointMake(39.97, 0)];
            [bezierPath addLineToPoint: CGPointMake(2.04, 0)];
            [bezierPath addCurveToPoint: CGPointMake(0, 2.02) controlPoint1: CGPointMake(0.91, 0) controlPoint2: CGPointMake(0, 0.91)];
            [bezierPath addLineToPoint: CGPointMake(0, 3.04)];
            [bezierPath addLineToPoint: CGPointMake(0, 23.96)];
            [bezierPath addLineToPoint: CGPointMake(0, 24.98)];
            [bezierPath addCurveToPoint: CGPointMake(2.04, 27) controlPoint1: CGPointMake(0, 26.09) controlPoint2: CGPointMake(0.91, 27)];
            [bezierPath addLineToPoint: CGPointMake(39.97, 27)];
            [bezierPath addCurveToPoint: CGPointMake(42, 24.98) controlPoint1: CGPointMake(41.09, 27) controlPoint2: CGPointMake(42, 26.09)];
            [bezierPath addLineToPoint: CGPointMake(42, 2.02)];
            [bezierPath addCurveToPoint: CGPointMake(39.97, 0) controlPoint1: CGPointMake(42, 0.91) controlPoint2: CGPointMake(41.09, 0)];
            [bezierPath closePath];
            bezierPath.miterLimit = 4;

            [fillColor setFill];
            [bezierPath fill];


            //// Rectangle Drawing
            UIBezierPath* rectanglePath = [UIBezierPath bezierPathWithRoundedRect: CGRectMake(0.5, 0.5, 41, 25.5) cornerRadius: 1.6];
            [fillColor2 setFill];
            [rectanglePath fill];
        }


        //// Rectangle 2 Drawing
        UIBezierPath* rectangle2Path = [UIBezierPath bezierPathWithRect: CGRectMake(0.5, 3.63, 41, 5.09)];
        [fillColor6 setFill];
        [rectangle2Path fill];


        //// Group 3
        {
            //// Bezier 2 Drawing
            UIBezierPath* bezier2Path = [UIBezierPath bezierPath];
            [bezier2Path moveToPoint: CGPointMake(3.96, 12.08)];
            [bezier2Path addCurveToPoint: CGPointMake(3.36, 12.68) controlPoint1: CGPointMake(3.96, 12.08) controlPoint2: CGPointMake(3.36, 12.08)];
            [bezier2Path addLineToPoint: CGPointMake(3.36, 17.47)];
            [bezier2Path addCurveToPoint: CGPointMake(3.96, 18.07) controlPoint1: CGPointMake(3.36, 17.47) controlPoint2: CGPointMake(3.36, 18.07)];
            [bezier2Path addLineToPoint: CGPointMake(39.06, 18.07)];
            [bezier2Path addCurveToPoint: CGPointMake(39.66, 17.47) controlPoint1: CGPointMake(39.06, 18.07) controlPoint2: CGPointMake(39.66, 18.07)];
            [bezier2Path addLineToPoint: CGPointMake(39.66, 12.68)];
            [bezier2Path addCurveToPoint: CGPointMake(39.06, 12.08) controlPoint1: CGPointMake(39.66, 12.68) controlPoint2: CGPointMake(39.66, 12.08)];
            [bezier2Path addLineToPoint: CGPointMake(3.96, 12.08)];
            [bezier2Path closePath];
            bezier2Path.miterLimit = 4;

            [fillColor4 setFill];
            [bezier2Path fill];


            //// Bezier 3 Drawing
            UIBezierPath* bezier3Path = [UIBezierPath bezierPath];
            [bezier3Path moveToPoint: CGPointMake(24.77, 16.31)];
            [bezier3Path addCurveToPoint: CGPointMake(19.05, 15.86) controlPoint1: CGPointMake(22.95, 15.87) controlPoint2: CGPointMake(20.91, 15.91)];
            [bezier3Path addCurveToPoint: CGPointMake(16.73, 16.01) controlPoint1: CGPointMake(18.26, 15.84) controlPoint2: CGPointMake(17.51, 15.86)];
            [bezier3Path addCurveToPoint: CGPointMake(15.39, 16.24) controlPoint1: CGPointMake(16.28, 16.09) controlPoint2: CGPointMake(15.84, 16.19)];
            [bezier3Path addCurveToPoint: CGPointMake(14.42, 15.73) controlPoint1: CGPointMake(14.93, 16.29) controlPoint2: CGPointMake(14.2, 16.36)];
            [bezier3Path addCurveToPoint: CGPointMake(15.17, 14.03) controlPoint1: CGPointMake(14.62, 15.15) controlPoint2: CGPointMake(14.94, 14.6)];
            [bezier3Path addCurveToPoint: CGPointMake(15.01, 13.95) controlPoint1: CGPointMake(15.21, 13.93) controlPoint2: CGPointMake(15.07, 13.93)];
            [bezier3Path addCurveToPoint: CGPointMake(12.32, 15.42) controlPoint1: CGPointMake(14.05, 14.31) controlPoint2: CGPointMake(13.22, 14.94)];
            [bezier3Path addCurveToPoint: CGPointMake(10.86, 15.58) controlPoint1: CGPointMake(11.96, 15.61) controlPoint2: CGPointMake(11, 16.18)];
            [bezier3Path addCurveToPoint: CGPointMake(10.5, 15.19) controlPoint1: CGPointMake(10.81, 15.39) controlPoint2: CGPointMake(10.67, 15.27)];
            [bezier3Path addCurveToPoint: CGPointMake(8.68, 15.49) controlPoint1: CGPointMake(10.01, 14.96) controlPoint2: CGPointMake(9.15, 15.38)];
            [bezier3Path addCurveToPoint: CGPointMake(8.07, 15.47) controlPoint1: CGPointMake(8.85, 15.45) controlPoint2: CGPointMake(7.9, 15.64)];
            [bezier3Path addCurveToPoint: CGPointMake(8.67, 14.76) controlPoint1: CGPointMake(8.28, 15.24) controlPoint2: CGPointMake(8.47, 15)];
            [bezier3Path addCurveToPoint: CGPointMake(10.04, 13.32) controlPoint1: CGPointMake(9.09, 14.24) controlPoint2: CGPointMake(9.52, 13.76)];
            [bezier3Path addCurveToPoint: CGPointMake(9.91, 13.2) controlPoint1: CGPointMake(10.15, 13.22) controlPoint2: CGPointMake(10.01, 13.16)];
            [bezier3Path addCurveToPoint: CGPointMake(4.74, 16.34) controlPoint1: CGPointMake(7.94, 13.97) controlPoint2: CGPointMake(6.39, 15.03)];
            [bezier3Path addCurveToPoint: CGPointMake(4.89, 16.44) controlPoint1: CGPointMake(4.62, 16.44) controlPoint2: CGPointMake(4.8, 16.51)];
            [bezier3Path addCurveToPoint: CGPointMake(9.53, 13.55) controlPoint1: CGPointMake(6.38, 15.26) controlPoint2: CGPointMake(7.81, 14.29)];
            [bezier3Path addCurveToPoint: CGPointMake(7.68, 15.61) controlPoint1: CGPointMake(8.86, 14.19) controlPoint2: CGPointMake(8.31, 14.92)];
            [bezier3Path addCurveToPoint: CGPointMake(7.74, 15.73) controlPoint1: CGPointMake(7.63, 15.66) controlPoint2: CGPointMake(7.68, 15.72)];
            [bezier3Path addCurveToPoint: CGPointMake(9.08, 15.57) controlPoint1: CGPointMake(8.2, 15.77) controlPoint2: CGPointMake(8.64, 15.68)];
            [bezier3Path addCurveToPoint: CGPointMake(10.68, 16) controlPoint1: CGPointMake(9.73, 15.4) controlPoint2: CGPointMake(10.59, 15.04)];
            [bezier3Path addCurveToPoint: CGPointMake(10.79, 16.05) controlPoint1: CGPointMake(10.68, 16.04) controlPoint2: CGPointMake(10.75, 16.05)];
            [bezier3Path addCurveToPoint: CGPointMake(14.86, 14.2) controlPoint1: CGPointMake(12.32, 15.98) controlPoint2: CGPointMake(13.51, 14.8)];
            [bezier3Path addCurveToPoint: CGPointMake(14.07, 16.16) controlPoint1: CGPointMake(14.58, 14.84) controlPoint2: CGPointMake(14.2, 15.47)];
            [bezier3Path addCurveToPoint: CGPointMake(14.12, 16.23) controlPoint1: CGPointMake(14.06, 16.19) controlPoint2: CGPointMake(14.1, 16.21)];
            [bezier3Path addCurveToPoint: CGPointMake(16.99, 16.13) controlPoint1: CGPointMake(15.01, 16.65) controlPoint2: CGPointMake(16.07, 16.31)];
            [bezier3Path addCurveToPoint: CGPointMake(19.45, 16.05) controlPoint1: CGPointMake(17.8, 15.98) controlPoint2: CGPointMake(18.63, 16.02)];
            [bezier3Path addCurveToPoint: CGPointMake(24.64, 16.48) controlPoint1: CGPointMake(21.13, 16.11) controlPoint2: CGPointMake(22.99, 16.07)];
            [bezier3Path addCurveToPoint: CGPointMake(24.77, 16.31) controlPoint1: CGPointMake(24.74, 16.49) controlPoint2: CGPointMake(24.91, 16.35)];
            [bezier3Path closePath];
            bezier3Path.miterLimit = 4;

            [fillColor7 setFill];
            [bezier3Path fill];
        }


        //// Bezier 4 Drawing
        UIBezierPath* bezier4Path = [UIBezierPath bezierPath];
        [bezier4Path moveToPoint: CGPointMake(38.04, 19.17)];
        [bezier4Path addLineToPoint: CGPointMake(31.39, 19.17)];
        [bezier4Path addCurveToPoint: CGPointMake(27.93, 15.73) controlPoint1: CGPointMake(29.48, 19.17) controlPoint2: CGPointMake(27.93, 17.63)];
        [bezier4Path addLineToPoint: CGPointMake(27.93, 12.99)];
        [bezier4Path addCurveToPoint: CGPointMake(31.39, 9.55) controlPoint1: CGPointMake(27.93, 11.09) controlPoint2: CGPointMake(29.48, 9.55)];
        [bezier4Path addLineToPoint: CGPointMake(38.04, 9.55)];
        [bezier4Path addCurveToPoint: CGPointMake(41.5, 12.99) controlPoint1: CGPointMake(39.95, 9.55) controlPoint2: CGPointMake(41.5, 11.09)];
        [bezier4Path addLineToPoint: CGPointMake(41.5, 15.73)];
        [bezier4Path addCurveToPoint: CGPointMake(38.04, 19.17) controlPoint1: CGPointMake(41.5, 17.63) controlPoint2: CGPointMake(39.95, 19.17)];
        [bezier4Path closePath];
        [bezier4Path moveToPoint: CGPointMake(31.2, 12.08)];
        [bezier4Path addCurveToPoint: CGPointMake(30.35, 12.92) controlPoint1: CGPointMake(30.74, 12.08) controlPoint2: CGPointMake(30.35, 12.47)];
        [bezier4Path addLineToPoint: CGPointMake(30.35, 15.8)];
        [bezier4Path addCurveToPoint: CGPointMake(31.2, 16.64) controlPoint1: CGPointMake(30.35, 16.26) controlPoint2: CGPointMake(30.74, 16.64)];
        [bezier4Path addLineToPoint: CGPointMake(38.22, 16.64)];
        [bezier4Path addCurveToPoint: CGPointMake(39.07, 15.8) controlPoint1: CGPointMake(38.68, 16.64) controlPoint2: CGPointMake(39.07, 16.26)];
        [bezier4Path addLineToPoint: CGPointMake(39.07, 12.92)];
        [bezier4Path addCurveToPoint: CGPointMake(38.22, 12.08) controlPoint1: CGPointMake(39.07, 12.46) controlPoint2: CGPointMake(38.68, 12.08)];
        [bezier4Path addLineToPoint: CGPointMake(31.2, 12.08)];
        [bezier4Path closePath];
        bezier4Path.miterLimit = 4;

        [fillColor5 setFill];
        [bezier4Path fill];


        //// Group 4
        {
            //// Bezier 5 Drawing
            UIBezierPath* bezier5Path = [UIBezierPath bezierPath];
            [bezier5Path moveToPoint: CGPointMake(32.05, 15.15)];
            [bezier5Path addLineToPoint: CGPointMake(32.21, 14.98)];
            [bezier5Path addCurveToPoint: CGPointMake(32.83, 15.27) controlPoint1: CGPointMake(32.34, 15.15) controlPoint2: CGPointMake(32.57, 15.27)];
            [bezier5Path addCurveToPoint: CGPointMake(33.35, 14.85) controlPoint1: CGPointMake(33.15, 15.27) controlPoint2: CGPointMake(33.35, 15.11)];
            [bezier5Path addCurveToPoint: CGPointMake(32.8, 14.46) controlPoint1: CGPointMake(33.35, 14.57) controlPoint2: CGPointMake(33.12, 14.46)];
            [bezier5Path addCurveToPoint: CGPointMake(32.57, 14.46) controlPoint1: CGPointMake(32.71, 14.46) controlPoint2: CGPointMake(32.6, 14.46)];
            [bezier5Path addLineToPoint: CGPointMake(32.57, 14.21)];
            [bezier5Path addCurveToPoint: CGPointMake(32.8, 14.21) controlPoint1: CGPointMake(32.61, 14.21) controlPoint2: CGPointMake(32.71, 14.21)];
            [bezier5Path addCurveToPoint: CGPointMake(33.32, 13.84) controlPoint1: CGPointMake(33.08, 14.21) controlPoint2: CGPointMake(33.32, 14.1)];
            [bezier5Path addCurveToPoint: CGPointMake(32.82, 13.46) controlPoint1: CGPointMake(33.32, 13.59) controlPoint2: CGPointMake(33.09, 13.46)];
            [bezier5Path addCurveToPoint: CGPointMake(32.23, 13.73) controlPoint1: CGPointMake(32.58, 13.46) controlPoint2: CGPointMake(32.4, 13.55)];
            [bezier5Path addLineToPoint: CGPointMake(32.08, 13.56)];
            [bezier5Path addCurveToPoint: CGPointMake(32.84, 13.22) controlPoint1: CGPointMake(32.24, 13.37) controlPoint2: CGPointMake(32.5, 13.22)];
            [bezier5Path addCurveToPoint: CGPointMake(33.59, 13.81) controlPoint1: CGPointMake(33.27, 13.22) controlPoint2: CGPointMake(33.59, 13.44)];
            [bezier5Path addCurveToPoint: CGPointMake(33.11, 14.33) controlPoint1: CGPointMake(33.59, 14.13) controlPoint2: CGPointMake(33.32, 14.29)];
            [bezier5Path addCurveToPoint: CGPointMake(33.62, 14.88) controlPoint1: CGPointMake(33.31, 14.35) controlPoint2: CGPointMake(33.62, 14.52)];
            [bezier5Path addCurveToPoint: CGPointMake(32.83, 15.52) controlPoint1: CGPointMake(33.62, 15.25) controlPoint2: CGPointMake(33.32, 15.52)];
            [bezier5Path addCurveToPoint: CGPointMake(32.05, 15.15) controlPoint1: CGPointMake(32.46, 15.51) controlPoint2: CGPointMake(32.19, 15.35)];
            [bezier5Path closePath];
            bezier5Path.miterLimit = 4;

            [fillColor6 setFill];
            [bezier5Path fill];


            //// Bezier 6 Drawing
            UIBezierPath* bezier6Path = [UIBezierPath bezierPath];
            [bezier6Path moveToPoint: CGPointMake(34.73, 15.47)];
            [bezier6Path addLineToPoint: CGPointMake(34.73, 13.62)];
            [bezier6Path addLineToPoint: CGPointMake(34.37, 14)];
            [bezier6Path addLineToPoint: CGPointMake(34.2, 13.83)];
            [bezier6Path addLineToPoint: CGPointMake(34.76, 13.26)];
            [bezier6Path addLineToPoint: CGPointMake(35, 13.26)];
            [bezier6Path addLineToPoint: CGPointMake(35, 15.48)];
            [bezier6Path addLineToPoint: CGPointMake(34.73, 15.48)];
            [bezier6Path addLineToPoint: CGPointMake(34.73, 15.47)];
            [bezier6Path closePath];
            bezier6Path.miterLimit = 4;

            [fillColor6 setFill];
            [bezier6Path fill];


            //// Bezier 7 Drawing
            UIBezierPath* bezier7Path = [UIBezierPath bezierPath];
            [bezier7Path moveToPoint: CGPointMake(35.85, 15.47)];
            [bezier7Path addLineToPoint: CGPointMake(35.85, 15.25)];
            [bezier7Path addCurveToPoint: CGPointMake(37.08, 13.87) controlPoint1: CGPointMake(36.65, 14.62) controlPoint2: CGPointMake(37.08, 14.25)];
            [bezier7Path addCurveToPoint: CGPointMake(36.62, 13.46) controlPoint1: CGPointMake(37.08, 13.59) controlPoint2: CGPointMake(36.85, 13.46)];
            [bezier7Path addCurveToPoint: CGPointMake(36.02, 13.74) controlPoint1: CGPointMake(36.35, 13.46) controlPoint2: CGPointMake(36.15, 13.57)];
            [bezier7Path addLineToPoint: CGPointMake(35.85, 13.56)];
            [bezier7Path addCurveToPoint: CGPointMake(36.62, 13.21) controlPoint1: CGPointMake(36.02, 13.34) controlPoint2: CGPointMake(36.31, 13.21)];
            [bezier7Path addCurveToPoint: CGPointMake(37.37, 13.86) controlPoint1: CGPointMake(36.99, 13.21) controlPoint2: CGPointMake(37.37, 13.42)];
            [bezier7Path addCurveToPoint: CGPointMake(36.29, 15.21) controlPoint1: CGPointMake(37.37, 14.31) controlPoint2: CGPointMake(36.91, 14.73)];
            [bezier7Path addLineToPoint: CGPointMake(37.38, 15.21)];
            [bezier7Path addLineToPoint: CGPointMake(37.38, 15.46)];
            [bezier7Path addLineToPoint: CGPointMake(35.85, 15.46)];
            [bezier7Path addLineToPoint: CGPointMake(35.85, 15.47)];
            [bezier7Path closePath];
            bezier7Path.miterLimit = 4;

            [fillColor6 setFill];
            [bezier7Path fill];
        }
    }
}

- (void)drawCardMaestro {
    //// Color Declarations
    UIColor* fillColor = [UIColor colorWithRed: 0.651 green: 0.651 blue: 0.651 alpha: 1];
    UIColor* fillColor2 = [UIColor colorWithRed: 0.951 green: 0.956 blue: 0.956 alpha: 1];
    UIColor* fillColor4 = [UIColor colorWithRed: 1 green: 1 blue: 1 alpha: 1];
    UIColor* fillColor8 = [UIColor colorWithRed: 0.847 green: 0 blue: 0.116 alpha: 1];
    UIColor* fillColor9 = [UIColor colorWithRed: 0.112 green: 0.507 blue: 0.787 alpha: 1];
    UIColor* fillColor10 = [UIColor colorWithRed: 0 green: 0 blue: 0 alpha: 1];

    //// ic_card_maestro Group
    {
        //// Group 2
        {
            //// Bezier Drawing
            UIBezierPath* bezierPath = [UIBezierPath bezierPath];
            [bezierPath moveToPoint: CGPointMake(39.97, 0)];
            [bezierPath addLineToPoint: CGPointMake(2.04, 0)];
            [bezierPath addCurveToPoint: CGPointMake(0, 2.02) controlPoint1: CGPointMake(0.91, 0) controlPoint2: CGPointMake(0, 0.91)];
            [bezierPath addLineToPoint: CGPointMake(0, 3.04)];
            [bezierPath addLineToPoint: CGPointMake(0, 23.96)];
            [bezierPath addLineToPoint: CGPointMake(0, 24.98)];
            [bezierPath addCurveToPoint: CGPointMake(2.04, 27) controlPoint1: CGPointMake(0, 26.09) controlPoint2: CGPointMake(0.91, 27)];
            [bezierPath addLineToPoint: CGPointMake(39.97, 27)];
            [bezierPath addCurveToPoint: CGPointMake(42, 24.98) controlPoint1: CGPointMake(41.09, 27) controlPoint2: CGPointMake(42, 26.09)];
            [bezierPath addLineToPoint: CGPointMake(42, 2.02)];
            [bezierPath addCurveToPoint: CGPointMake(39.97, 0) controlPoint1: CGPointMake(42, 0.91) controlPoint2: CGPointMake(41.09, 0)];
            [bezierPath closePath];
            bezierPath.miterLimit = 4;

            [fillColor setFill];
            [bezierPath fill];


            //// Rectangle Drawing
            UIBezierPath* rectanglePath = [UIBezierPath bezierPathWithRoundedRect: CGRectMake(0.5, 0.5, 41, 25.5) cornerRadius: 1.6];
            [fillColor2 setFill];
            [rectanglePath fill];
        }


        //// Group 3
        {
            //// Group 4
            {
                //// Bezier 2 Drawing
                UIBezierPath* bezier2Path = [UIBezierPath bezierPath];
                [bezier2Path moveToPoint: CGPointMake(4.97, 20.62)];
                [bezier2Path addCurveToPoint: CGPointMake(5.13, 20.7) controlPoint1: CGPointMake(5.03, 20.64) controlPoint2: CGPointMake(5.09, 20.67)];
                [bezier2Path addCurveToPoint: CGPointMake(5.22, 20.86) controlPoint1: CGPointMake(5.17, 20.74) controlPoint2: CGPointMake(5.2, 20.79)];
                [bezier2Path addCurveToPoint: CGPointMake(5.25, 21.12) controlPoint1: CGPointMake(5.24, 20.93) controlPoint2: CGPointMake(5.25, 21.01)];
                [bezier2Path addCurveToPoint: CGPointMake(5.22, 21.38) controlPoint1: CGPointMake(5.25, 21.23) controlPoint2: CGPointMake(5.24, 21.31)];
                [bezier2Path addCurveToPoint: CGPointMake(5.1, 21.55) controlPoint1: CGPointMake(5.2, 21.45) controlPoint2: CGPointMake(5.16, 21.51)];
                [bezier2Path addCurveToPoint: CGPointMake(4.87, 21.64) controlPoint1: CGPointMake(5.04, 21.59) controlPoint2: CGPointMake(4.97, 21.62)];
                [bezier2Path addCurveToPoint: CGPointMake(4.51, 21.66) controlPoint1: CGPointMake(4.77, 21.66) controlPoint2: CGPointMake(4.65, 21.66)];
                [bezier2Path addLineToPoint: CGPointMake(4.43, 21.66)];
                [bezier2Path addCurveToPoint: CGPointMake(4.25, 21.66) controlPoint1: CGPointMake(4.37, 21.66) controlPoint2: CGPointMake(4.32, 21.66)];
                [bezier2Path addCurveToPoint: CGPointMake(4.07, 21.63) controlPoint1: CGPointMake(4.19, 21.66) controlPoint2: CGPointMake(4.12, 21.65)];
                [bezier2Path addCurveToPoint: CGPointMake(3.93, 21.56) controlPoint1: CGPointMake(4.01, 21.61) controlPoint2: CGPointMake(3.97, 21.59)];
                [bezier2Path addCurveToPoint: CGPointMake(3.86, 21.42) controlPoint1: CGPointMake(3.89, 21.53) controlPoint2: CGPointMake(3.87, 21.48)];
                [bezier2Path addLineToPoint: CGPointMake(3.86, 21.42)];
                [bezier2Path addCurveToPoint: CGPointMake(3.91, 21.32) controlPoint1: CGPointMake(3.86, 21.38) controlPoint2: CGPointMake(3.88, 21.34)];
                [bezier2Path addCurveToPoint: CGPointMake(4.02, 21.28) controlPoint1: CGPointMake(3.94, 21.29) controlPoint2: CGPointMake(3.98, 21.28)];
                [bezier2Path addLineToPoint: CGPointMake(4.02, 21.28)];
                [bezier2Path addCurveToPoint: CGPointMake(4.1, 21.29) controlPoint1: CGPointMake(4.06, 21.28) controlPoint2: CGPointMake(4.08, 21.29)];
                [bezier2Path addCurveToPoint: CGPointMake(4.15, 21.31) controlPoint1: CGPointMake(4.12, 21.3) controlPoint2: CGPointMake(4.13, 21.3)];
                [bezier2Path addCurveToPoint: CGPointMake(4.19, 21.34) controlPoint1: CGPointMake(4.16, 21.32) controlPoint2: CGPointMake(4.18, 21.33)];
                [bezier2Path addCurveToPoint: CGPointMake(4.25, 21.37) controlPoint1: CGPointMake(4.2, 21.35) controlPoint2: CGPointMake(4.22, 21.36)];
                [bezier2Path addCurveToPoint: CGPointMake(4.36, 21.39) controlPoint1: CGPointMake(4.28, 21.38) controlPoint2: CGPointMake(4.31, 21.38)];
                [bezier2Path addCurveToPoint: CGPointMake(4.53, 21.4) controlPoint1: CGPointMake(4.4, 21.4) controlPoint2: CGPointMake(4.46, 21.4)];
                [bezier2Path addCurveToPoint: CGPointMake(4.71, 21.38) controlPoint1: CGPointMake(4.6, 21.4) controlPoint2: CGPointMake(4.66, 21.4)];
                [bezier2Path addCurveToPoint: CGPointMake(4.82, 21.33) controlPoint1: CGPointMake(4.76, 21.37) controlPoint2: CGPointMake(4.79, 21.35)];
                [bezier2Path addCurveToPoint: CGPointMake(4.87, 21.25) controlPoint1: CGPointMake(4.85, 21.31) controlPoint2: CGPointMake(4.87, 21.28)];
                [bezier2Path addCurveToPoint: CGPointMake(4.89, 21.13) controlPoint1: CGPointMake(4.88, 21.22) controlPoint2: CGPointMake(4.89, 21.18)];
                [bezier2Path addCurveToPoint: CGPointMake(4.86, 20.96) controlPoint1: CGPointMake(4.89, 21.05) controlPoint2: CGPointMake(4.88, 20.99)];
                [bezier2Path addCurveToPoint: CGPointMake(4.74, 20.91) controlPoint1: CGPointMake(4.84, 20.92) controlPoint2: CGPointMake(4.8, 20.91)];
                [bezier2Path addLineToPoint: CGPointMake(4.13, 20.91)];
                [bezier2Path addCurveToPoint: CGPointMake(4, 20.9) controlPoint1: CGPointMake(4.08, 20.91) controlPoint2: CGPointMake(4.04, 20.91)];
                [bezier2Path addCurveToPoint: CGPointMake(3.93, 20.87) controlPoint1: CGPointMake(3.97, 20.9) controlPoint2: CGPointMake(3.95, 20.89)];
                [bezier2Path addCurveToPoint: CGPointMake(3.9, 20.8) controlPoint1: CGPointMake(3.91, 20.85) controlPoint2: CGPointMake(3.9, 20.83)];
                [bezier2Path addCurveToPoint: CGPointMake(3.89, 20.69) controlPoint1: CGPointMake(3.89, 20.77) controlPoint2: CGPointMake(3.89, 20.74)];
                [bezier2Path addLineToPoint: CGPointMake(3.89, 20.01)];
                [bezier2Path addCurveToPoint: CGPointMake(3.93, 19.89) controlPoint1: CGPointMake(3.89, 19.96) controlPoint2: CGPointMake(3.9, 19.92)];
                [bezier2Path addCurveToPoint: CGPointMake(4.09, 19.85) controlPoint1: CGPointMake(3.96, 19.86) controlPoint2: CGPointMake(4.01, 19.85)];
                [bezier2Path addCurveToPoint: CGPointMake(4.2, 19.85) controlPoint1: CGPointMake(4.12, 19.85) controlPoint2: CGPointMake(4.15, 19.85)];
                [bezier2Path addCurveToPoint: CGPointMake(4.36, 19.85) controlPoint1: CGPointMake(4.25, 19.85) controlPoint2: CGPointMake(4.3, 19.85)];
                [bezier2Path addCurveToPoint: CGPointMake(4.55, 19.85) controlPoint1: CGPointMake(4.42, 19.85) controlPoint2: CGPointMake(4.48, 19.85)];
                [bezier2Path addCurveToPoint: CGPointMake(4.73, 19.85) controlPoint1: CGPointMake(4.61, 19.85) controlPoint2: CGPointMake(4.68, 19.85)];
                [bezier2Path addCurveToPoint: CGPointMake(4.87, 19.85) controlPoint1: CGPointMake(4.78, 19.85) controlPoint2: CGPointMake(4.83, 19.85)];
                [bezier2Path addCurveToPoint: CGPointMake(4.94, 19.85) controlPoint1: CGPointMake(4.91, 19.85) controlPoint2: CGPointMake(4.94, 19.85)];
                [bezier2Path addCurveToPoint: CGPointMake(5.01, 19.86) controlPoint1: CGPointMake(4.97, 19.85) controlPoint2: CGPointMake(4.99, 19.85)];
                [bezier2Path addCurveToPoint: CGPointMake(5.08, 19.88) controlPoint1: CGPointMake(5.03, 19.86) controlPoint2: CGPointMake(5.06, 19.87)];
                [bezier2Path addCurveToPoint: CGPointMake(5.13, 19.92) controlPoint1: CGPointMake(5.1, 19.89) controlPoint2: CGPointMake(5.12, 19.91)];
                [bezier2Path addCurveToPoint: CGPointMake(5.15, 19.99) controlPoint1: CGPointMake(5.15, 19.94) controlPoint2: CGPointMake(5.15, 19.96)];
                [bezier2Path addLineToPoint: CGPointMake(5.15, 20)];
                [bezier2Path addCurveToPoint: CGPointMake(5.13, 20.08) controlPoint1: CGPointMake(5.15, 20.04) controlPoint2: CGPointMake(5.14, 20.06)];
                [bezier2Path addCurveToPoint: CGPointMake(5.09, 20.12) controlPoint1: CGPointMake(5.12, 20.1) controlPoint2: CGPointMake(5.1, 20.12)];
                [bezier2Path addCurveToPoint: CGPointMake(5.03, 20.14) controlPoint1: CGPointMake(5.07, 20.13) controlPoint2: CGPointMake(5.05, 20.13)];
                [bezier2Path addCurveToPoint: CGPointMake(4.95, 20.14) controlPoint1: CGPointMake(5, 20.14) controlPoint2: CGPointMake(4.98, 20.14)];
                [bezier2Path addLineToPoint: CGPointMake(4.24, 20.14)];
                [bezier2Path addLineToPoint: CGPointMake(4.24, 20.6)];
                [bezier2Path addLineToPoint: CGPointMake(4.72, 20.6)];
                [bezier2Path addCurveToPoint: CGPointMake(4.97, 20.62) controlPoint1: CGPointMake(4.82, 20.6) controlPoint2: CGPointMake(4.91, 20.6)];
                [bezier2Path closePath];
                bezier2Path.miterLimit = 4;

                [fillColor setFill];
                [bezier2Path fill];


                //// Bezier 3 Drawing
                UIBezierPath* bezier3Path = [UIBezierPath bezierPath];
                [bezier3Path moveToPoint: CGPointMake(7.08, 20.61)];
                [bezier3Path addCurveToPoint: CGPointMake(7.2, 20.64) controlPoint1: CGPointMake(7.13, 20.61) controlPoint2: CGPointMake(7.17, 20.62)];
                [bezier3Path addCurveToPoint: CGPointMake(7.26, 20.75) controlPoint1: CGPointMake(7.24, 20.66) controlPoint2: CGPointMake(7.25, 20.7)];
                [bezier3Path addCurveToPoint: CGPointMake(7.21, 20.87) controlPoint1: CGPointMake(7.26, 20.81) controlPoint2: CGPointMake(7.24, 20.85)];
                [bezier3Path addCurveToPoint: CGPointMake(7.09, 20.91) controlPoint1: CGPointMake(7.18, 20.89) controlPoint2: CGPointMake(7.14, 20.9)];
                [bezier3Path addLineToPoint: CGPointMake(7.03, 20.91)];
                [bezier3Path addLineToPoint: CGPointMake(7.03, 21.52)];
                [bezier3Path addCurveToPoint: CGPointMake(7.02, 21.57) controlPoint1: CGPointMake(7.03, 21.53) controlPoint2: CGPointMake(7.03, 21.55)];
                [bezier3Path addCurveToPoint: CGPointMake(6.99, 21.62) controlPoint1: CGPointMake(7.01, 21.59) controlPoint2: CGPointMake(7, 21.61)];
                [bezier3Path addCurveToPoint: CGPointMake(6.93, 21.66) controlPoint1: CGPointMake(6.98, 21.63) controlPoint2: CGPointMake(6.96, 21.65)];
                [bezier3Path addCurveToPoint: CGPointMake(6.85, 21.67) controlPoint1: CGPointMake(6.91, 21.67) controlPoint2: CGPointMake(6.88, 21.67)];
                [bezier3Path addCurveToPoint: CGPointMake(6.77, 21.66) controlPoint1: CGPointMake(6.82, 21.67) controlPoint2: CGPointMake(6.79, 21.67)];
                [bezier3Path addCurveToPoint: CGPointMake(6.72, 21.62) controlPoint1: CGPointMake(6.75, 21.65) controlPoint2: CGPointMake(6.73, 21.64)];
                [bezier3Path addCurveToPoint: CGPointMake(6.69, 21.57) controlPoint1: CGPointMake(6.7, 21.61) controlPoint2: CGPointMake(6.69, 21.59)];
                [bezier3Path addCurveToPoint: CGPointMake(6.68, 21.52) controlPoint1: CGPointMake(6.68, 21.55) controlPoint2: CGPointMake(6.68, 21.54)];
                [bezier3Path addLineToPoint: CGPointMake(6.68, 20.91)];
                [bezier3Path addLineToPoint: CGPointMake(5.98, 20.91)];
                [bezier3Path addCurveToPoint: CGPointMake(5.89, 20.89) controlPoint1: CGPointMake(5.93, 20.91) controlPoint2: CGPointMake(5.9, 20.9)];
                [bezier3Path addCurveToPoint: CGPointMake(5.87, 20.82) controlPoint1: CGPointMake(5.88, 20.88) controlPoint2: CGPointMake(5.87, 20.85)];
                [bezier3Path addLineToPoint: CGPointMake(5.87, 19.99)];
                [bezier3Path addCurveToPoint: CGPointMake(5.88, 19.94) controlPoint1: CGPointMake(5.87, 19.97) controlPoint2: CGPointMake(5.87, 19.96)];
                [bezier3Path addCurveToPoint: CGPointMake(5.91, 19.89) controlPoint1: CGPointMake(5.89, 19.92) controlPoint2: CGPointMake(5.9, 19.9)];
                [bezier3Path addCurveToPoint: CGPointMake(5.97, 19.85) controlPoint1: CGPointMake(5.92, 19.88) controlPoint2: CGPointMake(5.94, 19.86)];
                [bezier3Path addCurveToPoint: CGPointMake(6.05, 19.84) controlPoint1: CGPointMake(5.99, 19.84) controlPoint2: CGPointMake(6.02, 19.84)];
                [bezier3Path addCurveToPoint: CGPointMake(6.19, 19.88) controlPoint1: CGPointMake(6.11, 19.84) controlPoint2: CGPointMake(6.16, 19.85)];
                [bezier3Path addCurveToPoint: CGPointMake(6.23, 20) controlPoint1: CGPointMake(6.22, 19.91) controlPoint2: CGPointMake(6.23, 19.95)];
                [bezier3Path addLineToPoint: CGPointMake(6.23, 20.63)];
                [bezier3Path addLineToPoint: CGPointMake(6.68, 20.63)];
                [bezier3Path addLineToPoint: CGPointMake(6.68, 19.99)];
                [bezier3Path addCurveToPoint: CGPointMake(6.73, 19.88) controlPoint1: CGPointMake(6.68, 19.94) controlPoint2: CGPointMake(6.7, 19.91)];
                [bezier3Path addCurveToPoint: CGPointMake(6.86, 19.84) controlPoint1: CGPointMake(6.76, 19.85) controlPoint2: CGPointMake(6.8, 19.84)];
                [bezier3Path addCurveToPoint: CGPointMake(6.99, 19.88) controlPoint1: CGPointMake(6.92, 19.84) controlPoint2: CGPointMake(6.96, 19.85)];
                [bezier3Path addCurveToPoint: CGPointMake(7.04, 19.99) controlPoint1: CGPointMake(7.02, 19.91) controlPoint2: CGPointMake(7.04, 19.94)];
                [bezier3Path addLineToPoint: CGPointMake(7.04, 20.63)];
                [bezier3Path addLineToPoint: CGPointMake(7.08, 20.61)];
                [bezier3Path addLineToPoint: CGPointMake(7.08, 20.61)];
                [bezier3Path closePath];
                bezier3Path.miterLimit = 4;

                [fillColor setFill];
                [bezier3Path fill];


                //// Bezier 4 Drawing
                UIBezierPath* bezier4Path = [UIBezierPath bezierPath];
                [bezier4Path moveToPoint: CGPointMake(8.61, 20.54)];
                [bezier4Path addCurveToPoint: CGPointMake(8.9, 20.58) controlPoint1: CGPointMake(8.73, 20.54) controlPoint2: CGPointMake(8.82, 20.55)];
                [bezier4Path addCurveToPoint: CGPointMake(9.09, 20.69) controlPoint1: CGPointMake(8.98, 20.61) controlPoint2: CGPointMake(9.04, 20.64)];
                [bezier4Path addCurveToPoint: CGPointMake(9.19, 20.87) controlPoint1: CGPointMake(9.14, 20.74) controlPoint2: CGPointMake(9.17, 20.8)];
                [bezier4Path addCurveToPoint: CGPointMake(9.22, 21.12) controlPoint1: CGPointMake(9.21, 20.94) controlPoint2: CGPointMake(9.22, 21.02)];
                [bezier4Path addCurveToPoint: CGPointMake(9.18, 21.36) controlPoint1: CGPointMake(9.22, 21.21) controlPoint2: CGPointMake(9.21, 21.29)];
                [bezier4Path addCurveToPoint: CGPointMake(9.06, 21.54) controlPoint1: CGPointMake(9.16, 21.43) controlPoint2: CGPointMake(9.12, 21.49)];
                [bezier4Path addCurveToPoint: CGPointMake(8.84, 21.65) controlPoint1: CGPointMake(9, 21.59) controlPoint2: CGPointMake(8.94, 21.62)];
                [bezier4Path addCurveToPoint: CGPointMake(8.51, 21.69) controlPoint1: CGPointMake(8.75, 21.67) controlPoint2: CGPointMake(8.64, 21.69)];
                [bezier4Path addCurveToPoint: CGPointMake(8.24, 21.66) controlPoint1: CGPointMake(8.41, 21.69) controlPoint2: CGPointMake(8.32, 21.68)];
                [bezier4Path addCurveToPoint: CGPointMake(8.03, 21.57) controlPoint1: CGPointMake(8.16, 21.64) controlPoint2: CGPointMake(8.09, 21.61)];
                [bezier4Path addCurveToPoint: CGPointMake(7.89, 21.41) controlPoint1: CGPointMake(7.97, 21.53) controlPoint2: CGPointMake(7.92, 21.48)];
                [bezier4Path addCurveToPoint: CGPointMake(7.84, 21.17) controlPoint1: CGPointMake(7.86, 21.34) controlPoint2: CGPointMake(7.84, 21.27)];
                [bezier4Path addLineToPoint: CGPointMake(7.84, 19.98)];
                [bezier4Path addCurveToPoint: CGPointMake(7.85, 19.93) controlPoint1: CGPointMake(7.84, 19.96) controlPoint2: CGPointMake(7.84, 19.94)];
                [bezier4Path addCurveToPoint: CGPointMake(7.88, 19.88) controlPoint1: CGPointMake(7.86, 19.91) controlPoint2: CGPointMake(7.87, 19.89)];
                [bezier4Path addCurveToPoint: CGPointMake(7.94, 19.84) controlPoint1: CGPointMake(7.9, 19.87) controlPoint2: CGPointMake(7.91, 19.85)];
                [bezier4Path addCurveToPoint: CGPointMake(8.02, 19.83) controlPoint1: CGPointMake(7.96, 19.83) controlPoint2: CGPointMake(7.99, 19.83)];
                [bezier4Path addCurveToPoint: CGPointMake(8.15, 19.87) controlPoint1: CGPointMake(8.08, 19.83) controlPoint2: CGPointMake(8.12, 19.84)];
                [bezier4Path addCurveToPoint: CGPointMake(8.19, 19.98) controlPoint1: CGPointMake(8.18, 19.9) controlPoint2: CGPointMake(8.19, 19.93)];
                [bezier4Path addLineToPoint: CGPointMake(8.19, 20.57)];
                [bezier4Path addCurveToPoint: CGPointMake(8.42, 20.55) controlPoint1: CGPointMake(8.28, 20.56) controlPoint2: CGPointMake(8.35, 20.55)];
                [bezier4Path addCurveToPoint: CGPointMake(8.61, 20.54) controlPoint1: CGPointMake(8.51, 20.54) controlPoint2: CGPointMake(8.56, 20.54)];
                [bezier4Path closePath];
                [bezier4Path moveToPoint: CGPointMake(8.88, 21.1)];
                [bezier4Path addCurveToPoint: CGPointMake(8.86, 20.97) controlPoint1: CGPointMake(8.88, 21.05) controlPoint2: CGPointMake(8.88, 21)];
                [bezier4Path addCurveToPoint: CGPointMake(8.81, 20.89) controlPoint1: CGPointMake(8.85, 20.93) controlPoint2: CGPointMake(8.83, 20.91)];
                [bezier4Path addCurveToPoint: CGPointMake(8.71, 20.85) controlPoint1: CGPointMake(8.79, 20.87) controlPoint2: CGPointMake(8.75, 20.86)];
                [bezier4Path addCurveToPoint: CGPointMake(8.55, 20.84) controlPoint1: CGPointMake(8.67, 20.84) controlPoint2: CGPointMake(8.61, 20.84)];
                [bezier4Path addCurveToPoint: CGPointMake(8.43, 20.84) controlPoint1: CGPointMake(8.5, 20.84) controlPoint2: CGPointMake(8.46, 20.84)];
                [bezier4Path addCurveToPoint: CGPointMake(8.35, 20.84) controlPoint1: CGPointMake(8.4, 20.84) controlPoint2: CGPointMake(8.37, 20.84)];
                [bezier4Path addCurveToPoint: CGPointMake(8.29, 20.85) controlPoint1: CGPointMake(8.33, 20.84) controlPoint2: CGPointMake(8.31, 20.84)];
                [bezier4Path addCurveToPoint: CGPointMake(8.23, 20.86) controlPoint1: CGPointMake(8.27, 20.85) controlPoint2: CGPointMake(8.25, 20.86)];
                [bezier4Path addLineToPoint: CGPointMake(8.23, 21.09)];
                [bezier4Path addCurveToPoint: CGPointMake(8.25, 21.22) controlPoint1: CGPointMake(8.23, 21.14) controlPoint2: CGPointMake(8.24, 21.19)];
                [bezier4Path addCurveToPoint: CGPointMake(8.3, 21.31) controlPoint1: CGPointMake(8.26, 21.25) controlPoint2: CGPointMake(8.28, 21.28)];
                [bezier4Path addCurveToPoint: CGPointMake(8.4, 21.36) controlPoint1: CGPointMake(8.32, 21.34) controlPoint2: CGPointMake(8.36, 21.35)];
                [bezier4Path addCurveToPoint: CGPointMake(8.56, 21.38) controlPoint1: CGPointMake(8.44, 21.37) controlPoint2: CGPointMake(8.49, 21.38)];
                [bezier4Path addCurveToPoint: CGPointMake(8.71, 21.37) controlPoint1: CGPointMake(8.62, 21.38) controlPoint2: CGPointMake(8.67, 21.38)];
                [bezier4Path addCurveToPoint: CGPointMake(8.81, 21.33) controlPoint1: CGPointMake(8.75, 21.36) controlPoint2: CGPointMake(8.78, 21.35)];
                [bezier4Path addCurveToPoint: CGPointMake(8.87, 21.25) controlPoint1: CGPointMake(8.84, 21.31) controlPoint2: CGPointMake(8.86, 21.28)];
                [bezier4Path addCurveToPoint: CGPointMake(8.88, 21.1) controlPoint1: CGPointMake(8.87, 21.21) controlPoint2: CGPointMake(8.88, 21.16)];
                [bezier4Path closePath];
                bezier4Path.miterLimit = 4;

                [fillColor setFill];
                [bezier4Path fill];


                //// Bezier 5 Drawing
                UIBezierPath* bezier5Path = [UIBezierPath bezierPath];
                [bezier5Path moveToPoint: CGPointMake(10.47, 19.82)];
                [bezier5Path addCurveToPoint: CGPointMake(10.81, 19.85) controlPoint1: CGPointMake(10.6, 19.82) controlPoint2: CGPointMake(10.72, 19.83)];
                [bezier5Path addCurveToPoint: CGPointMake(11.03, 19.94) controlPoint1: CGPointMake(10.9, 19.87) controlPoint2: CGPointMake(10.98, 19.9)];
                [bezier5Path addCurveToPoint: CGPointMake(11.16, 20.1) controlPoint1: CGPointMake(11.09, 19.98) controlPoint2: CGPointMake(11.13, 20.03)];
                [bezier5Path addCurveToPoint: CGPointMake(11.2, 20.34) controlPoint1: CGPointMake(11.19, 20.17) controlPoint2: CGPointMake(11.2, 20.25)];
                [bezier5Path addLineToPoint: CGPointMake(11.2, 20.35)];
                [bezier5Path addCurveToPoint: CGPointMake(11.17, 20.61) controlPoint1: CGPointMake(11.2, 20.45) controlPoint2: CGPointMake(11.19, 20.54)];
                [bezier5Path addCurveToPoint: CGPointMake(11.07, 20.78) controlPoint1: CGPointMake(11.15, 20.68) controlPoint2: CGPointMake(11.12, 20.73)];
                [bezier5Path addCurveToPoint: CGPointMake(10.89, 20.87) controlPoint1: CGPointMake(11.02, 20.82) controlPoint2: CGPointMake(10.96, 20.85)];
                [bezier5Path addCurveToPoint: CGPointMake(10.61, 20.9) controlPoint1: CGPointMake(10.82, 20.89) controlPoint2: CGPointMake(10.72, 20.9)];
                [bezier5Path addCurveToPoint: CGPointMake(10.37, 20.9) controlPoint1: CGPointMake(10.52, 20.9) controlPoint2: CGPointMake(10.44, 20.9)];
                [bezier5Path addCurveToPoint: CGPointMake(10.22, 20.93) controlPoint1: CGPointMake(10.31, 20.9) controlPoint2: CGPointMake(10.26, 20.91)];
                [bezier5Path addCurveToPoint: CGPointMake(10.14, 21.02) controlPoint1: CGPointMake(10.18, 20.95) controlPoint2: CGPointMake(10.16, 20.98)];
                [bezier5Path addCurveToPoint: CGPointMake(10.12, 21.19) controlPoint1: CGPointMake(10.12, 21.06) controlPoint2: CGPointMake(10.12, 21.12)];
                [bezier5Path addLineToPoint: CGPointMake(10.12, 21.36)];
                [bezier5Path addLineToPoint: CGPointMake(11, 21.36)];
                [bezier5Path addCurveToPoint: CGPointMake(11.06, 21.37) controlPoint1: CGPointMake(11.02, 21.36) controlPoint2: CGPointMake(11.04, 21.36)];
                [bezier5Path addCurveToPoint: CGPointMake(11.12, 21.4) controlPoint1: CGPointMake(11.08, 21.38) controlPoint2: CGPointMake(11.1, 21.39)];
                [bezier5Path addCurveToPoint: CGPointMake(11.16, 21.45) controlPoint1: CGPointMake(11.14, 21.41) controlPoint2: CGPointMake(11.15, 21.43)];
                [bezier5Path addCurveToPoint: CGPointMake(11.18, 21.52) controlPoint1: CGPointMake(11.17, 21.47) controlPoint2: CGPointMake(11.18, 21.49)];
                [bezier5Path addCurveToPoint: CGPointMake(11.16, 21.59) controlPoint1: CGPointMake(11.18, 21.55) controlPoint2: CGPointMake(11.18, 21.57)];
                [bezier5Path addCurveToPoint: CGPointMake(11.12, 21.63) controlPoint1: CGPointMake(11.15, 21.61) controlPoint2: CGPointMake(11.14, 21.62)];
                [bezier5Path addCurveToPoint: CGPointMake(11.06, 21.66) controlPoint1: CGPointMake(11.1, 21.64) controlPoint2: CGPointMake(11.08, 21.65)];
                [bezier5Path addCurveToPoint: CGPointMake(10.99, 21.67) controlPoint1: CGPointMake(11.04, 21.67) controlPoint2: CGPointMake(11.01, 21.67)];
                [bezier5Path addLineToPoint: CGPointMake(9.96, 21.67)];
                [bezier5Path addCurveToPoint: CGPointMake(9.8, 21.63) controlPoint1: CGPointMake(9.88, 21.67) controlPoint2: CGPointMake(9.83, 21.66)];
                [bezier5Path addCurveToPoint: CGPointMake(9.76, 21.51) controlPoint1: CGPointMake(9.77, 21.6) controlPoint2: CGPointMake(9.76, 21.56)];
                [bezier5Path addLineToPoint: CGPointMake(9.76, 21.14)];
                [bezier5Path addCurveToPoint: CGPointMake(9.8, 20.89) controlPoint1: CGPointMake(9.76, 21.04) controlPoint2: CGPointMake(9.77, 20.96)];
                [bezier5Path addCurveToPoint: CGPointMake(9.91, 20.73) controlPoint1: CGPointMake(9.83, 20.82) controlPoint2: CGPointMake(9.86, 20.77)];
                [bezier5Path addCurveToPoint: CGPointMake(10.09, 20.64) controlPoint1: CGPointMake(9.96, 20.69) controlPoint2: CGPointMake(10.02, 20.66)];
                [bezier5Path addCurveToPoint: CGPointMake(10.33, 20.61) controlPoint1: CGPointMake(10.16, 20.62) controlPoint2: CGPointMake(10.24, 20.61)];
                [bezier5Path addLineToPoint: CGPointMake(10.59, 20.6)];
                [bezier5Path addCurveToPoint: CGPointMake(10.71, 20.59) controlPoint1: CGPointMake(10.64, 20.6) controlPoint2: CGPointMake(10.68, 20.6)];
                [bezier5Path addCurveToPoint: CGPointMake(10.79, 20.55) controlPoint1: CGPointMake(10.74, 20.58) controlPoint2: CGPointMake(10.77, 20.57)];
                [bezier5Path addCurveToPoint: CGPointMake(10.83, 20.48) controlPoint1: CGPointMake(10.81, 20.53) controlPoint2: CGPointMake(10.82, 20.51)];
                [bezier5Path addCurveToPoint: CGPointMake(10.84, 20.37) controlPoint1: CGPointMake(10.84, 20.45) controlPoint2: CGPointMake(10.84, 20.41)];
                [bezier5Path addLineToPoint: CGPointMake(10.84, 20.36)];
                [bezier5Path addCurveToPoint: CGPointMake(10.82, 20.24) controlPoint1: CGPointMake(10.84, 20.31) controlPoint2: CGPointMake(10.84, 20.27)];
                [bezier5Path addCurveToPoint: CGPointMake(10.76, 20.17) controlPoint1: CGPointMake(10.81, 20.21) controlPoint2: CGPointMake(10.79, 20.18)];
                [bezier5Path addCurveToPoint: CGPointMake(10.64, 20.13) controlPoint1: CGPointMake(10.73, 20.15) controlPoint2: CGPointMake(10.69, 20.14)];
                [bezier5Path addCurveToPoint: CGPointMake(10.44, 20.12) controlPoint1: CGPointMake(10.59, 20.12) controlPoint2: CGPointMake(10.53, 20.12)];
                [bezier5Path addCurveToPoint: CGPointMake(10.27, 20.13) controlPoint1: CGPointMake(10.38, 20.12) controlPoint2: CGPointMake(10.32, 20.12)];
                [bezier5Path addCurveToPoint: CGPointMake(10.14, 20.16) controlPoint1: CGPointMake(10.22, 20.14) controlPoint2: CGPointMake(10.18, 20.15)];
                [bezier5Path addCurveToPoint: CGPointMake(10.05, 20.19) controlPoint1: CGPointMake(10.11, 20.17) controlPoint2: CGPointMake(10.08, 20.18)];
                [bezier5Path addCurveToPoint: CGPointMake(9.95, 20.21) controlPoint1: CGPointMake(10.02, 20.2) controlPoint2: CGPointMake(9.99, 20.21)];
                [bezier5Path addLineToPoint: CGPointMake(9.96, 20.21)];
                [bezier5Path addCurveToPoint: CGPointMake(9.85, 20.16) controlPoint1: CGPointMake(9.92, 20.21) controlPoint2: CGPointMake(9.88, 20.19)];
                [bezier5Path addCurveToPoint: CGPointMake(9.81, 20.05) controlPoint1: CGPointMake(9.82, 20.13) controlPoint2: CGPointMake(9.81, 20.1)];
                [bezier5Path addLineToPoint: CGPointMake(9.81, 20.04)];
                [bezier5Path addCurveToPoint: CGPointMake(9.87, 19.94) controlPoint1: CGPointMake(9.81, 20) controlPoint2: CGPointMake(9.83, 19.96)];
                [bezier5Path addCurveToPoint: CGPointMake(10.01, 19.87) controlPoint1: CGPointMake(9.91, 19.91) controlPoint2: CGPointMake(9.95, 19.89)];
                [bezier5Path addCurveToPoint: CGPointMake(10.22, 19.83) controlPoint1: CGPointMake(10.07, 19.85) controlPoint2: CGPointMake(10.14, 19.84)];
                [bezier5Path addCurveToPoint: CGPointMake(10.47, 19.82) controlPoint1: CGPointMake(10.29, 19.83) controlPoint2: CGPointMake(10.38, 19.82)];
                [bezier5Path closePath];
                bezier5Path.miterLimit = 4;

                [fillColor setFill];
                [bezier5Path fill];


                //// Bezier 6 Drawing
                UIBezierPath* bezier6Path = [UIBezierPath bezierPath];
                [bezier6Path moveToPoint: CGPointMake(13.72, 19.82)];
                [bezier6Path addCurveToPoint: CGPointMake(14.06, 19.85) controlPoint1: CGPointMake(13.85, 19.82) controlPoint2: CGPointMake(13.97, 19.83)];
                [bezier6Path addCurveToPoint: CGPointMake(14.29, 19.94) controlPoint1: CGPointMake(14.15, 19.87) controlPoint2: CGPointMake(14.23, 19.9)];
                [bezier6Path addCurveToPoint: CGPointMake(14.41, 20.1) controlPoint1: CGPointMake(14.34, 19.98) controlPoint2: CGPointMake(14.39, 20.03)];
                [bezier6Path addCurveToPoint: CGPointMake(14.45, 20.34) controlPoint1: CGPointMake(14.44, 20.17) controlPoint2: CGPointMake(14.45, 20.25)];
                [bezier6Path addLineToPoint: CGPointMake(14.45, 20.35)];
                [bezier6Path addCurveToPoint: CGPointMake(14.42, 20.61) controlPoint1: CGPointMake(14.45, 20.45) controlPoint2: CGPointMake(14.44, 20.54)];
                [bezier6Path addCurveToPoint: CGPointMake(14.32, 20.78) controlPoint1: CGPointMake(14.4, 20.68) controlPoint2: CGPointMake(14.37, 20.73)];
                [bezier6Path addCurveToPoint: CGPointMake(14.14, 20.87) controlPoint1: CGPointMake(14.28, 20.82) controlPoint2: CGPointMake(14.21, 20.85)];
                [bezier6Path addCurveToPoint: CGPointMake(13.86, 20.9) controlPoint1: CGPointMake(14.07, 20.89) controlPoint2: CGPointMake(13.97, 20.9)];
                [bezier6Path addCurveToPoint: CGPointMake(13.62, 20.9) controlPoint1: CGPointMake(13.76, 20.9) controlPoint2: CGPointMake(13.69, 20.9)];
                [bezier6Path addCurveToPoint: CGPointMake(13.47, 20.93) controlPoint1: CGPointMake(13.56, 20.9) controlPoint2: CGPointMake(13.51, 20.91)];
                [bezier6Path addCurveToPoint: CGPointMake(13.39, 21.02) controlPoint1: CGPointMake(13.43, 20.95) controlPoint2: CGPointMake(13.41, 20.98)];
                [bezier6Path addCurveToPoint: CGPointMake(13.37, 21.19) controlPoint1: CGPointMake(13.38, 21.06) controlPoint2: CGPointMake(13.37, 21.12)];
                [bezier6Path addLineToPoint: CGPointMake(13.37, 21.36)];
                [bezier6Path addLineToPoint: CGPointMake(14.26, 21.36)];
                [bezier6Path addCurveToPoint: CGPointMake(14.33, 21.37) controlPoint1: CGPointMake(14.28, 21.36) controlPoint2: CGPointMake(14.31, 21.36)];
                [bezier6Path addCurveToPoint: CGPointMake(14.39, 21.4) controlPoint1: CGPointMake(14.35, 21.38) controlPoint2: CGPointMake(14.37, 21.39)];
                [bezier6Path addCurveToPoint: CGPointMake(14.43, 21.45) controlPoint1: CGPointMake(14.41, 21.41) controlPoint2: CGPointMake(14.43, 21.43)];
                [bezier6Path addCurveToPoint: CGPointMake(14.45, 21.52) controlPoint1: CGPointMake(14.44, 21.47) controlPoint2: CGPointMake(14.45, 21.49)];
                [bezier6Path addCurveToPoint: CGPointMake(14.43, 21.59) controlPoint1: CGPointMake(14.45, 21.55) controlPoint2: CGPointMake(14.45, 21.57)];
                [bezier6Path addCurveToPoint: CGPointMake(14.38, 21.63) controlPoint1: CGPointMake(14.41, 21.61) controlPoint2: CGPointMake(14.4, 21.62)];
                [bezier6Path addCurveToPoint: CGPointMake(14.32, 21.66) controlPoint1: CGPointMake(14.36, 21.64) controlPoint2: CGPointMake(14.34, 21.65)];
                [bezier6Path addCurveToPoint: CGPointMake(14.25, 21.67) controlPoint1: CGPointMake(14.3, 21.67) controlPoint2: CGPointMake(14.27, 21.67)];
                [bezier6Path addLineToPoint: CGPointMake(13.21, 21.67)];
                [bezier6Path addCurveToPoint: CGPointMake(13.06, 21.63) controlPoint1: CGPointMake(13.13, 21.67) controlPoint2: CGPointMake(13.08, 21.66)];
                [bezier6Path addCurveToPoint: CGPointMake(13.01, 21.51) controlPoint1: CGPointMake(13.03, 21.6) controlPoint2: CGPointMake(13.01, 21.56)];
                [bezier6Path addLineToPoint: CGPointMake(13.01, 21.14)];
                [bezier6Path addCurveToPoint: CGPointMake(13.05, 20.89) controlPoint1: CGPointMake(13.01, 21.04) controlPoint2: CGPointMake(13.02, 20.96)];
                [bezier6Path addCurveToPoint: CGPointMake(13.16, 20.73) controlPoint1: CGPointMake(13.08, 20.82) controlPoint2: CGPointMake(13.11, 20.77)];
                [bezier6Path addCurveToPoint: CGPointMake(13.34, 20.64) controlPoint1: CGPointMake(13.21, 20.69) controlPoint2: CGPointMake(13.27, 20.66)];
                [bezier6Path addCurveToPoint: CGPointMake(13.58, 20.61) controlPoint1: CGPointMake(13.41, 20.62) controlPoint2: CGPointMake(13.49, 20.61)];
                [bezier6Path addLineToPoint: CGPointMake(13.84, 20.6)];
                [bezier6Path addCurveToPoint: CGPointMake(13.96, 20.59) controlPoint1: CGPointMake(13.89, 20.6) controlPoint2: CGPointMake(13.93, 20.6)];
                [bezier6Path addCurveToPoint: CGPointMake(14.04, 20.55) controlPoint1: CGPointMake(13.99, 20.58) controlPoint2: CGPointMake(14.02, 20.57)];
                [bezier6Path addCurveToPoint: CGPointMake(14.08, 20.48) controlPoint1: CGPointMake(14.06, 20.53) controlPoint2: CGPointMake(14.07, 20.51)];
                [bezier6Path addCurveToPoint: CGPointMake(14.09, 20.37) controlPoint1: CGPointMake(14.09, 20.45) controlPoint2: CGPointMake(14.09, 20.41)];
                [bezier6Path addLineToPoint: CGPointMake(14.09, 20.36)];
                [bezier6Path addCurveToPoint: CGPointMake(14.07, 20.24) controlPoint1: CGPointMake(14.09, 20.31) controlPoint2: CGPointMake(14.09, 20.27)];
                [bezier6Path addCurveToPoint: CGPointMake(14.01, 20.17) controlPoint1: CGPointMake(14.06, 20.21) controlPoint2: CGPointMake(14.04, 20.18)];
                [bezier6Path addCurveToPoint: CGPointMake(13.89, 20.13) controlPoint1: CGPointMake(13.98, 20.15) controlPoint2: CGPointMake(13.94, 20.14)];
                [bezier6Path addCurveToPoint: CGPointMake(13.69, 20.12) controlPoint1: CGPointMake(13.84, 20.12) controlPoint2: CGPointMake(13.77, 20.12)];
                [bezier6Path addCurveToPoint: CGPointMake(13.52, 20.13) controlPoint1: CGPointMake(13.63, 20.12) controlPoint2: CGPointMake(13.57, 20.12)];
                [bezier6Path addCurveToPoint: CGPointMake(13.39, 20.16) controlPoint1: CGPointMake(13.47, 20.14) controlPoint2: CGPointMake(13.43, 20.15)];
                [bezier6Path addCurveToPoint: CGPointMake(13.3, 20.19) controlPoint1: CGPointMake(13.36, 20.17) controlPoint2: CGPointMake(13.33, 20.18)];
                [bezier6Path addCurveToPoint: CGPointMake(13.2, 20.21) controlPoint1: CGPointMake(13.27, 20.2) controlPoint2: CGPointMake(13.24, 20.21)];
                [bezier6Path addLineToPoint: CGPointMake(13.19, 20.21)];
                [bezier6Path addCurveToPoint: CGPointMake(13.08, 20.16) controlPoint1: CGPointMake(13.15, 20.21) controlPoint2: CGPointMake(13.11, 20.19)];
                [bezier6Path addCurveToPoint: CGPointMake(13.04, 20.05) controlPoint1: CGPointMake(13.05, 20.13) controlPoint2: CGPointMake(13.04, 20.1)];
                [bezier6Path addLineToPoint: CGPointMake(13.04, 20.04)];
                [bezier6Path addCurveToPoint: CGPointMake(13.1, 19.94) controlPoint1: CGPointMake(13.04, 20) controlPoint2: CGPointMake(13.06, 19.96)];
                [bezier6Path addCurveToPoint: CGPointMake(13.24, 19.87) controlPoint1: CGPointMake(13.14, 19.91) controlPoint2: CGPointMake(13.18, 19.89)];
                [bezier6Path addCurveToPoint: CGPointMake(13.45, 19.83) controlPoint1: CGPointMake(13.3, 19.85) controlPoint2: CGPointMake(13.37, 19.84)];
                [bezier6Path addCurveToPoint: CGPointMake(13.72, 19.82) controlPoint1: CGPointMake(13.55, 19.83) controlPoint2: CGPointMake(13.64, 19.82)];
                [bezier6Path closePath];
                bezier6Path.miterLimit = 4;

                [fillColor setFill];
                [bezier6Path fill];


                //// Bezier 7 Drawing
                UIBezierPath* bezier7Path = [UIBezierPath bezierPath];
                [bezier7Path moveToPoint: CGPointMake(16.45, 21.17)];
                [bezier7Path addCurveToPoint: CGPointMake(16.42, 21.38) controlPoint1: CGPointMake(16.45, 21.25) controlPoint2: CGPointMake(16.44, 21.32)];
                [bezier7Path addCurveToPoint: CGPointMake(16.32, 21.54) controlPoint1: CGPointMake(16.4, 21.44) controlPoint2: CGPointMake(16.37, 21.5)];
                [bezier7Path addCurveToPoint: CGPointMake(16.11, 21.64) controlPoint1: CGPointMake(16.27, 21.58) controlPoint2: CGPointMake(16.2, 21.62)];
                [bezier7Path addCurveToPoint: CGPointMake(15.74, 21.67) controlPoint1: CGPointMake(16.02, 21.66) controlPoint2: CGPointMake(15.89, 21.67)];
                [bezier7Path addCurveToPoint: CGPointMake(15.39, 21.63) controlPoint1: CGPointMake(15.59, 21.67) controlPoint2: CGPointMake(15.47, 21.66)];
                [bezier7Path addCurveToPoint: CGPointMake(15.19, 21.53) controlPoint1: CGPointMake(15.3, 21.6) controlPoint2: CGPointMake(15.23, 21.57)];
                [bezier7Path addCurveToPoint: CGPointMake(15.09, 21.37) controlPoint1: CGPointMake(15.14, 21.49) controlPoint2: CGPointMake(15.11, 21.43)];
                [bezier7Path addCurveToPoint: CGPointMake(15.06, 21.17) controlPoint1: CGPointMake(15.07, 21.31) controlPoint2: CGPointMake(15.06, 21.24)];
                [bezier7Path addCurveToPoint: CGPointMake(15.07, 21.02) controlPoint1: CGPointMake(15.06, 21.11) controlPoint2: CGPointMake(15.06, 21.06)];
                [bezier7Path addCurveToPoint: CGPointMake(15.1, 20.92) controlPoint1: CGPointMake(15.07, 20.98) controlPoint2: CGPointMake(15.08, 20.95)];
                [bezier7Path addCurveToPoint: CGPointMake(15.18, 20.84) controlPoint1: CGPointMake(15.12, 20.89) controlPoint2: CGPointMake(15.14, 20.87)];
                [bezier7Path addCurveToPoint: CGPointMake(15.34, 20.75) controlPoint1: CGPointMake(15.22, 20.82) controlPoint2: CGPointMake(15.27, 20.79)];
                [bezier7Path addCurveToPoint: CGPointMake(15.19, 20.69) controlPoint1: CGPointMake(15.27, 20.73) controlPoint2: CGPointMake(15.22, 20.71)];
                [bezier7Path addCurveToPoint: CGPointMake(15.11, 20.62) controlPoint1: CGPointMake(15.15, 20.67) controlPoint2: CGPointMake(15.13, 20.65)];
                [bezier7Path addCurveToPoint: CGPointMake(15.08, 20.51) controlPoint1: CGPointMake(15.09, 20.59) controlPoint2: CGPointMake(15.08, 20.55)];
                [bezier7Path addCurveToPoint: CGPointMake(15.07, 20.33) controlPoint1: CGPointMake(15.07, 20.46) controlPoint2: CGPointMake(15.07, 20.4)];
                [bezier7Path addCurveToPoint: CGPointMake(15.11, 20.09) controlPoint1: CGPointMake(15.07, 20.23) controlPoint2: CGPointMake(15.08, 20.15)];
                [bezier7Path addCurveToPoint: CGPointMake(15.23, 19.93) controlPoint1: CGPointMake(15.13, 20.02) controlPoint2: CGPointMake(15.17, 19.97)];
                [bezier7Path addCurveToPoint: CGPointMake(15.44, 19.85) controlPoint1: CGPointMake(15.29, 19.89) controlPoint2: CGPointMake(15.35, 19.86)];
                [bezier7Path addCurveToPoint: CGPointMake(15.76, 19.83) controlPoint1: CGPointMake(15.53, 19.83) controlPoint2: CGPointMake(15.63, 19.83)];
                [bezier7Path addCurveToPoint: CGPointMake(16.09, 19.86) controlPoint1: CGPointMake(15.89, 19.83) controlPoint2: CGPointMake(16, 19.84)];
                [bezier7Path addCurveToPoint: CGPointMake(16.31, 19.94) controlPoint1: CGPointMake(16.18, 19.88) controlPoint2: CGPointMake(16.25, 19.91)];
                [bezier7Path addCurveToPoint: CGPointMake(16.43, 20.09) controlPoint1: CGPointMake(16.36, 19.98) controlPoint2: CGPointMake(16.41, 20.03)];
                [bezier7Path addCurveToPoint: CGPointMake(16.47, 20.33) controlPoint1: CGPointMake(16.45, 20.16) controlPoint2: CGPointMake(16.47, 20.23)];
                [bezier7Path addCurveToPoint: CGPointMake(16.46, 20.51) controlPoint1: CGPointMake(16.47, 20.4) controlPoint2: CGPointMake(16.47, 20.47)];
                [bezier7Path addCurveToPoint: CGPointMake(16.43, 20.62) controlPoint1: CGPointMake(16.46, 20.56) controlPoint2: CGPointMake(16.45, 20.59)];
                [bezier7Path addCurveToPoint: CGPointMake(16.35, 20.69) controlPoint1: CGPointMake(16.41, 20.65) controlPoint2: CGPointMake(16.39, 20.67)];
                [bezier7Path addCurveToPoint: CGPointMake(16.21, 20.75) controlPoint1: CGPointMake(16.32, 20.71) controlPoint2: CGPointMake(16.27, 20.73)];
                [bezier7Path addCurveToPoint: CGPointMake(16.36, 20.82) controlPoint1: CGPointMake(16.27, 20.78) controlPoint2: CGPointMake(16.32, 20.8)];
                [bezier7Path addCurveToPoint: CGPointMake(16.43, 20.89) controlPoint1: CGPointMake(16.39, 20.84) controlPoint2: CGPointMake(16.42, 20.87)];
                [bezier7Path addCurveToPoint: CGPointMake(16.46, 21) controlPoint1: CGPointMake(16.45, 20.92) controlPoint2: CGPointMake(16.46, 20.95)];
                [bezier7Path addCurveToPoint: CGPointMake(16.45, 21.17) controlPoint1: CGPointMake(16.44, 21.05) controlPoint2: CGPointMake(16.45, 21.1)];
                [bezier7Path closePath];
                [bezier7Path moveToPoint: CGPointMake(16.09, 21.14)];
                [bezier7Path addCurveToPoint: CGPointMake(16.08, 21.11) controlPoint1: CGPointMake(16.09, 21.14) controlPoint2: CGPointMake(16.08, 21.13)];
                [bezier7Path addCurveToPoint: CGPointMake(16.04, 21.05) controlPoint1: CGPointMake(16.07, 21.09) controlPoint2: CGPointMake(16.06, 21.07)];
                [bezier7Path addCurveToPoint: CGPointMake(15.94, 20.97) controlPoint1: CGPointMake(16.02, 21.02) controlPoint2: CGPointMake(15.98, 21)];
                [bezier7Path addCurveToPoint: CGPointMake(15.75, 20.89) controlPoint1: CGPointMake(15.89, 20.94) controlPoint2: CGPointMake(15.83, 20.91)];
                [bezier7Path addCurveToPoint: CGPointMake(15.56, 20.98) controlPoint1: CGPointMake(15.67, 20.92) controlPoint2: CGPointMake(15.61, 20.95)];
                [bezier7Path addCurveToPoint: CGPointMake(15.46, 21.07) controlPoint1: CGPointMake(15.51, 21.01) controlPoint2: CGPointMake(15.48, 21.04)];
                [bezier7Path addCurveToPoint: CGPointMake(15.42, 21.14) controlPoint1: CGPointMake(15.43, 21.1) controlPoint2: CGPointMake(15.42, 21.12)];
                [bezier7Path addCurveToPoint: CGPointMake(15.41, 21.18) controlPoint1: CGPointMake(15.41, 21.16) controlPoint2: CGPointMake(15.41, 21.17)];
                [bezier7Path addLineToPoint: CGPointMake(15.41, 21.18)];
                [bezier7Path addCurveToPoint: CGPointMake(15.42, 21.27) controlPoint1: CGPointMake(15.41, 21.22) controlPoint2: CGPointMake(15.41, 21.25)];
                [bezier7Path addCurveToPoint: CGPointMake(15.47, 21.33) controlPoint1: CGPointMake(15.43, 21.3) controlPoint2: CGPointMake(15.45, 21.32)];
                [bezier7Path addCurveToPoint: CGPointMake(15.58, 21.36) controlPoint1: CGPointMake(15.49, 21.34) controlPoint2: CGPointMake(15.53, 21.36)];
                [bezier7Path addCurveToPoint: CGPointMake(15.76, 21.37) controlPoint1: CGPointMake(15.63, 21.37) controlPoint2: CGPointMake(15.69, 21.37)];
                [bezier7Path addCurveToPoint: CGPointMake(15.92, 21.36) controlPoint1: CGPointMake(15.82, 21.37) controlPoint2: CGPointMake(15.88, 21.37)];
                [bezier7Path addCurveToPoint: CGPointMake(16.02, 21.33) controlPoint1: CGPointMake(15.96, 21.35) controlPoint2: CGPointMake(16, 21.34)];
                [bezier7Path addCurveToPoint: CGPointMake(16.08, 21.27) controlPoint1: CGPointMake(16.05, 21.31) controlPoint2: CGPointMake(16.07, 21.29)];
                [bezier7Path addCurveToPoint: CGPointMake(16.1, 21.18) controlPoint1: CGPointMake(16.09, 21.25) controlPoint2: CGPointMake(16.1, 21.21)];
                [bezier7Path addLineToPoint: CGPointMake(16.1, 21.14)];
                [bezier7Path addLineToPoint: CGPointMake(16.09, 21.14)];
                [bezier7Path closePath];
                [bezier7Path moveToPoint: CGPointMake(15.75, 20.61)];
                [bezier7Path addCurveToPoint: CGPointMake(15.94, 20.56) controlPoint1: CGPointMake(15.83, 20.59) controlPoint2: CGPointMake(15.9, 20.57)];
                [bezier7Path addCurveToPoint: CGPointMake(16.04, 20.51) controlPoint1: CGPointMake(15.98, 20.55) controlPoint2: CGPointMake(16.01, 20.53)];
                [bezier7Path addCurveToPoint: CGPointMake(16.08, 20.43) controlPoint1: CGPointMake(16.06, 20.49) controlPoint2: CGPointMake(16.07, 20.46)];
                [bezier7Path addCurveToPoint: CGPointMake(16.09, 20.29) controlPoint1: CGPointMake(16.08, 20.4) controlPoint2: CGPointMake(16.09, 20.35)];
                [bezier7Path addCurveToPoint: CGPointMake(16.07, 20.2) controlPoint1: CGPointMake(16.09, 20.25) controlPoint2: CGPointMake(16.08, 20.22)];
                [bezier7Path addCurveToPoint: CGPointMake(16, 20.15) controlPoint1: CGPointMake(16.05, 20.18) controlPoint2: CGPointMake(16.03, 20.16)];
                [bezier7Path addCurveToPoint: CGPointMake(15.89, 20.13) controlPoint1: CGPointMake(15.97, 20.14) controlPoint2: CGPointMake(15.93, 20.13)];
                [bezier7Path addCurveToPoint: CGPointMake(15.75, 20.12) controlPoint1: CGPointMake(15.85, 20.13) controlPoint2: CGPointMake(15.8, 20.12)];
                [bezier7Path addCurveToPoint: CGPointMake(15.6, 20.13) controlPoint1: CGPointMake(15.69, 20.12) controlPoint2: CGPointMake(15.64, 20.12)];
                [bezier7Path addCurveToPoint: CGPointMake(15.5, 20.16) controlPoint1: CGPointMake(15.56, 20.13) controlPoint2: CGPointMake(15.52, 20.15)];
                [bezier7Path addCurveToPoint: CGPointMake(15.44, 20.23) controlPoint1: CGPointMake(15.47, 20.17) controlPoint2: CGPointMake(15.46, 20.2)];
                [bezier7Path addCurveToPoint: CGPointMake(15.42, 20.35) controlPoint1: CGPointMake(15.42, 20.26) controlPoint2: CGPointMake(15.42, 20.3)];
                [bezier7Path addCurveToPoint: CGPointMake(15.42, 20.46) controlPoint1: CGPointMake(15.42, 20.4) controlPoint2: CGPointMake(15.42, 20.43)];
                [bezier7Path addCurveToPoint: CGPointMake(15.46, 20.53) controlPoint1: CGPointMake(15.43, 20.49) controlPoint2: CGPointMake(15.44, 20.51)];
                [bezier7Path addCurveToPoint: CGPointMake(15.56, 20.57) controlPoint1: CGPointMake(15.48, 20.55) controlPoint2: CGPointMake(15.52, 20.56)];
                [bezier7Path addCurveToPoint: CGPointMake(15.75, 20.61) controlPoint1: CGPointMake(15.61, 20.57) controlPoint2: CGPointMake(15.67, 20.58)];
                [bezier7Path closePath];
                bezier7Path.miterLimit = 4;

                [fillColor setFill];
                [bezier7Path fill];


                //// Bezier 8 Drawing
                UIBezierPath* bezier8Path = [UIBezierPath bezierPath];
                [bezier8Path moveToPoint: CGPointMake(18.45, 21.17)];
                [bezier8Path addLineToPoint: CGPointMake(18.45, 21.17)];
                [bezier8Path addCurveToPoint: CGPointMake(18.4, 21.41) controlPoint1: CGPointMake(18.45, 21.27) controlPoint2: CGPointMake(18.43, 21.35)];
                [bezier8Path addCurveToPoint: CGPointMake(18.26, 21.56) controlPoint1: CGPointMake(18.37, 21.47) controlPoint2: CGPointMake(18.32, 21.53)];
                [bezier8Path addCurveToPoint: CGPointMake(18.04, 21.65) controlPoint1: CGPointMake(18.2, 21.6) controlPoint2: CGPointMake(18.12, 21.63)];
                [bezier8Path addCurveToPoint: CGPointMake(17.76, 21.67) controlPoint1: CGPointMake(17.96, 21.67) controlPoint2: CGPointMake(17.86, 21.67)];
                [bezier8Path addCurveToPoint: CGPointMake(17.47, 21.64) controlPoint1: CGPointMake(17.65, 21.67) controlPoint2: CGPointMake(17.56, 21.66)];
                [bezier8Path addCurveToPoint: CGPointMake(17.26, 21.55) controlPoint1: CGPointMake(17.39, 21.62) controlPoint2: CGPointMake(17.32, 21.59)];
                [bezier8Path addCurveToPoint: CGPointMake(17.12, 21.4) controlPoint1: CGPointMake(17.2, 21.51) controlPoint2: CGPointMake(17.16, 21.46)];
                [bezier8Path addCurveToPoint: CGPointMake(17.07, 21.18) controlPoint1: CGPointMake(17.09, 21.34) controlPoint2: CGPointMake(17.07, 21.27)];
                [bezier8Path addLineToPoint: CGPointMake(17.07, 20.3)];
                [bezier8Path addCurveToPoint: CGPointMake(17.25, 19.94) controlPoint1: CGPointMake(17.07, 20.14) controlPoint2: CGPointMake(17.13, 20.02)];
                [bezier8Path addCurveToPoint: CGPointMake(17.76, 19.82) controlPoint1: CGPointMake(17.37, 19.86) controlPoint2: CGPointMake(17.54, 19.82)];
                [bezier8Path addCurveToPoint: CGPointMake(18.04, 19.85) controlPoint1: CGPointMake(17.86, 19.82) controlPoint2: CGPointMake(17.95, 19.83)];
                [bezier8Path addCurveToPoint: CGPointMake(18.25, 19.94) controlPoint1: CGPointMake(18.12, 19.87) controlPoint2: CGPointMake(18.2, 19.9)];
                [bezier8Path addCurveToPoint: CGPointMake(18.39, 20.09) controlPoint1: CGPointMake(18.31, 19.98) controlPoint2: CGPointMake(18.36, 20.03)];
                [bezier8Path addCurveToPoint: CGPointMake(18.44, 20.31) controlPoint1: CGPointMake(18.42, 20.15) controlPoint2: CGPointMake(18.44, 20.22)];
                [bezier8Path addLineToPoint: CGPointMake(18.44, 21.17)];
                [bezier8Path addLineToPoint: CGPointMake(18.45, 21.17)];
                [bezier8Path closePath];
                [bezier8Path moveToPoint: CGPointMake(18.09, 20.32)];
                [bezier8Path addCurveToPoint: CGPointMake(18.01, 20.17) controlPoint1: CGPointMake(18.09, 20.26) controlPoint2: CGPointMake(18.06, 20.2)];
                [bezier8Path addCurveToPoint: CGPointMake(17.76, 20.12) controlPoint1: CGPointMake(17.96, 20.13) controlPoint2: CGPointMake(17.87, 20.12)];
                [bezier8Path addCurveToPoint: CGPointMake(17.52, 20.17) controlPoint1: CGPointMake(17.65, 20.12) controlPoint2: CGPointMake(17.57, 20.14)];
                [bezier8Path addCurveToPoint: CGPointMake(17.44, 20.31) controlPoint1: CGPointMake(17.47, 20.21) controlPoint2: CGPointMake(17.44, 20.25)];
                [bezier8Path addLineToPoint: CGPointMake(17.44, 21.18)];
                [bezier8Path addCurveToPoint: CGPointMake(17.52, 21.33) controlPoint1: CGPointMake(17.44, 21.25) controlPoint2: CGPointMake(17.47, 21.3)];
                [bezier8Path addCurveToPoint: CGPointMake(17.76, 21.37) controlPoint1: CGPointMake(17.57, 21.36) controlPoint2: CGPointMake(17.65, 21.37)];
                [bezier8Path addCurveToPoint: CGPointMake(18, 21.32) controlPoint1: CGPointMake(17.86, 21.37) controlPoint2: CGPointMake(17.94, 21.36)];
                [bezier8Path addCurveToPoint: CGPointMake(18.09, 21.17) controlPoint1: CGPointMake(18.06, 21.29) controlPoint2: CGPointMake(18.09, 21.24)];
                [bezier8Path addLineToPoint: CGPointMake(18.09, 20.32)];
                [bezier8Path closePath];
                bezier8Path.miterLimit = 4;

                [fillColor setFill];
                [bezier8Path fill];


                //// Bezier 9 Drawing
                UIBezierPath* bezier9Path = [UIBezierPath bezierPath];
                [bezier9Path moveToPoint: CGPointMake(20.45, 21.17)];
                [bezier9Path addLineToPoint: CGPointMake(20.45, 21.17)];
                [bezier9Path addCurveToPoint: CGPointMake(20.4, 21.41) controlPoint1: CGPointMake(20.46, 21.27) controlPoint2: CGPointMake(20.43, 21.35)];
                [bezier9Path addCurveToPoint: CGPointMake(20.26, 21.56) controlPoint1: CGPointMake(20.37, 21.47) controlPoint2: CGPointMake(20.32, 21.53)];
                [bezier9Path addCurveToPoint: CGPointMake(20.04, 21.65) controlPoint1: CGPointMake(20.2, 21.6) controlPoint2: CGPointMake(20.13, 21.63)];
                [bezier9Path addCurveToPoint: CGPointMake(19.76, 21.67) controlPoint1: CGPointMake(19.95, 21.67) controlPoint2: CGPointMake(19.86, 21.67)];
                [bezier9Path addCurveToPoint: CGPointMake(19.47, 21.64) controlPoint1: CGPointMake(19.65, 21.67) controlPoint2: CGPointMake(19.56, 21.66)];
                [bezier9Path addCurveToPoint: CGPointMake(19.25, 21.55) controlPoint1: CGPointMake(19.38, 21.62) controlPoint2: CGPointMake(19.32, 21.59)];
                [bezier9Path addCurveToPoint: CGPointMake(19.12, 21.4) controlPoint1: CGPointMake(19.19, 21.51) controlPoint2: CGPointMake(19.15, 21.46)];
                [bezier9Path addCurveToPoint: CGPointMake(19.07, 21.18) controlPoint1: CGPointMake(19.09, 21.34) controlPoint2: CGPointMake(19.07, 21.27)];
                [bezier9Path addLineToPoint: CGPointMake(19.07, 20.3)];
                [bezier9Path addCurveToPoint: CGPointMake(19.25, 19.94) controlPoint1: CGPointMake(19.07, 20.14) controlPoint2: CGPointMake(19.13, 20.02)];
                [bezier9Path addCurveToPoint: CGPointMake(19.76, 19.82) controlPoint1: CGPointMake(19.37, 19.86) controlPoint2: CGPointMake(19.54, 19.82)];
                [bezier9Path addCurveToPoint: CGPointMake(20.04, 19.85) controlPoint1: CGPointMake(19.86, 19.82) controlPoint2: CGPointMake(19.95, 19.83)];
                [bezier9Path addCurveToPoint: CGPointMake(20.25, 19.94) controlPoint1: CGPointMake(20.12, 19.87) controlPoint2: CGPointMake(20.2, 19.9)];
                [bezier9Path addCurveToPoint: CGPointMake(20.39, 20.09) controlPoint1: CGPointMake(20.31, 19.98) controlPoint2: CGPointMake(20.36, 20.03)];
                [bezier9Path addCurveToPoint: CGPointMake(20.44, 20.31) controlPoint1: CGPointMake(20.42, 20.15) controlPoint2: CGPointMake(20.44, 20.22)];
                [bezier9Path addLineToPoint: CGPointMake(20.44, 21.17)];
                [bezier9Path addLineToPoint: CGPointMake(20.45, 21.17)];
                [bezier9Path closePath];
                [bezier9Path moveToPoint: CGPointMake(20.09, 20.32)];
                [bezier9Path addCurveToPoint: CGPointMake(20.01, 20.17) controlPoint1: CGPointMake(20.09, 20.26) controlPoint2: CGPointMake(20.06, 20.2)];
                [bezier9Path addCurveToPoint: CGPointMake(19.76, 20.12) controlPoint1: CGPointMake(19.95, 20.13) controlPoint2: CGPointMake(19.87, 20.12)];
                [bezier9Path addCurveToPoint: CGPointMake(19.51, 20.17) controlPoint1: CGPointMake(19.65, 20.12) controlPoint2: CGPointMake(19.57, 20.14)];
                [bezier9Path addCurveToPoint: CGPointMake(19.43, 20.31) controlPoint1: CGPointMake(19.46, 20.21) controlPoint2: CGPointMake(19.43, 20.25)];
                [bezier9Path addLineToPoint: CGPointMake(19.43, 21.18)];
                [bezier9Path addCurveToPoint: CGPointMake(19.51, 21.33) controlPoint1: CGPointMake(19.43, 21.25) controlPoint2: CGPointMake(19.46, 21.3)];
                [bezier9Path addCurveToPoint: CGPointMake(19.75, 21.37) controlPoint1: CGPointMake(19.56, 21.36) controlPoint2: CGPointMake(19.64, 21.37)];
                [bezier9Path addCurveToPoint: CGPointMake(19.99, 21.32) controlPoint1: CGPointMake(19.85, 21.37) controlPoint2: CGPointMake(19.94, 21.36)];
                [bezier9Path addCurveToPoint: CGPointMake(20.08, 21.17) controlPoint1: CGPointMake(20.05, 21.29) controlPoint2: CGPointMake(20.08, 21.24)];
                [bezier9Path addLineToPoint: CGPointMake(20.08, 20.32)];
                [bezier9Path addLineToPoint: CGPointMake(20.09, 20.32)];
                [bezier9Path closePath];
                bezier9Path.miterLimit = 4;

                [fillColor setFill];
                [bezier9Path fill];


                //// Bezier 10 Drawing
                UIBezierPath* bezier10Path = [UIBezierPath bezierPath];
                [bezier10Path moveToPoint: CGPointMake(23.41, 20.62)];
                [bezier10Path addCurveToPoint: CGPointMake(23.57, 20.7) controlPoint1: CGPointMake(23.48, 20.64) controlPoint2: CGPointMake(23.53, 20.67)];
                [bezier10Path addCurveToPoint: CGPointMake(23.66, 20.86) controlPoint1: CGPointMake(23.61, 20.74) controlPoint2: CGPointMake(23.64, 20.79)];
                [bezier10Path addCurveToPoint: CGPointMake(23.69, 21.12) controlPoint1: CGPointMake(23.68, 20.93) controlPoint2: CGPointMake(23.69, 21.01)];
                [bezier10Path addCurveToPoint: CGPointMake(23.66, 21.38) controlPoint1: CGPointMake(23.69, 21.23) controlPoint2: CGPointMake(23.68, 21.31)];
                [bezier10Path addCurveToPoint: CGPointMake(23.54, 21.55) controlPoint1: CGPointMake(23.64, 21.45) controlPoint2: CGPointMake(23.6, 21.51)];
                [bezier10Path addCurveToPoint: CGPointMake(23.31, 21.64) controlPoint1: CGPointMake(23.48, 21.59) controlPoint2: CGPointMake(23.41, 21.62)];
                [bezier10Path addCurveToPoint: CGPointMake(22.95, 21.66) controlPoint1: CGPointMake(23.21, 21.66) controlPoint2: CGPointMake(23.09, 21.66)];
                [bezier10Path addLineToPoint: CGPointMake(22.87, 21.66)];
                [bezier10Path addCurveToPoint: CGPointMake(22.69, 21.66) controlPoint1: CGPointMake(22.82, 21.66) controlPoint2: CGPointMake(22.75, 21.66)];
                [bezier10Path addCurveToPoint: CGPointMake(22.51, 21.63) controlPoint1: CGPointMake(22.62, 21.66) controlPoint2: CGPointMake(22.56, 21.65)];
                [bezier10Path addCurveToPoint: CGPointMake(22.37, 21.56) controlPoint1: CGPointMake(22.45, 21.61) controlPoint2: CGPointMake(22.41, 21.59)];
                [bezier10Path addCurveToPoint: CGPointMake(22.31, 21.42) controlPoint1: CGPointMake(22.33, 21.53) controlPoint2: CGPointMake(22.31, 21.48)];
                [bezier10Path addLineToPoint: CGPointMake(22.31, 21.42)];
                [bezier10Path addCurveToPoint: CGPointMake(22.36, 21.32) controlPoint1: CGPointMake(22.31, 21.38) controlPoint2: CGPointMake(22.32, 21.34)];
                [bezier10Path addCurveToPoint: CGPointMake(22.47, 21.28) controlPoint1: CGPointMake(22.39, 21.29) controlPoint2: CGPointMake(22.43, 21.28)];
                [bezier10Path addLineToPoint: CGPointMake(22.48, 21.28)];
                [bezier10Path addCurveToPoint: CGPointMake(22.56, 21.29) controlPoint1: CGPointMake(22.51, 21.28) controlPoint2: CGPointMake(22.54, 21.29)];
                [bezier10Path addCurveToPoint: CGPointMake(22.61, 21.31) controlPoint1: CGPointMake(22.58, 21.3) controlPoint2: CGPointMake(22.59, 21.3)];
                [bezier10Path addCurveToPoint: CGPointMake(22.65, 21.34) controlPoint1: CGPointMake(22.62, 21.32) controlPoint2: CGPointMake(22.64, 21.33)];
                [bezier10Path addCurveToPoint: CGPointMake(22.71, 21.37) controlPoint1: CGPointMake(22.67, 21.35) controlPoint2: CGPointMake(22.68, 21.36)];
                [bezier10Path addCurveToPoint: CGPointMake(22.82, 21.39) controlPoint1: CGPointMake(22.74, 21.38) controlPoint2: CGPointMake(22.77, 21.38)];
                [bezier10Path addCurveToPoint: CGPointMake(23, 21.4) controlPoint1: CGPointMake(22.87, 21.4) controlPoint2: CGPointMake(22.92, 21.4)];
                [bezier10Path addCurveToPoint: CGPointMake(23.18, 21.38) controlPoint1: CGPointMake(23.07, 21.4) controlPoint2: CGPointMake(23.13, 21.4)];
                [bezier10Path addCurveToPoint: CGPointMake(23.29, 21.33) controlPoint1: CGPointMake(23.22, 21.37) controlPoint2: CGPointMake(23.26, 21.35)];
                [bezier10Path addCurveToPoint: CGPointMake(23.34, 21.25) controlPoint1: CGPointMake(23.32, 21.31) controlPoint2: CGPointMake(23.33, 21.28)];
                [bezier10Path addCurveToPoint: CGPointMake(23.35, 21.13) controlPoint1: CGPointMake(23.35, 21.22) controlPoint2: CGPointMake(23.35, 21.18)];
                [bezier10Path addCurveToPoint: CGPointMake(23.32, 20.96) controlPoint1: CGPointMake(23.35, 21.05) controlPoint2: CGPointMake(23.34, 20.99)];
                [bezier10Path addCurveToPoint: CGPointMake(23.2, 20.91) controlPoint1: CGPointMake(23.3, 20.92) controlPoint2: CGPointMake(23.26, 20.91)];
                [bezier10Path addLineToPoint: CGPointMake(22.59, 20.91)];
                [bezier10Path addCurveToPoint: CGPointMake(22.47, 20.9) controlPoint1: CGPointMake(22.54, 20.91) controlPoint2: CGPointMake(22.5, 20.91)];
                [bezier10Path addCurveToPoint: CGPointMake(22.4, 20.87) controlPoint1: CGPointMake(22.44, 20.9) controlPoint2: CGPointMake(22.42, 20.89)];
                [bezier10Path addCurveToPoint: CGPointMake(22.37, 20.8) controlPoint1: CGPointMake(22.38, 20.85) controlPoint2: CGPointMake(22.37, 20.83)];
                [bezier10Path addCurveToPoint: CGPointMake(22.36, 20.69) controlPoint1: CGPointMake(22.37, 20.77) controlPoint2: CGPointMake(22.36, 20.74)];
                [bezier10Path addLineToPoint: CGPointMake(22.36, 20.01)];
                [bezier10Path addCurveToPoint: CGPointMake(22.4, 19.89) controlPoint1: CGPointMake(22.36, 19.96) controlPoint2: CGPointMake(22.37, 19.92)];
                [bezier10Path addCurveToPoint: CGPointMake(22.55, 19.85) controlPoint1: CGPointMake(22.42, 19.86) controlPoint2: CGPointMake(22.48, 19.85)];
                [bezier10Path addCurveToPoint: CGPointMake(22.66, 19.85) controlPoint1: CGPointMake(22.57, 19.85) controlPoint2: CGPointMake(22.61, 19.85)];
                [bezier10Path addCurveToPoint: CGPointMake(22.83, 19.85) controlPoint1: CGPointMake(22.71, 19.85) controlPoint2: CGPointMake(22.76, 19.85)];
                [bezier10Path addCurveToPoint: CGPointMake(23.02, 19.85) controlPoint1: CGPointMake(22.89, 19.85) controlPoint2: CGPointMake(22.95, 19.85)];
                [bezier10Path addCurveToPoint: CGPointMake(23.2, 19.85) controlPoint1: CGPointMake(23.09, 19.85) controlPoint2: CGPointMake(23.15, 19.85)];
                [bezier10Path addCurveToPoint: CGPointMake(23.35, 19.85) controlPoint1: CGPointMake(23.26, 19.85) controlPoint2: CGPointMake(23.3, 19.85)];
                [bezier10Path addCurveToPoint: CGPointMake(23.42, 19.85) controlPoint1: CGPointMake(23.39, 19.85) controlPoint2: CGPointMake(23.42, 19.85)];
                [bezier10Path addCurveToPoint: CGPointMake(23.49, 19.86) controlPoint1: CGPointMake(23.44, 19.85) controlPoint2: CGPointMake(23.46, 19.85)];
                [bezier10Path addCurveToPoint: CGPointMake(23.56, 19.88) controlPoint1: CGPointMake(23.51, 19.86) controlPoint2: CGPointMake(23.54, 19.87)];
                [bezier10Path addCurveToPoint: CGPointMake(23.61, 19.92) controlPoint1: CGPointMake(23.58, 19.89) controlPoint2: CGPointMake(23.6, 19.91)];
                [bezier10Path addCurveToPoint: CGPointMake(23.63, 19.99) controlPoint1: CGPointMake(23.62, 19.94) controlPoint2: CGPointMake(23.63, 19.96)];
                [bezier10Path addLineToPoint: CGPointMake(23.63, 20)];
                [bezier10Path addCurveToPoint: CGPointMake(23.61, 20.08) controlPoint1: CGPointMake(23.63, 20.04) controlPoint2: CGPointMake(23.62, 20.06)];
                [bezier10Path addCurveToPoint: CGPointMake(23.57, 20.12) controlPoint1: CGPointMake(23.6, 20.1) controlPoint2: CGPointMake(23.58, 20.12)];
                [bezier10Path addCurveToPoint: CGPointMake(23.5, 20.14) controlPoint1: CGPointMake(23.55, 20.13) controlPoint2: CGPointMake(23.53, 20.13)];
                [bezier10Path addCurveToPoint: CGPointMake(23.42, 20.14) controlPoint1: CGPointMake(23.47, 20.14) controlPoint2: CGPointMake(23.45, 20.14)];
                [bezier10Path addLineToPoint: CGPointMake(22.71, 20.14)];
                [bezier10Path addLineToPoint: CGPointMake(22.71, 20.6)];
                [bezier10Path addLineToPoint: CGPointMake(23.19, 20.6)];
                [bezier10Path addCurveToPoint: CGPointMake(23.41, 20.62) controlPoint1: CGPointMake(23.25, 20.6) controlPoint2: CGPointMake(23.34, 20.6)];
                [bezier10Path closePath];
                bezier10Path.miterLimit = 4;

                [fillColor setFill];
                [bezier10Path fill];


                //// Bezier 11 Drawing
                UIBezierPath* bezier11Path = [UIBezierPath bezierPath];
                [bezier11Path moveToPoint: CGPointMake(25.67, 21.17)];
                [bezier11Path addLineToPoint: CGPointMake(25.67, 21.17)];
                [bezier11Path addCurveToPoint: CGPointMake(25.62, 21.41) controlPoint1: CGPointMake(25.67, 21.27) controlPoint2: CGPointMake(25.66, 21.35)];
                [bezier11Path addCurveToPoint: CGPointMake(25.48, 21.56) controlPoint1: CGPointMake(25.59, 21.47) controlPoint2: CGPointMake(25.54, 21.53)];
                [bezier11Path addCurveToPoint: CGPointMake(25.26, 21.65) controlPoint1: CGPointMake(25.42, 21.6) controlPoint2: CGPointMake(25.35, 21.63)];
                [bezier11Path addCurveToPoint: CGPointMake(24.98, 21.67) controlPoint1: CGPointMake(25.17, 21.67) controlPoint2: CGPointMake(25.08, 21.67)];
                [bezier11Path addCurveToPoint: CGPointMake(24.7, 21.64) controlPoint1: CGPointMake(24.88, 21.67) controlPoint2: CGPointMake(24.78, 21.66)];
                [bezier11Path addCurveToPoint: CGPointMake(24.48, 21.55) controlPoint1: CGPointMake(24.61, 21.62) controlPoint2: CGPointMake(24.54, 21.59)];
                [bezier11Path addCurveToPoint: CGPointMake(24.35, 21.4) controlPoint1: CGPointMake(24.42, 21.51) controlPoint2: CGPointMake(24.38, 21.46)];
                [bezier11Path addCurveToPoint: CGPointMake(24.31, 21.18) controlPoint1: CGPointMake(24.32, 21.34) controlPoint2: CGPointMake(24.31, 21.27)];
                [bezier11Path addLineToPoint: CGPointMake(24.31, 20.3)];
                [bezier11Path addCurveToPoint: CGPointMake(24.49, 19.94) controlPoint1: CGPointMake(24.31, 20.14) controlPoint2: CGPointMake(24.37, 20.02)];
                [bezier11Path addCurveToPoint: CGPointMake(25, 19.82) controlPoint1: CGPointMake(24.61, 19.86) controlPoint2: CGPointMake(24.78, 19.82)];
                [bezier11Path addCurveToPoint: CGPointMake(25.28, 19.85) controlPoint1: CGPointMake(25.1, 19.82) controlPoint2: CGPointMake(25.2, 19.83)];
                [bezier11Path addCurveToPoint: CGPointMake(25.49, 19.94) controlPoint1: CGPointMake(25.36, 19.87) controlPoint2: CGPointMake(25.44, 19.9)];
                [bezier11Path addCurveToPoint: CGPointMake(25.63, 20.09) controlPoint1: CGPointMake(25.55, 19.98) controlPoint2: CGPointMake(25.59, 20.03)];
                [bezier11Path addCurveToPoint: CGPointMake(25.68, 20.31) controlPoint1: CGPointMake(25.66, 20.15) controlPoint2: CGPointMake(25.68, 20.22)];
                [bezier11Path addLineToPoint: CGPointMake(25.68, 21.17)];
                [bezier11Path addLineToPoint: CGPointMake(25.67, 21.17)];
                [bezier11Path closePath];
                [bezier11Path moveToPoint: CGPointMake(25.31, 20.32)];
                [bezier11Path addCurveToPoint: CGPointMake(25.23, 20.17) controlPoint1: CGPointMake(25.31, 20.26) controlPoint2: CGPointMake(25.28, 20.2)];
                [bezier11Path addCurveToPoint: CGPointMake(24.98, 20.12) controlPoint1: CGPointMake(25.17, 20.13) controlPoint2: CGPointMake(25.09, 20.12)];
                [bezier11Path addCurveToPoint: CGPointMake(24.73, 20.17) controlPoint1: CGPointMake(24.87, 20.12) controlPoint2: CGPointMake(24.78, 20.14)];
                [bezier11Path addCurveToPoint: CGPointMake(24.65, 20.31) controlPoint1: CGPointMake(24.68, 20.21) controlPoint2: CGPointMake(24.65, 20.25)];
                [bezier11Path addLineToPoint: CGPointMake(24.65, 21.18)];
                [bezier11Path addCurveToPoint: CGPointMake(24.73, 21.33) controlPoint1: CGPointMake(24.65, 21.25) controlPoint2: CGPointMake(24.68, 21.3)];
                [bezier11Path addCurveToPoint: CGPointMake(24.97, 21.37) controlPoint1: CGPointMake(24.78, 21.36) controlPoint2: CGPointMake(24.86, 21.37)];
                [bezier11Path addCurveToPoint: CGPointMake(25.21, 21.32) controlPoint1: CGPointMake(25.08, 21.37) controlPoint2: CGPointMake(25.16, 21.36)];
                [bezier11Path addCurveToPoint: CGPointMake(25.3, 21.17) controlPoint1: CGPointMake(25.27, 21.29) controlPoint2: CGPointMake(25.3, 21.24)];
                [bezier11Path addLineToPoint: CGPointMake(25.3, 20.32)];
                [bezier11Path addLineToPoint: CGPointMake(25.31, 20.32)];
                [bezier11Path closePath];
                bezier11Path.miterLimit = 4;

                [fillColor setFill];
                [bezier11Path fill];


                //// Bezier 12 Drawing
                UIBezierPath* bezier12Path = [UIBezierPath bezierPath];
                [bezier12Path moveToPoint: CGPointMake(26.99, 19.82)];
                [bezier12Path addCurveToPoint: CGPointMake(27.33, 19.85) controlPoint1: CGPointMake(27.12, 19.82) controlPoint2: CGPointMake(27.24, 19.83)];
                [bezier12Path addCurveToPoint: CGPointMake(27.56, 19.94) controlPoint1: CGPointMake(27.42, 19.87) controlPoint2: CGPointMake(27.5, 19.9)];
                [bezier12Path addCurveToPoint: CGPointMake(27.68, 20.1) controlPoint1: CGPointMake(27.62, 19.98) controlPoint2: CGPointMake(27.66, 20.03)];
                [bezier12Path addCurveToPoint: CGPointMake(27.72, 20.34) controlPoint1: CGPointMake(27.7, 20.17) controlPoint2: CGPointMake(27.72, 20.25)];
                [bezier12Path addLineToPoint: CGPointMake(27.72, 20.35)];
                [bezier12Path addCurveToPoint: CGPointMake(27.69, 20.61) controlPoint1: CGPointMake(27.72, 20.45) controlPoint2: CGPointMake(27.71, 20.54)];
                [bezier12Path addCurveToPoint: CGPointMake(27.59, 20.78) controlPoint1: CGPointMake(27.67, 20.68) controlPoint2: CGPointMake(27.63, 20.73)];
                [bezier12Path addCurveToPoint: CGPointMake(27.41, 20.87) controlPoint1: CGPointMake(27.54, 20.82) controlPoint2: CGPointMake(27.48, 20.85)];
                [bezier12Path addCurveToPoint: CGPointMake(27.13, 20.9) controlPoint1: CGPointMake(27.33, 20.89) controlPoint2: CGPointMake(27.24, 20.9)];
                [bezier12Path addCurveToPoint: CGPointMake(26.89, 20.9) controlPoint1: CGPointMake(27.04, 20.9) controlPoint2: CGPointMake(26.96, 20.9)];
                [bezier12Path addCurveToPoint: CGPointMake(26.74, 20.93) controlPoint1: CGPointMake(26.83, 20.9) controlPoint2: CGPointMake(26.78, 20.91)];
                [bezier12Path addCurveToPoint: CGPointMake(26.66, 21.02) controlPoint1: CGPointMake(26.7, 20.95) controlPoint2: CGPointMake(26.68, 20.98)];
                [bezier12Path addCurveToPoint: CGPointMake(26.64, 21.19) controlPoint1: CGPointMake(26.65, 21.06) controlPoint2: CGPointMake(26.64, 21.12)];
                [bezier12Path addLineToPoint: CGPointMake(26.64, 21.36)];
                [bezier12Path addLineToPoint: CGPointMake(27.53, 21.36)];
                [bezier12Path addCurveToPoint: CGPointMake(27.6, 21.37) controlPoint1: CGPointMake(27.55, 21.36) controlPoint2: CGPointMake(27.57, 21.36)];
                [bezier12Path addCurveToPoint: CGPointMake(27.66, 21.4) controlPoint1: CGPointMake(27.62, 21.38) controlPoint2: CGPointMake(27.64, 21.39)];
                [bezier12Path addCurveToPoint: CGPointMake(27.71, 21.45) controlPoint1: CGPointMake(27.68, 21.41) controlPoint2: CGPointMake(27.69, 21.43)];
                [bezier12Path addCurveToPoint: CGPointMake(27.73, 21.52) controlPoint1: CGPointMake(27.72, 21.47) controlPoint2: CGPointMake(27.73, 21.49)];
                [bezier12Path addCurveToPoint: CGPointMake(27.71, 21.59) controlPoint1: CGPointMake(27.73, 21.55) controlPoint2: CGPointMake(27.73, 21.57)];
                [bezier12Path addCurveToPoint: CGPointMake(27.67, 21.63) controlPoint1: CGPointMake(27.7, 21.61) controlPoint2: CGPointMake(27.69, 21.62)];
                [bezier12Path addCurveToPoint: CGPointMake(27.61, 21.66) controlPoint1: CGPointMake(27.65, 21.64) controlPoint2: CGPointMake(27.63, 21.65)];
                [bezier12Path addCurveToPoint: CGPointMake(27.54, 21.67) controlPoint1: CGPointMake(27.59, 21.67) controlPoint2: CGPointMake(27.57, 21.67)];
                [bezier12Path addLineToPoint: CGPointMake(26.5, 21.67)];
                [bezier12Path addCurveToPoint: CGPointMake(26.34, 21.63) controlPoint1: CGPointMake(26.42, 21.67) controlPoint2: CGPointMake(26.37, 21.66)];
                [bezier12Path addCurveToPoint: CGPointMake(26.3, 21.51) controlPoint1: CGPointMake(26.31, 21.6) controlPoint2: CGPointMake(26.3, 21.56)];
                [bezier12Path addLineToPoint: CGPointMake(26.3, 21.14)];
                [bezier12Path addCurveToPoint: CGPointMake(26.34, 20.89) controlPoint1: CGPointMake(26.3, 21.04) controlPoint2: CGPointMake(26.31, 20.96)];
                [bezier12Path addCurveToPoint: CGPointMake(26.45, 20.73) controlPoint1: CGPointMake(26.36, 20.82) controlPoint2: CGPointMake(26.4, 20.77)];
                [bezier12Path addCurveToPoint: CGPointMake(26.63, 20.64) controlPoint1: CGPointMake(26.5, 20.69) controlPoint2: CGPointMake(26.56, 20.66)];
                [bezier12Path addCurveToPoint: CGPointMake(26.87, 20.61) controlPoint1: CGPointMake(26.7, 20.62) controlPoint2: CGPointMake(26.78, 20.61)];
                [bezier12Path addLineToPoint: CGPointMake(27.13, 20.6)];
                [bezier12Path addCurveToPoint: CGPointMake(27.25, 20.59) controlPoint1: CGPointMake(27.18, 20.6) controlPoint2: CGPointMake(27.22, 20.6)];
                [bezier12Path addCurveToPoint: CGPointMake(27.33, 20.55) controlPoint1: CGPointMake(27.28, 20.58) controlPoint2: CGPointMake(27.31, 20.57)];
                [bezier12Path addCurveToPoint: CGPointMake(27.37, 20.48) controlPoint1: CGPointMake(27.35, 20.53) controlPoint2: CGPointMake(27.36, 20.51)];
                [bezier12Path addCurveToPoint: CGPointMake(27.38, 20.37) controlPoint1: CGPointMake(27.38, 20.45) controlPoint2: CGPointMake(27.38, 20.41)];
                [bezier12Path addLineToPoint: CGPointMake(27.38, 20.36)];
                [bezier12Path addCurveToPoint: CGPointMake(27.36, 20.24) controlPoint1: CGPointMake(27.38, 20.31) controlPoint2: CGPointMake(27.38, 20.27)];
                [bezier12Path addCurveToPoint: CGPointMake(27.3, 20.17) controlPoint1: CGPointMake(27.35, 20.21) controlPoint2: CGPointMake(27.33, 20.18)];
                [bezier12Path addCurveToPoint: CGPointMake(27.18, 20.13) controlPoint1: CGPointMake(27.27, 20.15) controlPoint2: CGPointMake(27.23, 20.14)];
                [bezier12Path addCurveToPoint: CGPointMake(26.99, 20.12) controlPoint1: CGPointMake(27.13, 20.12) controlPoint2: CGPointMake(27.06, 20.12)];
                [bezier12Path addCurveToPoint: CGPointMake(26.82, 20.13) controlPoint1: CGPointMake(26.93, 20.12) controlPoint2: CGPointMake(26.87, 20.12)];
                [bezier12Path addCurveToPoint: CGPointMake(26.69, 20.16) controlPoint1: CGPointMake(26.77, 20.14) controlPoint2: CGPointMake(26.73, 20.15)];
                [bezier12Path addCurveToPoint: CGPointMake(26.6, 20.19) controlPoint1: CGPointMake(26.66, 20.17) controlPoint2: CGPointMake(26.63, 20.18)];
                [bezier12Path addCurveToPoint: CGPointMake(26.51, 20.21) controlPoint1: CGPointMake(26.58, 20.2) controlPoint2: CGPointMake(26.54, 20.21)];
                [bezier12Path addLineToPoint: CGPointMake(26.5, 20.21)];
                [bezier12Path addCurveToPoint: CGPointMake(26.39, 20.16) controlPoint1: CGPointMake(26.46, 20.21) controlPoint2: CGPointMake(26.42, 20.19)];
                [bezier12Path addCurveToPoint: CGPointMake(26.35, 20.05) controlPoint1: CGPointMake(26.36, 20.13) controlPoint2: CGPointMake(26.35, 20.1)];
                [bezier12Path addLineToPoint: CGPointMake(26.35, 20.04)];
                [bezier12Path addCurveToPoint: CGPointMake(26.41, 19.94) controlPoint1: CGPointMake(26.35, 20) controlPoint2: CGPointMake(26.37, 19.96)];
                [bezier12Path addCurveToPoint: CGPointMake(26.55, 19.87) controlPoint1: CGPointMake(26.44, 19.91) controlPoint2: CGPointMake(26.49, 19.89)];
                [bezier12Path addCurveToPoint: CGPointMake(26.76, 19.83) controlPoint1: CGPointMake(26.61, 19.85) controlPoint2: CGPointMake(26.68, 19.84)];
                [bezier12Path addCurveToPoint: CGPointMake(26.99, 19.82) controlPoint1: CGPointMake(26.81, 19.83) controlPoint2: CGPointMake(26.9, 19.82)];
                [bezier12Path closePath];
                bezier12Path.miterLimit = 4;

                [fillColor setFill];
                [bezier12Path fill];


                //// Bezier 13 Drawing
                UIBezierPath* bezier13Path = [UIBezierPath bezierPath];
                [bezier13Path moveToPoint: CGPointMake(29.06, 20.54)];
                [bezier13Path addCurveToPoint: CGPointMake(29.35, 20.58) controlPoint1: CGPointMake(29.18, 20.54) controlPoint2: CGPointMake(29.27, 20.55)];
                [bezier13Path addCurveToPoint: CGPointMake(29.54, 20.69) controlPoint1: CGPointMake(29.43, 20.61) controlPoint2: CGPointMake(29.49, 20.64)];
                [bezier13Path addCurveToPoint: CGPointMake(29.64, 20.87) controlPoint1: CGPointMake(29.59, 20.74) controlPoint2: CGPointMake(29.62, 20.8)];
                [bezier13Path addCurveToPoint: CGPointMake(29.67, 21.12) controlPoint1: CGPointMake(29.66, 20.94) controlPoint2: CGPointMake(29.67, 21.02)];
                [bezier13Path addCurveToPoint: CGPointMake(29.63, 21.36) controlPoint1: CGPointMake(29.67, 21.21) controlPoint2: CGPointMake(29.66, 21.29)];
                [bezier13Path addCurveToPoint: CGPointMake(29.51, 21.54) controlPoint1: CGPointMake(29.61, 21.43) controlPoint2: CGPointMake(29.57, 21.49)];
                [bezier13Path addCurveToPoint: CGPointMake(29.3, 21.65) controlPoint1: CGPointMake(29.46, 21.59) controlPoint2: CGPointMake(29.39, 21.62)];
                [bezier13Path addCurveToPoint: CGPointMake(28.97, 21.69) controlPoint1: CGPointMake(29.21, 21.67) controlPoint2: CGPointMake(29.1, 21.69)];
                [bezier13Path addCurveToPoint: CGPointMake(28.7, 21.66) controlPoint1: CGPointMake(28.87, 21.69) controlPoint2: CGPointMake(28.78, 21.68)];
                [bezier13Path addCurveToPoint: CGPointMake(28.49, 21.57) controlPoint1: CGPointMake(28.62, 21.64) controlPoint2: CGPointMake(28.55, 21.61)];
                [bezier13Path addCurveToPoint: CGPointMake(28.35, 21.41) controlPoint1: CGPointMake(28.43, 21.53) controlPoint2: CGPointMake(28.38, 21.48)];
                [bezier13Path addCurveToPoint: CGPointMake(28.3, 21.17) controlPoint1: CGPointMake(28.32, 21.34) controlPoint2: CGPointMake(28.3, 21.27)];
                [bezier13Path addLineToPoint: CGPointMake(28.3, 19.98)];
                [bezier13Path addCurveToPoint: CGPointMake(28.31, 19.93) controlPoint1: CGPointMake(28.3, 19.96) controlPoint2: CGPointMake(28.3, 19.94)];
                [bezier13Path addCurveToPoint: CGPointMake(28.34, 19.88) controlPoint1: CGPointMake(28.32, 19.91) controlPoint2: CGPointMake(28.33, 19.89)];
                [bezier13Path addCurveToPoint: CGPointMake(28.4, 19.84) controlPoint1: CGPointMake(28.36, 19.87) controlPoint2: CGPointMake(28.37, 19.85)];
                [bezier13Path addCurveToPoint: CGPointMake(28.49, 19.83) controlPoint1: CGPointMake(28.43, 19.83) controlPoint2: CGPointMake(28.45, 19.83)];
                [bezier13Path addCurveToPoint: CGPointMake(28.62, 19.87) controlPoint1: CGPointMake(28.55, 19.83) controlPoint2: CGPointMake(28.6, 19.84)];
                [bezier13Path addCurveToPoint: CGPointMake(28.66, 19.98) controlPoint1: CGPointMake(28.65, 19.9) controlPoint2: CGPointMake(28.66, 19.93)];
                [bezier13Path addLineToPoint: CGPointMake(28.66, 20.57)];
                [bezier13Path addCurveToPoint: CGPointMake(28.88, 20.55) controlPoint1: CGPointMake(28.75, 20.56) controlPoint2: CGPointMake(28.82, 20.55)];
                [bezier13Path addCurveToPoint: CGPointMake(29.06, 20.54) controlPoint1: CGPointMake(28.96, 20.54) controlPoint2: CGPointMake(29.02, 20.54)];
                [bezier13Path closePath];
                [bezier13Path moveToPoint: CGPointMake(29.33, 21.1)];
                [bezier13Path addCurveToPoint: CGPointMake(29.31, 20.97) controlPoint1: CGPointMake(29.33, 21.05) controlPoint2: CGPointMake(29.32, 21)];
                [bezier13Path addCurveToPoint: CGPointMake(29.26, 20.89) controlPoint1: CGPointMake(29.3, 20.93) controlPoint2: CGPointMake(29.28, 20.91)];
                [bezier13Path addCurveToPoint: CGPointMake(29.16, 20.85) controlPoint1: CGPointMake(29.24, 20.87) controlPoint2: CGPointMake(29.2, 20.86)];
                [bezier13Path addCurveToPoint: CGPointMake(29, 20.84) controlPoint1: CGPointMake(29.12, 20.84) controlPoint2: CGPointMake(29.06, 20.84)];
                [bezier13Path addCurveToPoint: CGPointMake(28.88, 20.84) controlPoint1: CGPointMake(28.95, 20.84) controlPoint2: CGPointMake(28.91, 20.84)];
                [bezier13Path addCurveToPoint: CGPointMake(28.8, 20.84) controlPoint1: CGPointMake(28.85, 20.84) controlPoint2: CGPointMake(28.82, 20.84)];
                [bezier13Path addCurveToPoint: CGPointMake(28.74, 20.85) controlPoint1: CGPointMake(28.78, 20.84) controlPoint2: CGPointMake(28.76, 20.84)];
                [bezier13Path addCurveToPoint: CGPointMake(28.68, 20.86) controlPoint1: CGPointMake(28.72, 20.85) controlPoint2: CGPointMake(28.7, 20.86)];
                [bezier13Path addLineToPoint: CGPointMake(28.68, 21.09)];
                [bezier13Path addCurveToPoint: CGPointMake(28.7, 21.22) controlPoint1: CGPointMake(28.68, 21.14) controlPoint2: CGPointMake(28.69, 21.19)];
                [bezier13Path addCurveToPoint: CGPointMake(28.75, 21.31) controlPoint1: CGPointMake(28.71, 21.25) controlPoint2: CGPointMake(28.73, 21.28)];
                [bezier13Path addCurveToPoint: CGPointMake(28.85, 21.36) controlPoint1: CGPointMake(28.78, 21.34) controlPoint2: CGPointMake(28.81, 21.35)];
                [bezier13Path addCurveToPoint: CGPointMake(29, 21.38) controlPoint1: CGPointMake(28.89, 21.37) controlPoint2: CGPointMake(28.94, 21.38)];
                [bezier13Path addCurveToPoint: CGPointMake(29.15, 21.37) controlPoint1: CGPointMake(29.06, 21.38) controlPoint2: CGPointMake(29.11, 21.38)];
                [bezier13Path addCurveToPoint: CGPointMake(29.25, 21.33) controlPoint1: CGPointMake(29.19, 21.36) controlPoint2: CGPointMake(29.22, 21.35)];
                [bezier13Path addCurveToPoint: CGPointMake(29.31, 21.25) controlPoint1: CGPointMake(29.28, 21.31) controlPoint2: CGPointMake(29.3, 21.28)];
                [bezier13Path addCurveToPoint: CGPointMake(29.33, 21.1) controlPoint1: CGPointMake(29.32, 21.21) controlPoint2: CGPointMake(29.33, 21.16)];
                [bezier13Path closePath];
                bezier13Path.miterLimit = 4;

                [fillColor setFill];
                [bezier13Path fill];


                //// Bezier 14 Drawing
                UIBezierPath* bezier14Path = [UIBezierPath bezierPath];
                [bezier14Path moveToPoint: CGPointMake(32.87, 21.17)];
                [bezier14Path addCurveToPoint: CGPointMake(32.84, 21.38) controlPoint1: CGPointMake(32.87, 21.25) controlPoint2: CGPointMake(32.86, 21.32)];
                [bezier14Path addCurveToPoint: CGPointMake(32.74, 21.54) controlPoint1: CGPointMake(32.82, 21.44) controlPoint2: CGPointMake(32.79, 21.5)];
                [bezier14Path addCurveToPoint: CGPointMake(32.52, 21.64) controlPoint1: CGPointMake(32.69, 21.58) controlPoint2: CGPointMake(32.61, 21.62)];
                [bezier14Path addCurveToPoint: CGPointMake(32.15, 21.67) controlPoint1: CGPointMake(32.43, 21.66) controlPoint2: CGPointMake(32.3, 21.67)];
                [bezier14Path addCurveToPoint: CGPointMake(31.79, 21.63) controlPoint1: CGPointMake(32, 21.67) controlPoint2: CGPointMake(31.89, 21.66)];
                [bezier14Path addCurveToPoint: CGPointMake(31.59, 21.53) controlPoint1: CGPointMake(31.7, 21.6) controlPoint2: CGPointMake(31.63, 21.57)];
                [bezier14Path addCurveToPoint: CGPointMake(31.49, 21.37) controlPoint1: CGPointMake(31.54, 21.49) controlPoint2: CGPointMake(31.5, 21.43)];
                [bezier14Path addCurveToPoint: CGPointMake(31.47, 21.17) controlPoint1: CGPointMake(31.48, 21.31) controlPoint2: CGPointMake(31.47, 21.24)];
                [bezier14Path addCurveToPoint: CGPointMake(31.48, 21.02) controlPoint1: CGPointMake(31.47, 21.11) controlPoint2: CGPointMake(31.47, 21.06)];
                [bezier14Path addCurveToPoint: CGPointMake(31.51, 20.92) controlPoint1: CGPointMake(31.48, 20.98) controlPoint2: CGPointMake(31.49, 20.95)];
                [bezier14Path addCurveToPoint: CGPointMake(31.59, 20.84) controlPoint1: CGPointMake(31.53, 20.89) controlPoint2: CGPointMake(31.55, 20.87)];
                [bezier14Path addCurveToPoint: CGPointMake(31.75, 20.75) controlPoint1: CGPointMake(31.63, 20.82) controlPoint2: CGPointMake(31.68, 20.79)];
                [bezier14Path addCurveToPoint: CGPointMake(31.6, 20.69) controlPoint1: CGPointMake(31.68, 20.73) controlPoint2: CGPointMake(31.63, 20.71)];
                [bezier14Path addCurveToPoint: CGPointMake(31.52, 20.62) controlPoint1: CGPointMake(31.56, 20.67) controlPoint2: CGPointMake(31.54, 20.65)];
                [bezier14Path addCurveToPoint: CGPointMake(31.49, 20.51) controlPoint1: CGPointMake(31.5, 20.59) controlPoint2: CGPointMake(31.49, 20.55)];
                [bezier14Path addCurveToPoint: CGPointMake(31.49, 20.33) controlPoint1: CGPointMake(31.49, 20.46) controlPoint2: CGPointMake(31.49, 20.4)];
                [bezier14Path addCurveToPoint: CGPointMake(31.52, 20.09) controlPoint1: CGPointMake(31.49, 20.23) controlPoint2: CGPointMake(31.5, 20.15)];
                [bezier14Path addCurveToPoint: CGPointMake(31.64, 19.93) controlPoint1: CGPointMake(31.54, 20.02) controlPoint2: CGPointMake(31.59, 19.97)];
                [bezier14Path addCurveToPoint: CGPointMake(31.85, 19.85) controlPoint1: CGPointMake(31.69, 19.89) controlPoint2: CGPointMake(31.76, 19.86)];
                [bezier14Path addCurveToPoint: CGPointMake(32.17, 19.83) controlPoint1: CGPointMake(31.94, 19.83) controlPoint2: CGPointMake(32.04, 19.83)];
                [bezier14Path addCurveToPoint: CGPointMake(32.49, 19.86) controlPoint1: CGPointMake(32.3, 19.83) controlPoint2: CGPointMake(32.4, 19.84)];
                [bezier14Path addCurveToPoint: CGPointMake(32.71, 19.94) controlPoint1: CGPointMake(32.58, 19.88) controlPoint2: CGPointMake(32.65, 19.91)];
                [bezier14Path addCurveToPoint: CGPointMake(32.83, 20.09) controlPoint1: CGPointMake(32.77, 19.98) controlPoint2: CGPointMake(32.8, 20.03)];
                [bezier14Path addCurveToPoint: CGPointMake(32.87, 20.33) controlPoint1: CGPointMake(32.85, 20.16) controlPoint2: CGPointMake(32.87, 20.23)];
                [bezier14Path addCurveToPoint: CGPointMake(32.86, 20.51) controlPoint1: CGPointMake(32.87, 20.4) controlPoint2: CGPointMake(32.87, 20.47)];
                [bezier14Path addCurveToPoint: CGPointMake(32.83, 20.62) controlPoint1: CGPointMake(32.86, 20.56) controlPoint2: CGPointMake(32.85, 20.59)];
                [bezier14Path addCurveToPoint: CGPointMake(32.75, 20.69) controlPoint1: CGPointMake(32.81, 20.65) controlPoint2: CGPointMake(32.79, 20.67)];
                [bezier14Path addCurveToPoint: CGPointMake(32.61, 20.75) controlPoint1: CGPointMake(32.71, 20.71) controlPoint2: CGPointMake(32.67, 20.73)];
                [bezier14Path addCurveToPoint: CGPointMake(32.76, 20.82) controlPoint1: CGPointMake(32.67, 20.78) controlPoint2: CGPointMake(32.72, 20.8)];
                [bezier14Path addCurveToPoint: CGPointMake(32.84, 20.89) controlPoint1: CGPointMake(32.79, 20.84) controlPoint2: CGPointMake(32.82, 20.87)];
                [bezier14Path addCurveToPoint: CGPointMake(32.87, 21) controlPoint1: CGPointMake(32.86, 20.92) controlPoint2: CGPointMake(32.87, 20.95)];
                [bezier14Path addCurveToPoint: CGPointMake(32.87, 21.17) controlPoint1: CGPointMake(32.87, 21.05) controlPoint2: CGPointMake(32.87, 21.1)];
                [bezier14Path closePath];
                [bezier14Path moveToPoint: CGPointMake(32.51, 21.14)];
                [bezier14Path addCurveToPoint: CGPointMake(32.5, 21.11) controlPoint1: CGPointMake(32.51, 21.14) controlPoint2: CGPointMake(32.51, 21.13)];
                [bezier14Path addCurveToPoint: CGPointMake(32.46, 21.05) controlPoint1: CGPointMake(32.5, 21.09) controlPoint2: CGPointMake(32.48, 21.07)];
                [bezier14Path addCurveToPoint: CGPointMake(32.36, 20.97) controlPoint1: CGPointMake(32.44, 21.02) controlPoint2: CGPointMake(32.4, 21)];
                [bezier14Path addCurveToPoint: CGPointMake(32.18, 20.89) controlPoint1: CGPointMake(32.32, 20.94) controlPoint2: CGPointMake(32.26, 20.91)];
                [bezier14Path addCurveToPoint: CGPointMake(32, 20.98) controlPoint1: CGPointMake(32.1, 20.92) controlPoint2: CGPointMake(32.04, 20.95)];
                [bezier14Path addCurveToPoint: CGPointMake(31.9, 21.07) controlPoint1: CGPointMake(31.96, 21.01) controlPoint2: CGPointMake(31.92, 21.04)];
                [bezier14Path addCurveToPoint: CGPointMake(31.86, 21.14) controlPoint1: CGPointMake(31.87, 21.1) controlPoint2: CGPointMake(31.86, 21.12)];
                [bezier14Path addCurveToPoint: CGPointMake(31.85, 21.18) controlPoint1: CGPointMake(31.85, 21.16) controlPoint2: CGPointMake(31.85, 21.17)];
                [bezier14Path addLineToPoint: CGPointMake(31.85, 21.18)];
                [bezier14Path addCurveToPoint: CGPointMake(31.87, 21.27) controlPoint1: CGPointMake(31.85, 21.22) controlPoint2: CGPointMake(31.85, 21.25)];
                [bezier14Path addCurveToPoint: CGPointMake(31.92, 21.33) controlPoint1: CGPointMake(31.88, 21.3) controlPoint2: CGPointMake(31.89, 21.32)];
                [bezier14Path addCurveToPoint: CGPointMake(32.03, 21.36) controlPoint1: CGPointMake(31.94, 21.34) controlPoint2: CGPointMake(31.98, 21.36)];
                [bezier14Path addCurveToPoint: CGPointMake(32.2, 21.37) controlPoint1: CGPointMake(32.08, 21.37) controlPoint2: CGPointMake(32.14, 21.37)];
                [bezier14Path addCurveToPoint: CGPointMake(32.36, 21.36) controlPoint1: CGPointMake(32.26, 21.37) controlPoint2: CGPointMake(32.32, 21.37)];
                [bezier14Path addCurveToPoint: CGPointMake(32.46, 21.33) controlPoint1: CGPointMake(32.4, 21.35) controlPoint2: CGPointMake(32.44, 21.34)];
                [bezier14Path addCurveToPoint: CGPointMake(32.52, 21.27) controlPoint1: CGPointMake(32.49, 21.31) controlPoint2: CGPointMake(32.5, 21.29)];
                [bezier14Path addCurveToPoint: CGPointMake(32.53, 21.18) controlPoint1: CGPointMake(32.53, 21.25) controlPoint2: CGPointMake(32.53, 21.21)];
                [bezier14Path addLineToPoint: CGPointMake(32.53, 21.14)];
                [bezier14Path addLineToPoint: CGPointMake(32.51, 21.14)];
                [bezier14Path closePath];
                [bezier14Path moveToPoint: CGPointMake(32.18, 20.61)];
                [bezier14Path addCurveToPoint: CGPointMake(32.37, 20.56) controlPoint1: CGPointMake(32.26, 20.59) controlPoint2: CGPointMake(32.32, 20.57)];
                [bezier14Path addCurveToPoint: CGPointMake(32.47, 20.51) controlPoint1: CGPointMake(32.41, 20.55) controlPoint2: CGPointMake(32.45, 20.53)];
                [bezier14Path addCurveToPoint: CGPointMake(32.51, 20.43) controlPoint1: CGPointMake(32.49, 20.49) controlPoint2: CGPointMake(32.5, 20.46)];
                [bezier14Path addCurveToPoint: CGPointMake(32.51, 20.29) controlPoint1: CGPointMake(32.51, 20.4) controlPoint2: CGPointMake(32.51, 20.35)];
                [bezier14Path addCurveToPoint: CGPointMake(32.49, 20.2) controlPoint1: CGPointMake(32.51, 20.25) controlPoint2: CGPointMake(32.5, 20.22)];
                [bezier14Path addCurveToPoint: CGPointMake(32.42, 20.15) controlPoint1: CGPointMake(32.47, 20.18) controlPoint2: CGPointMake(32.45, 20.16)];
                [bezier14Path addCurveToPoint: CGPointMake(32.31, 20.13) controlPoint1: CGPointMake(32.39, 20.14) controlPoint2: CGPointMake(32.35, 20.13)];
                [bezier14Path addCurveToPoint: CGPointMake(32.17, 20.12) controlPoint1: CGPointMake(32.27, 20.13) controlPoint2: CGPointMake(32.22, 20.12)];
                [bezier14Path addCurveToPoint: CGPointMake(32.02, 20.13) controlPoint1: CGPointMake(32.11, 20.12) controlPoint2: CGPointMake(32.06, 20.12)];
                [bezier14Path addCurveToPoint: CGPointMake(31.92, 20.16) controlPoint1: CGPointMake(31.98, 20.13) controlPoint2: CGPointMake(31.95, 20.15)];
                [bezier14Path addCurveToPoint: CGPointMake(31.86, 20.23) controlPoint1: CGPointMake(31.89, 20.17) controlPoint2: CGPointMake(31.87, 20.2)];
                [bezier14Path addCurveToPoint: CGPointMake(31.84, 20.35) controlPoint1: CGPointMake(31.85, 20.26) controlPoint2: CGPointMake(31.84, 20.3)];
                [bezier14Path addCurveToPoint: CGPointMake(31.85, 20.46) controlPoint1: CGPointMake(31.84, 20.4) controlPoint2: CGPointMake(31.84, 20.43)];
                [bezier14Path addCurveToPoint: CGPointMake(31.89, 20.53) controlPoint1: CGPointMake(31.85, 20.49) controlPoint2: CGPointMake(31.87, 20.51)];
                [bezier14Path addCurveToPoint: CGPointMake(31.99, 20.57) controlPoint1: CGPointMake(31.91, 20.55) controlPoint2: CGPointMake(31.94, 20.56)];
                [bezier14Path addCurveToPoint: CGPointMake(32.18, 20.61) controlPoint1: CGPointMake(32.03, 20.57) controlPoint2: CGPointMake(32.09, 20.58)];
                [bezier14Path closePath];
                bezier14Path.miterLimit = 4;

                [fillColor setFill];
                [bezier14Path fill];


                //// Bezier 15 Drawing
                UIBezierPath* bezier15Path = [UIBezierPath bezierPath];
                [bezier15Path moveToPoint: CGPointMake(34.18, 19.82)];
                [bezier15Path addCurveToPoint: CGPointMake(34.52, 19.85) controlPoint1: CGPointMake(34.31, 19.82) controlPoint2: CGPointMake(34.43, 19.83)];
                [bezier15Path addCurveToPoint: CGPointMake(34.75, 19.94) controlPoint1: CGPointMake(34.61, 19.87) controlPoint2: CGPointMake(34.69, 19.9)];
                [bezier15Path addCurveToPoint: CGPointMake(34.87, 20.1) controlPoint1: CGPointMake(34.81, 19.98) controlPoint2: CGPointMake(34.85, 20.03)];
                [bezier15Path addCurveToPoint: CGPointMake(34.91, 20.34) controlPoint1: CGPointMake(34.9, 20.17) controlPoint2: CGPointMake(34.91, 20.25)];
                [bezier15Path addLineToPoint: CGPointMake(34.91, 20.35)];
                [bezier15Path addCurveToPoint: CGPointMake(34.88, 20.61) controlPoint1: CGPointMake(34.91, 20.45) controlPoint2: CGPointMake(34.9, 20.54)];
                [bezier15Path addCurveToPoint: CGPointMake(34.78, 20.78) controlPoint1: CGPointMake(34.86, 20.68) controlPoint2: CGPointMake(34.83, 20.73)];
                [bezier15Path addCurveToPoint: CGPointMake(34.6, 20.87) controlPoint1: CGPointMake(34.74, 20.82) controlPoint2: CGPointMake(34.67, 20.85)];
                [bezier15Path addCurveToPoint: CGPointMake(34.32, 20.9) controlPoint1: CGPointMake(34.52, 20.89) controlPoint2: CGPointMake(34.44, 20.9)];
                [bezier15Path addCurveToPoint: CGPointMake(34.08, 20.9) controlPoint1: CGPointMake(34.22, 20.9) controlPoint2: CGPointMake(34.15, 20.9)];
                [bezier15Path addCurveToPoint: CGPointMake(33.93, 20.93) controlPoint1: CGPointMake(34.02, 20.9) controlPoint2: CGPointMake(33.97, 20.91)];
                [bezier15Path addCurveToPoint: CGPointMake(33.85, 21.02) controlPoint1: CGPointMake(33.89, 20.95) controlPoint2: CGPointMake(33.87, 20.98)];
                [bezier15Path addCurveToPoint: CGPointMake(33.83, 21.19) controlPoint1: CGPointMake(33.83, 21.06) controlPoint2: CGPointMake(33.83, 21.12)];
                [bezier15Path addLineToPoint: CGPointMake(33.83, 21.36)];
                [bezier15Path addLineToPoint: CGPointMake(34.72, 21.36)];
                [bezier15Path addCurveToPoint: CGPointMake(34.79, 21.37) controlPoint1: CGPointMake(34.74, 21.36) controlPoint2: CGPointMake(34.76, 21.36)];
                [bezier15Path addCurveToPoint: CGPointMake(34.85, 21.4) controlPoint1: CGPointMake(34.81, 21.38) controlPoint2: CGPointMake(34.83, 21.39)];
                [bezier15Path addCurveToPoint: CGPointMake(34.89, 21.45) controlPoint1: CGPointMake(34.87, 21.41) controlPoint2: CGPointMake(34.88, 21.43)];
                [bezier15Path addCurveToPoint: CGPointMake(34.91, 21.52) controlPoint1: CGPointMake(34.9, 21.47) controlPoint2: CGPointMake(34.91, 21.49)];
                [bezier15Path addCurveToPoint: CGPointMake(34.9, 21.59) controlPoint1: CGPointMake(34.91, 21.55) controlPoint2: CGPointMake(34.91, 21.57)];
                [bezier15Path addCurveToPoint: CGPointMake(34.85, 21.63) controlPoint1: CGPointMake(34.89, 21.61) controlPoint2: CGPointMake(34.87, 21.62)];
                [bezier15Path addCurveToPoint: CGPointMake(34.79, 21.66) controlPoint1: CGPointMake(34.83, 21.64) controlPoint2: CGPointMake(34.81, 21.65)];
                [bezier15Path addCurveToPoint: CGPointMake(34.72, 21.67) controlPoint1: CGPointMake(34.77, 21.67) controlPoint2: CGPointMake(34.75, 21.67)];
                [bezier15Path addLineToPoint: CGPointMake(33.68, 21.67)];
                [bezier15Path addCurveToPoint: CGPointMake(33.52, 21.63) controlPoint1: CGPointMake(33.6, 21.67) controlPoint2: CGPointMake(33.55, 21.66)];
                [bezier15Path addCurveToPoint: CGPointMake(33.48, 21.51) controlPoint1: CGPointMake(33.5, 21.6) controlPoint2: CGPointMake(33.48, 21.56)];
                [bezier15Path addLineToPoint: CGPointMake(33.48, 21.14)];
                [bezier15Path addCurveToPoint: CGPointMake(33.52, 20.89) controlPoint1: CGPointMake(33.48, 21.04) controlPoint2: CGPointMake(33.49, 20.96)];
                [bezier15Path addCurveToPoint: CGPointMake(33.63, 20.73) controlPoint1: CGPointMake(33.55, 20.82) controlPoint2: CGPointMake(33.58, 20.77)];
                [bezier15Path addCurveToPoint: CGPointMake(33.81, 20.64) controlPoint1: CGPointMake(33.68, 20.69) controlPoint2: CGPointMake(33.74, 20.66)];
                [bezier15Path addCurveToPoint: CGPointMake(34.05, 20.61) controlPoint1: CGPointMake(33.88, 20.62) controlPoint2: CGPointMake(33.96, 20.61)];
                [bezier15Path addLineToPoint: CGPointMake(34.31, 20.6)];
                [bezier15Path addCurveToPoint: CGPointMake(34.43, 20.59) controlPoint1: CGPointMake(34.36, 20.6) controlPoint2: CGPointMake(34.4, 20.6)];
                [bezier15Path addCurveToPoint: CGPointMake(34.51, 20.55) controlPoint1: CGPointMake(34.46, 20.58) controlPoint2: CGPointMake(34.49, 20.57)];
                [bezier15Path addCurveToPoint: CGPointMake(34.55, 20.48) controlPoint1: CGPointMake(34.53, 20.53) controlPoint2: CGPointMake(34.54, 20.51)];
                [bezier15Path addCurveToPoint: CGPointMake(34.56, 20.37) controlPoint1: CGPointMake(34.56, 20.45) controlPoint2: CGPointMake(34.56, 20.41)];
                [bezier15Path addLineToPoint: CGPointMake(34.56, 20.36)];
                [bezier15Path addCurveToPoint: CGPointMake(34.54, 20.24) controlPoint1: CGPointMake(34.56, 20.31) controlPoint2: CGPointMake(34.55, 20.27)];
                [bezier15Path addCurveToPoint: CGPointMake(34.48, 20.17) controlPoint1: CGPointMake(34.53, 20.21) controlPoint2: CGPointMake(34.51, 20.18)];
                [bezier15Path addCurveToPoint: CGPointMake(34.36, 20.13) controlPoint1: CGPointMake(34.45, 20.15) controlPoint2: CGPointMake(34.41, 20.14)];
                [bezier15Path addCurveToPoint: CGPointMake(34.17, 20.12) controlPoint1: CGPointMake(34.31, 20.12) controlPoint2: CGPointMake(34.24, 20.12)];
                [bezier15Path addCurveToPoint: CGPointMake(34, 20.13) controlPoint1: CGPointMake(34.11, 20.12) controlPoint2: CGPointMake(34.05, 20.12)];
                [bezier15Path addCurveToPoint: CGPointMake(33.87, 20.16) controlPoint1: CGPointMake(33.95, 20.14) controlPoint2: CGPointMake(33.9, 20.15)];
                [bezier15Path addCurveToPoint: CGPointMake(33.78, 20.19) controlPoint1: CGPointMake(33.83, 20.17) controlPoint2: CGPointMake(33.8, 20.18)];
                [bezier15Path addCurveToPoint: CGPointMake(33.69, 20.21) controlPoint1: CGPointMake(33.76, 20.2) controlPoint2: CGPointMake(33.72, 20.21)];
                [bezier15Path addLineToPoint: CGPointMake(33.68, 20.21)];
                [bezier15Path addCurveToPoint: CGPointMake(33.58, 20.16) controlPoint1: CGPointMake(33.64, 20.21) controlPoint2: CGPointMake(33.61, 20.19)];
                [bezier15Path addCurveToPoint: CGPointMake(33.54, 20.05) controlPoint1: CGPointMake(33.55, 20.13) controlPoint2: CGPointMake(33.54, 20.1)];
                [bezier15Path addLineToPoint: CGPointMake(33.54, 20.04)];
                [bezier15Path addCurveToPoint: CGPointMake(33.6, 19.94) controlPoint1: CGPointMake(33.54, 20) controlPoint2: CGPointMake(33.56, 19.96)];
                [bezier15Path addCurveToPoint: CGPointMake(33.75, 19.87) controlPoint1: CGPointMake(33.63, 19.91) controlPoint2: CGPointMake(33.68, 19.89)];
                [bezier15Path addCurveToPoint: CGPointMake(33.95, 19.83) controlPoint1: CGPointMake(33.81, 19.85) controlPoint2: CGPointMake(33.88, 19.84)];
                [bezier15Path addCurveToPoint: CGPointMake(34.18, 19.82) controlPoint1: CGPointMake(34.01, 19.83) controlPoint2: CGPointMake(34.1, 19.82)];
                [bezier15Path closePath];
                bezier15Path.miterLimit = 4;

                [fillColor setFill];
                [bezier15Path fill];


                //// Bezier 16 Drawing
                UIBezierPath* bezier16Path = [UIBezierPath bezierPath];
                [bezier16Path moveToPoint: CGPointMake(36.5, 21.63)];
                [bezier16Path addCurveToPoint: CGPointMake(36.37, 21.67) controlPoint1: CGPointMake(36.47, 21.66) controlPoint2: CGPointMake(36.42, 21.67)];
                [bezier16Path addCurveToPoint: CGPointMake(36.23, 21.63) controlPoint1: CGPointMake(36.31, 21.67) controlPoint2: CGPointMake(36.26, 21.66)];
                [bezier16Path addCurveToPoint: CGPointMake(36.18, 21.52) controlPoint1: CGPointMake(36.2, 21.6) controlPoint2: CGPointMake(36.18, 21.56)];
                [bezier16Path addLineToPoint: CGPointMake(36.18, 20.14)];
                [bezier16Path addLineToPoint: CGPointMake(35.32, 20.14)];
                [bezier16Path addCurveToPoint: CGPointMake(35.2, 20.1) controlPoint1: CGPointMake(35.27, 20.14) controlPoint2: CGPointMake(35.23, 20.13)];
                [bezier16Path addCurveToPoint: CGPointMake(35.15, 19.99) controlPoint1: CGPointMake(35.16, 20.08) controlPoint2: CGPointMake(35.15, 20.04)];
                [bezier16Path addCurveToPoint: CGPointMake(35.2, 19.88) controlPoint1: CGPointMake(35.15, 19.94) controlPoint2: CGPointMake(35.17, 19.91)];
                [bezier16Path addCurveToPoint: CGPointMake(35.32, 19.84) controlPoint1: CGPointMake(35.24, 19.85) controlPoint2: CGPointMake(35.28, 19.84)];
                [bezier16Path addLineToPoint: CGPointMake(36.24, 19.84)];
                [bezier16Path addCurveToPoint: CGPointMake(36.4, 19.85) controlPoint1: CGPointMake(36.3, 19.84) controlPoint2: CGPointMake(36.36, 19.84)];
                [bezier16Path addCurveToPoint: CGPointMake(36.49, 19.89) controlPoint1: CGPointMake(36.44, 19.86) controlPoint2: CGPointMake(36.47, 19.87)];
                [bezier16Path addCurveToPoint: CGPointMake(36.53, 19.97) controlPoint1: CGPointMake(36.51, 19.91) controlPoint2: CGPointMake(36.53, 19.94)];
                [bezier16Path addCurveToPoint: CGPointMake(36.54, 20.09) controlPoint1: CGPointMake(36.54, 20) controlPoint2: CGPointMake(36.54, 20.04)];
                [bezier16Path addLineToPoint: CGPointMake(36.54, 21.52)];
                [bezier16Path addCurveToPoint: CGPointMake(36.5, 21.63) controlPoint1: CGPointMake(36.55, 21.56) controlPoint2: CGPointMake(36.53, 21.6)];
                [bezier16Path closePath];
                bezier16Path.miterLimit = 4;

                [fillColor setFill];
                [bezier16Path fill];


                //// Bezier 17 Drawing
                UIBezierPath* bezier17Path = [UIBezierPath bezierPath];
                [bezier17Path moveToPoint: CGPointMake(38.39, 21.51)];
                [bezier17Path addCurveToPoint: CGPointMake(38.37, 21.58) controlPoint1: CGPointMake(38.39, 21.54) controlPoint2: CGPointMake(38.38, 21.56)];
                [bezier17Path addCurveToPoint: CGPointMake(38.33, 21.62) controlPoint1: CGPointMake(38.36, 21.6) controlPoint2: CGPointMake(38.34, 21.61)];
                [bezier17Path addCurveToPoint: CGPointMake(38.28, 21.65) controlPoint1: CGPointMake(38.32, 21.63) controlPoint2: CGPointMake(38.3, 21.64)];
                [bezier17Path addCurveToPoint: CGPointMake(38.23, 21.66) controlPoint1: CGPointMake(38.26, 21.66) controlPoint2: CGPointMake(38.25, 21.66)];
                [bezier17Path addLineToPoint: CGPointMake(37.21, 21.66)];
                [bezier17Path addCurveToPoint: CGPointMake(37.15, 21.65) controlPoint1: CGPointMake(37.19, 21.66) controlPoint2: CGPointMake(37.17, 21.66)];
                [bezier17Path addCurveToPoint: CGPointMake(37.09, 21.62) controlPoint1: CGPointMake(37.13, 21.64) controlPoint2: CGPointMake(37.11, 21.64)];
                [bezier17Path addCurveToPoint: CGPointMake(37.05, 21.58) controlPoint1: CGPointMake(37.08, 21.61) controlPoint2: CGPointMake(37.06, 21.59)];
                [bezier17Path addCurveToPoint: CGPointMake(37.04, 21.51) controlPoint1: CGPointMake(37.04, 21.56) controlPoint2: CGPointMake(37.04, 21.54)];
                [bezier17Path addCurveToPoint: CGPointMake(37.05, 21.44) controlPoint1: CGPointMake(37.04, 21.49) controlPoint2: CGPointMake(37.04, 21.46)];
                [bezier17Path addCurveToPoint: CGPointMake(37.09, 21.39) controlPoint1: CGPointMake(37.06, 21.42) controlPoint2: CGPointMake(37.07, 21.41)];
                [bezier17Path addCurveToPoint: CGPointMake(37.14, 21.36) controlPoint1: CGPointMake(37.11, 21.38) controlPoint2: CGPointMake(37.12, 21.37)];
                [bezier17Path addCurveToPoint: CGPointMake(37.19, 21.35) controlPoint1: CGPointMake(37.16, 21.35) controlPoint2: CGPointMake(37.18, 21.35)];
                [bezier17Path addLineToPoint: CGPointMake(37.52, 21.35)];
                [bezier17Path addLineToPoint: CGPointMake(37.52, 20.13)];
                [bezier17Path addCurveToPoint: CGPointMake(37.45, 20.12) controlPoint1: CGPointMake(37.5, 20.13) controlPoint2: CGPointMake(37.47, 20.12)];
                [bezier17Path addCurveToPoint: CGPointMake(37.38, 20.1) controlPoint1: CGPointMake(37.42, 20.11) controlPoint2: CGPointMake(37.4, 20.1)];
                [bezier17Path addCurveToPoint: CGPointMake(37.33, 20.06) controlPoint1: CGPointMake(37.36, 20.09) controlPoint2: CGPointMake(37.34, 20.07)];
                [bezier17Path addCurveToPoint: CGPointMake(37.31, 20) controlPoint1: CGPointMake(37.32, 20.04) controlPoint2: CGPointMake(37.31, 20.02)];
                [bezier17Path addCurveToPoint: CGPointMake(37.33, 19.91) controlPoint1: CGPointMake(37.31, 19.96) controlPoint2: CGPointMake(37.32, 19.93)];
                [bezier17Path addCurveToPoint: CGPointMake(37.41, 19.86) controlPoint1: CGPointMake(37.35, 19.89) controlPoint2: CGPointMake(37.37, 19.87)];
                [bezier17Path addCurveToPoint: CGPointMake(37.53, 19.84) controlPoint1: CGPointMake(37.44, 19.85) controlPoint2: CGPointMake(37.48, 19.84)];
                [bezier17Path addCurveToPoint: CGPointMake(37.68, 19.84) controlPoint1: CGPointMake(37.57, 19.84) controlPoint2: CGPointMake(37.62, 19.84)];
                [bezier17Path addLineToPoint: CGPointMake(37.76, 19.84)];
                [bezier17Path addCurveToPoint: CGPointMake(37.85, 19.86) controlPoint1: CGPointMake(37.8, 19.84) controlPoint2: CGPointMake(37.83, 19.85)];
                [bezier17Path addCurveToPoint: CGPointMake(37.87, 19.92) controlPoint1: CGPointMake(37.87, 19.88) controlPoint2: CGPointMake(37.87, 19.9)];
                [bezier17Path addLineToPoint: CGPointMake(37.87, 21.36)];
                [bezier17Path addLineToPoint: CGPointMake(38.2, 21.36)];
                [bezier17Path addCurveToPoint: CGPointMake(38.24, 21.38) controlPoint1: CGPointMake(38.22, 21.36) controlPoint2: CGPointMake(38.23, 21.37)];
                [bezier17Path addCurveToPoint: CGPointMake(38.26, 21.43) controlPoint1: CGPointMake(38.25, 21.39) controlPoint2: CGPointMake(38.26, 21.41)];
                [bezier17Path addCurveToPoint: CGPointMake(38.27, 21.48) controlPoint1: CGPointMake(38.27, 21.45) controlPoint2: CGPointMake(38.27, 21.46)];
                [bezier17Path addCurveToPoint: CGPointMake(38.27, 21.5) controlPoint1: CGPointMake(38.27, 21.49) controlPoint2: CGPointMake(38.27, 21.5)];
                [bezier17Path addLineToPoint: CGPointMake(38.39, 21.5)];
                [bezier17Path addLineToPoint: CGPointMake(38.39, 21.51)];
                [bezier17Path closePath];
                bezier17Path.miterLimit = 4;

                [fillColor setFill];
                [bezier17Path fill];
            }
        }


        //// Bezier 18 Drawing
        UIBezierPath* bezier18Path = [UIBezierPath bezierPath];
        [bezier18Path moveToPoint: CGPointMake(32.88, 8.22)];
        [bezier18Path addCurveToPoint: CGPointMake(32.27, 7.6) controlPoint1: CGPointMake(32.54, 8.22) controlPoint2: CGPointMake(32.27, 7.94)];
        [bezier18Path addLineToPoint: CGPointMake(32.27, 4.59)];
        [bezier18Path addCurveToPoint: CGPointMake(32.88, 3.98) controlPoint1: CGPointMake(32.27, 4.25) controlPoint2: CGPointMake(32.55, 3.98)];
        [bezier18Path addLineToPoint: CGPointMake(37.97, 3.98)];
        [bezier18Path addCurveToPoint: CGPointMake(38.58, 4.59) controlPoint1: CGPointMake(38.31, 3.98) controlPoint2: CGPointMake(38.58, 4.26)];
        [bezier18Path addLineToPoint: CGPointMake(38.58, 7.6)];
        [bezier18Path addCurveToPoint: CGPointMake(37.97, 8.22) controlPoint1: CGPointMake(38.58, 7.94) controlPoint2: CGPointMake(38.3, 8.22)];
        [bezier18Path addLineToPoint: CGPointMake(32.88, 8.22)];
        [bezier18Path closePath];
        [bezier18Path moveToPoint: CGPointMake(32.88, 4.3)];
        [bezier18Path addCurveToPoint: CGPointMake(32.58, 4.6) controlPoint1: CGPointMake(32.72, 4.3) controlPoint2: CGPointMake(32.58, 4.43)];
        [bezier18Path addLineToPoint: CGPointMake(32.58, 7.6)];
        [bezier18Path addCurveToPoint: CGPointMake(32.88, 7.9) controlPoint1: CGPointMake(32.58, 7.76) controlPoint2: CGPointMake(32.71, 7.9)];
        [bezier18Path addLineToPoint: CGPointMake(37.97, 7.9)];
        [bezier18Path addCurveToPoint: CGPointMake(38.27, 7.6) controlPoint1: CGPointMake(38.13, 7.9) controlPoint2: CGPointMake(38.27, 7.77)];
        [bezier18Path addLineToPoint: CGPointMake(38.27, 4.59)];
        [bezier18Path addCurveToPoint: CGPointMake(37.97, 4.29) controlPoint1: CGPointMake(38.27, 4.43) controlPoint2: CGPointMake(38.14, 4.29)];
        [bezier18Path addLineToPoint: CGPointMake(32.88, 4.29)];
        [bezier18Path addLineToPoint: CGPointMake(32.88, 4.3)];
        [bezier18Path closePath];
        bezier18Path.miterLimit = 4;

        [fillColor setFill];
        [bezier18Path fill];


        //// Group 5
        {
            //// Group 6
            {
                //// Group 7
                {
                    //// Group 8
                    {
                        //// Oval Drawing
                        UIBezierPath* ovalPath = [UIBezierPath bezierPathWithOvalInRect: CGRectMake(12.13, 3.02, 12.92, 12.92)];
                        [fillColor8 setFill];
                        [ovalPath fill];


                        //// Group 9
                        {
                            //// Bezier 19 Drawing
                            UIBezierPath* bezier19Path = [UIBezierPath bezierPath];
                            [bezier19Path moveToPoint: CGPointMake(13.6, 13.58)];
                            [bezier19Path addCurveToPoint: CGPointMake(13.11, 12.9) controlPoint1: CGPointMake(13.42, 13.36) controlPoint2: CGPointMake(13.26, 13.14)];
                            [bezier19Path addLineToPoint: CGPointMake(15.4, 12.9)];
                            [bezier19Path addCurveToPoint: CGPointMake(15.77, 12.22) controlPoint1: CGPointMake(15.54, 12.68) controlPoint2: CGPointMake(15.66, 12.45)];
                            [bezier19Path addLineToPoint: CGPointMake(12.74, 12.22)];
                            [bezier19Path addCurveToPoint: CGPointMake(12.47, 11.54) controlPoint1: CGPointMake(12.64, 12) controlPoint2: CGPointMake(12.54, 11.77)];
                            [bezier19Path addLineToPoint: CGPointMake(16.05, 11.54)];
                            [bezier19Path addCurveToPoint: CGPointMake(16.38, 9.49) controlPoint1: CGPointMake(16.26, 10.89) controlPoint2: CGPointMake(16.38, 10.21)];
                            [bezier19Path addCurveToPoint: CGPointMake(16.24, 8.12) controlPoint1: CGPointMake(16.38, 9.02) controlPoint2: CGPointMake(16.33, 8.56)];
                            [bezier19Path addLineToPoint: CGPointMake(12.29, 8.12)];
                            [bezier19Path addCurveToPoint: CGPointMake(12.48, 7.44) controlPoint1: CGPointMake(12.34, 7.89) controlPoint2: CGPointMake(12.4, 7.66)];
                            [bezier19Path addLineToPoint: CGPointMake(16.06, 7.44)];
                            [bezier19Path addCurveToPoint: CGPointMake(15.79, 6.76) controlPoint1: CGPointMake(15.98, 7.21) controlPoint2: CGPointMake(15.89, 6.98)];
                            [bezier19Path addLineToPoint: CGPointMake(12.76, 6.76)];
                            [bezier19Path addCurveToPoint: CGPointMake(13.13, 6.08) controlPoint1: CGPointMake(12.87, 6.52) controlPoint2: CGPointMake(13, 6.3)];
                            [bezier19Path addLineToPoint: CGPointMake(15.42, 6.08)];
                            [bezier19Path addCurveToPoint: CGPointMake(14.93, 5.4) controlPoint1: CGPointMake(15.27, 5.84) controlPoint2: CGPointMake(15.11, 5.61)];
                            [bezier19Path addLineToPoint: CGPointMake(13.63, 5.4)];
                            [bezier19Path addCurveToPoint: CGPointMake(14.28, 4.72) controlPoint1: CGPointMake(13.83, 5.16) controlPoint2: CGPointMake(14.05, 4.93)];
                            [bezier19Path addCurveToPoint: CGPointMake(9.94, 3.05) controlPoint1: CGPointMake(13.13, 3.68) controlPoint2: CGPointMake(11.61, 3.05)];
                            [bezier19Path addCurveToPoint: CGPointMake(3.48, 9.51) controlPoint1: CGPointMake(6.37, 3.05) controlPoint2: CGPointMake(3.48, 5.94)];
                            [bezier19Path addCurveToPoint: CGPointMake(9.94, 15.97) controlPoint1: CGPointMake(3.48, 13.08) controlPoint2: CGPointMake(6.37, 15.97)];
                            [bezier19Path addCurveToPoint: CGPointMake(14.28, 14.3) controlPoint1: CGPointMake(11.61, 15.97) controlPoint2: CGPointMake(13.13, 15.34)];
                            [bezier19Path addCurveToPoint: CGPointMake(14.93, 13.61) controlPoint1: CGPointMake(14.51, 14.09) controlPoint2: CGPointMake(14.73, 13.86)];
                            [bezier19Path addLineToPoint: CGPointMake(13.6, 13.61)];
                            [bezier19Path addLineToPoint: CGPointMake(13.6, 13.58)];
                            [bezier19Path closePath];
                            bezier19Path.miterLimit = 4;

                            [fillColor9 setFill];
                            [bezier19Path fill];
                        }
                    }


                    //// Group 10
                    {
                        //// Bezier 20 Drawing
                        UIBezierPath* bezier20Path = [UIBezierPath bezierPath];
                        [bezier20Path moveToPoint: CGPointMake(24.19, 13.08)];
                        [bezier20Path addCurveToPoint: CGPointMake(24.4, 12.87) controlPoint1: CGPointMake(24.19, 12.97) controlPoint2: CGPointMake(24.28, 12.87)];
                        [bezier20Path addCurveToPoint: CGPointMake(24.61, 13.08) controlPoint1: CGPointMake(24.52, 12.87) controlPoint2: CGPointMake(24.61, 12.96)];
                        [bezier20Path addCurveToPoint: CGPointMake(24.4, 13.29) controlPoint1: CGPointMake(24.61, 13.2) controlPoint2: CGPointMake(24.52, 13.29)];
                        [bezier20Path addCurveToPoint: CGPointMake(24.19, 13.08) controlPoint1: CGPointMake(24.28, 13.28) controlPoint2: CGPointMake(24.19, 13.19)];
                        [bezier20Path closePath];
                        [bezier20Path moveToPoint: CGPointMake(24.4, 13.24)];
                        [bezier20Path addCurveToPoint: CGPointMake(24.56, 13.08) controlPoint1: CGPointMake(24.49, 13.24) controlPoint2: CGPointMake(24.56, 13.17)];
                        [bezier20Path addCurveToPoint: CGPointMake(24.4, 12.92) controlPoint1: CGPointMake(24.56, 12.99) controlPoint2: CGPointMake(24.49, 12.92)];
                        [bezier20Path addCurveToPoint: CGPointMake(24.24, 13.08) controlPoint1: CGPointMake(24.31, 12.92) controlPoint2: CGPointMake(24.24, 12.99)];
                        [bezier20Path addCurveToPoint: CGPointMake(24.4, 13.24) controlPoint1: CGPointMake(24.24, 13.16) controlPoint2: CGPointMake(24.31, 13.24)];
                        [bezier20Path closePath];
                        [bezier20Path moveToPoint: CGPointMake(24.37, 13.17)];
                        [bezier20Path addLineToPoint: CGPointMake(24.33, 13.17)];
                        [bezier20Path addLineToPoint: CGPointMake(24.33, 12.99)];
                        [bezier20Path addLineToPoint: CGPointMake(24.41, 12.99)];
                        [bezier20Path addCurveToPoint: CGPointMake(24.46, 13) controlPoint1: CGPointMake(24.43, 12.99) controlPoint2: CGPointMake(24.44, 12.99)];
                        [bezier20Path addCurveToPoint: CGPointMake(24.48, 13.05) controlPoint1: CGPointMake(24.48, 13.01) controlPoint2: CGPointMake(24.48, 13.03)];
                        [bezier20Path addCurveToPoint: CGPointMake(24.45, 13.1) controlPoint1: CGPointMake(24.48, 13.07) controlPoint2: CGPointMake(24.47, 13.09)];
                        [bezier20Path addLineToPoint: CGPointMake(24.48, 13.18)];
                        [bezier20Path addLineToPoint: CGPointMake(24.43, 13.18)];
                        [bezier20Path addLineToPoint: CGPointMake(24.4, 13.1)];
                        [bezier20Path addLineToPoint: CGPointMake(24.37, 13.1)];
                        [bezier20Path addLineToPoint: CGPointMake(24.37, 13.17)];
                        [bezier20Path closePath];
                        [bezier20Path moveToPoint: CGPointMake(24.37, 13.06)];
                        [bezier20Path addLineToPoint: CGPointMake(24.39, 13.06)];
                        [bezier20Path addCurveToPoint: CGPointMake(24.42, 13.06) controlPoint1: CGPointMake(24.39, 13.06) controlPoint2: CGPointMake(24.41, 13.06)];
                        [bezier20Path addCurveToPoint: CGPointMake(24.43, 13.04) controlPoint1: CGPointMake(24.43, 13.06) controlPoint2: CGPointMake(24.43, 13.05)];
                        [bezier20Path addCurveToPoint: CGPointMake(24.42, 13.02) controlPoint1: CGPointMake(24.43, 13.03) controlPoint2: CGPointMake(24.43, 13.02)];
                        [bezier20Path addCurveToPoint: CGPointMake(24.4, 13.02) controlPoint1: CGPointMake(24.41, 13.02) controlPoint2: CGPointMake(24.4, 13.02)];
                        [bezier20Path addLineToPoint: CGPointMake(24.37, 13.02)];
                        [bezier20Path addLineToPoint: CGPointMake(24.37, 13.06)];
                        [bezier20Path closePath];
                        bezier20Path.miterLimit = 4;

                        [fillColor10 setFill];
                        [bezier20Path fill];
                    }
                }


                //// Group 11
                {
                    //// Group 12
                    {
                        //// Bezier 21 Drawing
                        UIBezierPath* bezier21Path = [UIBezierPath bezierPath];
                        [bezier21Path moveToPoint: CGPointMake(14.16, 11.22)];
                        [bezier21Path addCurveToPoint: CGPointMake(13.33, 11.33) controlPoint1: CGPointMake(13.89, 11.29) controlPoint2: CGPointMake(13.62, 11.33)];
                        [bezier21Path addCurveToPoint: CGPointMake(11.96, 10.14) controlPoint1: CGPointMake(12.43, 11.33) controlPoint2: CGPointMake(11.96, 10.92)];
                        [bezier21Path addCurveToPoint: CGPointMake(13.37, 8.55) controlPoint1: CGPointMake(11.96, 9.22) controlPoint2: CGPointMake(12.56, 8.55)];
                        [bezier21Path addCurveToPoint: CGPointMake(14.46, 9.52) controlPoint1: CGPointMake(14.03, 8.55) controlPoint2: CGPointMake(14.46, 8.93)];
                        [bezier21Path addCurveToPoint: CGPointMake(14.36, 10.18) controlPoint1: CGPointMake(14.46, 9.72) controlPoint2: CGPointMake(14.43, 9.91)];
                        [bezier21Path addLineToPoint: CGPointMake(12.76, 10.18)];
                        [bezier21Path addCurveToPoint: CGPointMake(13.46, 10.73) controlPoint1: CGPointMake(12.7, 10.56) controlPoint2: CGPointMake(12.98, 10.73)];
                        [bezier21Path addCurveToPoint: CGPointMake(14.29, 10.56) controlPoint1: CGPointMake(13.75, 10.73) controlPoint2: CGPointMake(14, 10.68)];
                        [bezier21Path addLineToPoint: CGPointMake(14.16, 11.22)];
                        [bezier21Path closePath];
                        [bezier21Path moveToPoint: CGPointMake(13.73, 9.63)];
                        [bezier21Path addCurveToPoint: CGPointMake(13.36, 9.15) controlPoint1: CGPointMake(13.73, 9.57) controlPoint2: CGPointMake(13.82, 9.16)];
                        [bezier21Path addCurveToPoint: CGPointMake(12.85, 9.63) controlPoint1: CGPointMake(13.1, 9.15) controlPoint2: CGPointMake(12.92, 9.32)];
                        [bezier21Path addLineToPoint: CGPointMake(13.73, 9.63)];
                        [bezier21Path closePath];
                        bezier21Path.miterLimit = 4;

                        [fillColor10 setFill];
                        [bezier21Path fill];


                        //// Bezier 22 Drawing
                        UIBezierPath* bezier22Path = [UIBezierPath bezierPath];
                        [bezier22Path moveToPoint: CGPointMake(14.71, 9.45)];
                        [bezier22Path addCurveToPoint: CGPointMake(15.33, 10.2) controlPoint1: CGPointMake(14.71, 9.79) controlPoint2: CGPointMake(14.9, 10.02)];
                        [bezier22Path addCurveToPoint: CGPointMake(15.71, 10.5) controlPoint1: CGPointMake(15.66, 10.34) controlPoint2: CGPointMake(15.71, 10.37)];
                        [bezier22Path addCurveToPoint: CGPointMake(15.24, 10.74) controlPoint1: CGPointMake(15.71, 10.67) controlPoint2: CGPointMake(15.56, 10.75)];
                        [bezier22Path addCurveToPoint: CGPointMake(14.51, 10.64) controlPoint1: CGPointMake(15, 10.74) controlPoint2: CGPointMake(14.77, 10.71)];
                        [bezier22Path addLineToPoint: CGPointMake(14.39, 11.26)];
                        [bezier22Path addCurveToPoint: CGPointMake(15.24, 11.34) controlPoint1: CGPointMake(14.62, 11.31) controlPoint2: CGPointMake(14.95, 11.33)];
                        [bezier22Path addCurveToPoint: CGPointMake(16.5, 10.45) controlPoint1: CGPointMake(16.1, 11.34) controlPoint2: CGPointMake(16.5, 11.06)];
                        [bezier22Path addCurveToPoint: CGPointMake(15.92, 9.7) controlPoint1: CGPointMake(16.5, 10.08) controlPoint2: CGPointMake(16.33, 9.87)];
                        [bezier22Path addCurveToPoint: CGPointMake(15.54, 9.41) controlPoint1: CGPointMake(15.58, 9.56) controlPoint2: CGPointMake(15.54, 9.53)];
                        [bezier22Path addCurveToPoint: CGPointMake(15.94, 9.19) controlPoint1: CGPointMake(15.54, 9.26) controlPoint2: CGPointMake(15.67, 9.19)];
                        [bezier22Path addCurveToPoint: CGPointMake(16.53, 9.23) controlPoint1: CGPointMake(16.1, 9.19) controlPoint2: CGPointMake(16.32, 9.21)];
                        [bezier22Path addLineToPoint: CGPointMake(16.65, 8.61)];
                        [bezier22Path addCurveToPoint: CGPointMake(15.93, 8.56) controlPoint1: CGPointMake(16.44, 8.58) controlPoint2: CGPointMake(16.11, 8.56)];
                        [bezier22Path addCurveToPoint: CGPointMake(14.71, 9.45) controlPoint1: CGPointMake(15.02, 8.55) controlPoint2: CGPointMake(14.7, 8.96)];
                        [bezier22Path closePath];
                        bezier22Path.miterLimit = 4;

                        [fillColor10 setFill];
                        [bezier22Path fill];


                        //// Bezier 23 Drawing
                        UIBezierPath* bezier23Path = [UIBezierPath bezierPath];
                        [bezier23Path moveToPoint: CGPointMake(11.53, 11.29)];
                        [bezier23Path addLineToPoint: CGPointMake(10.86, 11.29)];
                        [bezier23Path addLineToPoint: CGPointMake(10.87, 11)];
                        [bezier23Path addCurveToPoint: CGPointMake(10.02, 11.33) controlPoint1: CGPointMake(10.67, 11.22) controlPoint2: CGPointMake(10.39, 11.33)];
                        [bezier23Path addCurveToPoint: CGPointMake(9.28, 10.6) controlPoint1: CGPointMake(9.58, 11.33) controlPoint2: CGPointMake(9.28, 11.03)];
                        [bezier23Path addCurveToPoint: CGPointMake(10.7, 9.57) controlPoint1: CGPointMake(9.28, 9.95) controlPoint2: CGPointMake(9.8, 9.57)];
                        [bezier23Path addCurveToPoint: CGPointMake(11.03, 9.59) controlPoint1: CGPointMake(10.79, 9.57) controlPoint2: CGPointMake(10.91, 9.58)];
                        [bezier23Path addCurveToPoint: CGPointMake(11.06, 9.42) controlPoint1: CGPointMake(11.05, 9.5) controlPoint2: CGPointMake(11.06, 9.46)];
                        [bezier23Path addCurveToPoint: CGPointMake(10.54, 9.17) controlPoint1: CGPointMake(11.06, 9.24) controlPoint2: CGPointMake(10.92, 9.17)];
                        [bezier23Path addCurveToPoint: CGPointMake(9.68, 9.29) controlPoint1: CGPointMake(10.17, 9.17) controlPoint2: CGPointMake(9.92, 9.23)];
                        [bezier23Path addLineToPoint: CGPointMake(9.79, 8.69)];
                        [bezier23Path addCurveToPoint: CGPointMake(10.75, 8.55) controlPoint1: CGPointMake(10.19, 8.59) controlPoint2: CGPointMake(10.46, 8.55)];
                        [bezier23Path addCurveToPoint: CGPointMake(11.81, 9.33) controlPoint1: CGPointMake(11.45, 8.55) controlPoint2: CGPointMake(11.81, 8.82)];
                        [bezier23Path addCurveToPoint: CGPointMake(11.74, 9.86) controlPoint1: CGPointMake(11.82, 9.47) controlPoint2: CGPointMake(11.77, 9.74)];
                        [bezier23Path addCurveToPoint: CGPointMake(11.53, 11.29) controlPoint1: CGPointMake(11.74, 10.03) controlPoint2: CGPointMake(11.55, 11.05)];
                        [bezier23Path closePath];
                        [bezier23Path moveToPoint: CGPointMake(10.94, 10.09)];
                        [bezier23Path addCurveToPoint: CGPointMake(10.76, 10.08) controlPoint1: CGPointMake(10.86, 10.08) controlPoint2: CGPointMake(10.82, 10.08)];
                        [bezier23Path addCurveToPoint: CGPointMake(10.07, 10.49) controlPoint1: CGPointMake(10.3, 10.08) controlPoint2: CGPointMake(10.07, 10.22)];
                        [bezier23Path addCurveToPoint: CGPointMake(10.36, 10.76) controlPoint1: CGPointMake(10.07, 10.66) controlPoint2: CGPointMake(10.18, 10.76)];
                        [bezier23Path addCurveToPoint: CGPointMake(10.94, 10.09) controlPoint1: CGPointMake(10.69, 10.76) controlPoint2: CGPointMake(10.93, 10.49)];
                        [bezier23Path closePath];
                        bezier23Path.miterLimit = 4;

                        [fillColor10 setFill];
                        [bezier23Path fill];


                        //// Bezier 24 Drawing
                        UIBezierPath* bezier24Path = [UIBezierPath bezierPath];
                        [bezier24Path moveToPoint: CGPointMake(17.93, 11.24)];
                        [bezier24Path addCurveToPoint: CGPointMake(17.35, 11.33) controlPoint1: CGPointMake(17.71, 11.3) controlPoint2: CGPointMake(17.54, 11.33)];
                        [bezier24Path addCurveToPoint: CGPointMake(16.71, 10.75) controlPoint1: CGPointMake(16.94, 11.33) controlPoint2: CGPointMake(16.71, 11.12)];
                        [bezier24Path addCurveToPoint: CGPointMake(16.82, 10.04) controlPoint1: CGPointMake(16.7, 10.65) controlPoint2: CGPointMake(16.8, 10.17)];
                        [bezier24Path addCurveToPoint: CGPointMake(17.2, 7.97) controlPoint1: CGPointMake(16.84, 9.91) controlPoint2: CGPointMake(17.2, 7.97)];
                        [bezier24Path addLineToPoint: CGPointMake(18, 7.97)];
                        [bezier24Path addLineToPoint: CGPointMake(17.88, 8.61)];
                        [bezier24Path addLineToPoint: CGPointMake(18.29, 8.61)];
                        [bezier24Path addLineToPoint: CGPointMake(18.18, 9.26)];
                        [bezier24Path addLineToPoint: CGPointMake(17.77, 9.26)];
                        [bezier24Path addCurveToPoint: CGPointMake(17.54, 10.48) controlPoint1: CGPointMake(17.77, 9.26) controlPoint2: CGPointMake(17.54, 10.39)];
                        [bezier24Path addCurveToPoint: CGPointMake(17.81, 10.68) controlPoint1: CGPointMake(17.54, 10.62) controlPoint2: CGPointMake(17.62, 10.68)];
                        [bezier24Path addCurveToPoint: CGPointMake(18.03, 10.66) controlPoint1: CGPointMake(17.9, 10.68) controlPoint2: CGPointMake(17.97, 10.67)];
                        [bezier24Path addLineToPoint: CGPointMake(17.93, 11.24)];
                        [bezier24Path closePath];
                        bezier24Path.miterLimit = 4;

                        [fillColor10 setFill];
                        [bezier24Path fill];


                        //// Bezier 25 Drawing
                        UIBezierPath* bezier25Path = [UIBezierPath bezierPath];
                        [bezier25Path moveToPoint: CGPointMake(21.5, 8.55)];
                        [bezier25Path addCurveToPoint: CGPointMake(20.19, 9.19) controlPoint1: CGPointMake(20.91, 8.55) controlPoint2: CGPointMake(20.46, 8.79)];
                        [bezier25Path addLineToPoint: CGPointMake(20.42, 8.59)];
                        [bezier25Path addCurveToPoint: CGPointMake(19.47, 8.97) controlPoint1: CGPointMake(20, 8.43) controlPoint2: CGPointMake(19.72, 8.66)];
                        [bezier25Path addCurveToPoint: CGPointMake(19.39, 9.07) controlPoint1: CGPointMake(19.47, 8.97) controlPoint2: CGPointMake(19.43, 9.02)];
                        [bezier25Path addLineToPoint: CGPointMake(19.39, 8.61)];
                        [bezier25Path addLineToPoint: CGPointMake(18.64, 8.61)];
                        [bezier25Path addCurveToPoint: CGPointMake(18.22, 11.11) controlPoint1: CGPointMake(18.54, 9.44) controlPoint2: CGPointMake(18.36, 10.28)];
                        [bezier25Path addLineToPoint: CGPointMake(18.19, 11.29)];
                        [bezier25Path addLineToPoint: CGPointMake(19, 11.29)];
                        [bezier25Path addCurveToPoint: CGPointMake(19.2, 10.25) controlPoint1: CGPointMake(19.08, 10.87) controlPoint2: CGPointMake(19.14, 10.53)];
                        [bezier25Path addCurveToPoint: CGPointMake(20.09, 9.37) controlPoint1: CGPointMake(19.37, 9.5) controlPoint2: CGPointMake(19.66, 9.27)];
                        [bezier25Path addCurveToPoint: CGPointMake(19.94, 10.11) controlPoint1: CGPointMake(19.99, 9.59) controlPoint2: CGPointMake(19.94, 9.83)];
                        [bezier25Path addCurveToPoint: CGPointMake(21.21, 11.33) controlPoint1: CGPointMake(19.94, 10.78) controlPoint2: CGPointMake(20.3, 11.33)];
                        [bezier25Path addCurveToPoint: CGPointMake(22.78, 9.74) controlPoint1: CGPointMake(22.12, 11.33) controlPoint2: CGPointMake(22.78, 10.84)];
                        [bezier25Path addCurveToPoint: CGPointMake(21.5, 8.55) controlPoint1: CGPointMake(22.77, 9.07) controlPoint2: CGPointMake(22.33, 8.55)];
                        [bezier25Path closePath];
                        [bezier25Path moveToPoint: CGPointMake(21.26, 10.68)];
                        [bezier25Path addCurveToPoint: CGPointMake(20.8, 10.09) controlPoint1: CGPointMake(20.97, 10.68) controlPoint2: CGPointMake(20.8, 10.45)];
                        [bezier25Path addCurveToPoint: CGPointMake(21.46, 9.19) controlPoint1: CGPointMake(20.8, 9.67) controlPoint2: CGPointMake(21.05, 9.19)];
                        [bezier25Path addCurveToPoint: CGPointMake(21.9, 9.73) controlPoint1: CGPointMake(21.79, 9.19) controlPoint2: CGPointMake(21.9, 9.45)];
                        [bezier25Path addCurveToPoint: CGPointMake(21.26, 10.68) controlPoint1: CGPointMake(21.9, 10.32) controlPoint2: CGPointMake(21.65, 10.68)];
                        [bezier25Path closePath];
                        bezier25Path.miterLimit = 4;

                        [fillColor10 setFill];
                        [bezier25Path fill];


                        //// Bezier 26 Drawing
                        UIBezierPath* bezier26Path = [UIBezierPath bezierPath];
                        [bezier26Path moveToPoint: CGPointMake(8.91, 11.29)];
                        [bezier26Path addLineToPoint: CGPointMake(8.11, 11.29)];
                        [bezier26Path addLineToPoint: CGPointMake(8.59, 8.77)];
                        [bezier26Path addLineToPoint: CGPointMake(7.49, 11.29)];
                        [bezier26Path addLineToPoint: CGPointMake(6.75, 11.29)];
                        [bezier26Path addLineToPoint: CGPointMake(6.62, 8.78)];
                        [bezier26Path addLineToPoint: CGPointMake(6.14, 11.29)];
                        [bezier26Path addLineToPoint: CGPointMake(5.41, 11.29)];
                        [bezier26Path addLineToPoint: CGPointMake(6.03, 8.01)];
                        [bezier26Path addLineToPoint: CGPointMake(7.29, 8.01)];
                        [bezier26Path addLineToPoint: CGPointMake(7.39, 9.84)];
                        [bezier26Path addLineToPoint: CGPointMake(8.19, 8.01)];
                        [bezier26Path addLineToPoint: CGPointMake(9.55, 8.01)];
                        [bezier26Path addLineToPoint: CGPointMake(8.91, 11.29)];
                        [bezier26Path closePath];
                        bezier26Path.miterLimit = 4;

                        [fillColor10 setFill];
                        [bezier26Path fill];
                    }


                    //// Group 13
                    {
                        //// Bezier 27 Drawing
                        UIBezierPath* bezier27Path = [UIBezierPath bezierPath];
                        [bezier27Path moveToPoint: CGPointMake(22.83, 10.88)];
                        [bezier27Path addCurveToPoint: CGPointMake(23.04, 10.67) controlPoint1: CGPointMake(22.83, 10.76) controlPoint2: CGPointMake(22.92, 10.67)];
                        [bezier27Path addCurveToPoint: CGPointMake(23.25, 10.88) controlPoint1: CGPointMake(23.15, 10.67) controlPoint2: CGPointMake(23.25, 10.76)];
                        [bezier27Path addCurveToPoint: CGPointMake(23.04, 11.09) controlPoint1: CGPointMake(23.25, 11) controlPoint2: CGPointMake(23.16, 11.09)];
                        [bezier27Path addCurveToPoint: CGPointMake(22.83, 10.88) controlPoint1: CGPointMake(22.92, 11.08) controlPoint2: CGPointMake(22.83, 10.99)];
                        [bezier27Path closePath];
                        [bezier27Path moveToPoint: CGPointMake(23.03, 11.03)];
                        [bezier27Path addCurveToPoint: CGPointMake(23.19, 10.87) controlPoint1: CGPointMake(23.12, 11.03) controlPoint2: CGPointMake(23.19, 10.96)];
                        [bezier27Path addCurveToPoint: CGPointMake(23.03, 10.71) controlPoint1: CGPointMake(23.19, 10.78) controlPoint2: CGPointMake(23.12, 10.71)];
                        [bezier27Path addCurveToPoint: CGPointMake(22.87, 10.87) controlPoint1: CGPointMake(22.94, 10.71) controlPoint2: CGPointMake(22.87, 10.78)];
                        [bezier27Path addCurveToPoint: CGPointMake(23.03, 11.03) controlPoint1: CGPointMake(22.88, 10.96) controlPoint2: CGPointMake(22.95, 11.03)];
                        [bezier27Path closePath];
                        [bezier27Path moveToPoint: CGPointMake(23.01, 10.97)];
                        [bezier27Path addLineToPoint: CGPointMake(22.97, 10.97)];
                        [bezier27Path addLineToPoint: CGPointMake(22.97, 10.79)];
                        [bezier27Path addLineToPoint: CGPointMake(23.05, 10.79)];
                        [bezier27Path addCurveToPoint: CGPointMake(23.1, 10.8) controlPoint1: CGPointMake(23.07, 10.79) controlPoint2: CGPointMake(23.08, 10.79)];
                        [bezier27Path addCurveToPoint: CGPointMake(23.12, 10.85) controlPoint1: CGPointMake(23.12, 10.81) controlPoint2: CGPointMake(23.12, 10.83)];
                        [bezier27Path addCurveToPoint: CGPointMake(23.09, 10.9) controlPoint1: CGPointMake(23.12, 10.87) controlPoint2: CGPointMake(23.11, 10.89)];
                        [bezier27Path addLineToPoint: CGPointMake(23.12, 10.98)];
                        [bezier27Path addLineToPoint: CGPointMake(23.07, 10.98)];
                        [bezier27Path addLineToPoint: CGPointMake(23.04, 10.91)];
                        [bezier27Path addLineToPoint: CGPointMake(23.01, 10.91)];
                        [bezier27Path addLineToPoint: CGPointMake(23.01, 10.97)];
                        [bezier27Path closePath];
                        [bezier27Path moveToPoint: CGPointMake(23.01, 10.86)];
                        [bezier27Path addLineToPoint: CGPointMake(23.03, 10.86)];
                        [bezier27Path addCurveToPoint: CGPointMake(23.06, 10.86) controlPoint1: CGPointMake(23.04, 10.86) controlPoint2: CGPointMake(23.05, 10.86)];
                        [bezier27Path addCurveToPoint: CGPointMake(23.07, 10.84) controlPoint1: CGPointMake(23.07, 10.86) controlPoint2: CGPointMake(23.07, 10.85)];
                        [bezier27Path addCurveToPoint: CGPointMake(23.06, 10.82) controlPoint1: CGPointMake(23.07, 10.83) controlPoint2: CGPointMake(23.06, 10.83)];
                        [bezier27Path addCurveToPoint: CGPointMake(23.03, 10.82) controlPoint1: CGPointMake(23.05, 10.82) controlPoint2: CGPointMake(23.04, 10.82)];
                        [bezier27Path addLineToPoint: CGPointMake(23.01, 10.82)];
                        [bezier27Path addLineToPoint: CGPointMake(23.01, 10.86)];
                        [bezier27Path closePath];
                        bezier27Path.miterLimit = 4;

                        [fillColor4 setFill];
                        [bezier27Path fill];


                        //// Bezier 28 Drawing
                        UIBezierPath* bezier28Path = [UIBezierPath bezierPath];
                        [bezier28Path moveToPoint: CGPointMake(14.37, 11.02)];
                        [bezier28Path addCurveToPoint: CGPointMake(13.55, 11.13) controlPoint1: CGPointMake(14.09, 11.09) controlPoint2: CGPointMake(13.83, 11.13)];
                        [bezier28Path addCurveToPoint: CGPointMake(12.18, 9.94) controlPoint1: CGPointMake(12.65, 11.13) controlPoint2: CGPointMake(12.18, 10.72)];
                        [bezier28Path addCurveToPoint: CGPointMake(13.59, 8.35) controlPoint1: CGPointMake(12.18, 9.02) controlPoint2: CGPointMake(12.78, 8.35)];
                        [bezier28Path addCurveToPoint: CGPointMake(14.68, 9.32) controlPoint1: CGPointMake(14.25, 8.35) controlPoint2: CGPointMake(14.68, 8.73)];
                        [bezier28Path addCurveToPoint: CGPointMake(14.58, 9.98) controlPoint1: CGPointMake(14.68, 9.52) controlPoint2: CGPointMake(14.65, 9.71)];
                        [bezier28Path addLineToPoint: CGPointMake(12.98, 9.98)];
                        [bezier28Path addCurveToPoint: CGPointMake(13.68, 10.53) controlPoint1: CGPointMake(12.92, 10.36) controlPoint2: CGPointMake(13.2, 10.53)];
                        [bezier28Path addCurveToPoint: CGPointMake(14.51, 10.36) controlPoint1: CGPointMake(13.97, 10.53) controlPoint2: CGPointMake(14.22, 10.48)];
                        [bezier28Path addLineToPoint: CGPointMake(14.37, 11.02)];
                        [bezier28Path closePath];
                        [bezier28Path moveToPoint: CGPointMake(13.94, 9.43)];
                        [bezier28Path addCurveToPoint: CGPointMake(13.56, 8.95) controlPoint1: CGPointMake(13.94, 9.37) controlPoint2: CGPointMake(14.03, 8.96)];
                        [bezier28Path addCurveToPoint: CGPointMake(13.05, 9.43) controlPoint1: CGPointMake(13.31, 8.95) controlPoint2: CGPointMake(13.12, 9.12)];
                        [bezier28Path addLineToPoint: CGPointMake(13.94, 9.43)];
                        [bezier28Path closePath];
                        bezier28Path.miterLimit = 4;

                        [fillColor4 setFill];
                        [bezier28Path fill];


                        //// Bezier 29 Drawing
                        UIBezierPath* bezier29Path = [UIBezierPath bezierPath];
                        [bezier29Path moveToPoint: CGPointMake(14.91, 9.25)];
                        [bezier29Path addCurveToPoint: CGPointMake(15.53, 10) controlPoint1: CGPointMake(14.91, 9.59) controlPoint2: CGPointMake(15.1, 9.82)];
                        [bezier29Path addCurveToPoint: CGPointMake(15.91, 10.3) controlPoint1: CGPointMake(15.86, 10.14) controlPoint2: CGPointMake(15.91, 10.17)];
                        [bezier29Path addCurveToPoint: CGPointMake(15.44, 10.54) controlPoint1: CGPointMake(15.91, 10.47) controlPoint2: CGPointMake(15.76, 10.54)];
                        [bezier29Path addCurveToPoint: CGPointMake(14.71, 10.44) controlPoint1: CGPointMake(15.2, 10.54) controlPoint2: CGPointMake(14.97, 10.51)];
                        [bezier29Path addLineToPoint: CGPointMake(14.59, 11.06)];
                        [bezier29Path addCurveToPoint: CGPointMake(15.44, 11.14) controlPoint1: CGPointMake(14.82, 11.11) controlPoint2: CGPointMake(15.15, 11.13)];
                        [bezier29Path addCurveToPoint: CGPointMake(16.7, 10.25) controlPoint1: CGPointMake(16.3, 11.14) controlPoint2: CGPointMake(16.7, 10.86)];
                        [bezier29Path addCurveToPoint: CGPointMake(16.12, 9.5) controlPoint1: CGPointMake(16.7, 9.88) controlPoint2: CGPointMake(16.53, 9.66)];
                        [bezier29Path addCurveToPoint: CGPointMake(15.74, 9.21) controlPoint1: CGPointMake(15.78, 9.36) controlPoint2: CGPointMake(15.74, 9.33)];
                        [bezier29Path addCurveToPoint: CGPointMake(16.14, 8.99) controlPoint1: CGPointMake(15.74, 9.06) controlPoint2: CGPointMake(15.88, 8.99)];
                        [bezier29Path addCurveToPoint: CGPointMake(16.73, 9.03) controlPoint1: CGPointMake(16.3, 8.99) controlPoint2: CGPointMake(16.52, 9)];
                        [bezier29Path addLineToPoint: CGPointMake(16.85, 8.41)];
                        [bezier29Path addCurveToPoint: CGPointMake(16.13, 8.36) controlPoint1: CGPointMake(16.64, 8.38) controlPoint2: CGPointMake(16.31, 8.36)];
                        [bezier29Path addCurveToPoint: CGPointMake(14.91, 9.25) controlPoint1: CGPointMake(15.22, 8.34) controlPoint2: CGPointMake(14.91, 8.76)];
                        [bezier29Path closePath];
                        bezier29Path.miterLimit = 4;

                        [fillColor4 setFill];
                        [bezier29Path fill];


                        //// Bezier 30 Drawing
                        UIBezierPath* bezier30Path = [UIBezierPath bezierPath];
                        [bezier30Path moveToPoint: CGPointMake(11.73, 11.08)];
                        [bezier30Path addLineToPoint: CGPointMake(11.06, 11.08)];
                        [bezier30Path addLineToPoint: CGPointMake(11.08, 10.8)];
                        [bezier30Path addCurveToPoint: CGPointMake(10.23, 11.13) controlPoint1: CGPointMake(10.88, 11.02) controlPoint2: CGPointMake(10.6, 11.13)];
                        [bezier30Path addCurveToPoint: CGPointMake(9.49, 10.4) controlPoint1: CGPointMake(9.79, 11.13) controlPoint2: CGPointMake(9.49, 10.83)];
                        [bezier30Path addCurveToPoint: CGPointMake(10.91, 9.37) controlPoint1: CGPointMake(9.49, 9.75) controlPoint2: CGPointMake(10.01, 9.37)];
                        [bezier30Path addCurveToPoint: CGPointMake(11.24, 9.39) controlPoint1: CGPointMake(11, 9.37) controlPoint2: CGPointMake(11.12, 9.38)];
                        [bezier30Path addCurveToPoint: CGPointMake(11.27, 9.22) controlPoint1: CGPointMake(11.27, 9.3) controlPoint2: CGPointMake(11.27, 9.27)];
                        [bezier30Path addCurveToPoint: CGPointMake(10.75, 8.97) controlPoint1: CGPointMake(11.27, 9.04) controlPoint2: CGPointMake(11.13, 8.97)];
                        [bezier30Path addCurveToPoint: CGPointMake(9.89, 9.09) controlPoint1: CGPointMake(10.38, 8.97) controlPoint2: CGPointMake(10.13, 9.03)];
                        [bezier30Path addLineToPoint: CGPointMake(10, 8.49)];
                        [bezier30Path addCurveToPoint: CGPointMake(10.97, 8.35) controlPoint1: CGPointMake(10.4, 8.39) controlPoint2: CGPointMake(10.67, 8.35)];
                        [bezier30Path addCurveToPoint: CGPointMake(12.03, 9.13) controlPoint1: CGPointMake(11.66, 8.35) controlPoint2: CGPointMake(12.03, 8.62)];
                        [bezier30Path addCurveToPoint: CGPointMake(11.97, 9.66) controlPoint1: CGPointMake(12.04, 9.27) controlPoint2: CGPointMake(11.99, 9.54)];
                        [bezier30Path addCurveToPoint: CGPointMake(11.73, 11.08) controlPoint1: CGPointMake(11.94, 9.83) controlPoint2: CGPointMake(11.75, 10.85)];
                        [bezier30Path closePath];
                        [bezier30Path moveToPoint: CGPointMake(11.14, 9.89)];
                        [bezier30Path addCurveToPoint: CGPointMake(10.96, 9.88) controlPoint1: CGPointMake(11.05, 9.88) controlPoint2: CGPointMake(11.02, 9.88)];
                        [bezier30Path addCurveToPoint: CGPointMake(10.27, 10.29) controlPoint1: CGPointMake(10.5, 9.88) controlPoint2: CGPointMake(10.27, 10.02)];
                        [bezier30Path addCurveToPoint: CGPointMake(10.56, 10.56) controlPoint1: CGPointMake(10.27, 10.46) controlPoint2: CGPointMake(10.38, 10.56)];
                        [bezier30Path addCurveToPoint: CGPointMake(11.14, 9.89) controlPoint1: CGPointMake(10.89, 10.56) controlPoint2: CGPointMake(11.13, 10.28)];
                        [bezier30Path closePath];
                        bezier30Path.miterLimit = 4;

                        [fillColor4 setFill];
                        [bezier30Path fill];


                        //// Bezier 31 Drawing
                        UIBezierPath* bezier31Path = [UIBezierPath bezierPath];
                        [bezier31Path moveToPoint: CGPointMake(18.13, 11.04)];
                        [bezier31Path addCurveToPoint: CGPointMake(17.55, 11.13) controlPoint1: CGPointMake(17.91, 11.1) controlPoint2: CGPointMake(17.74, 11.13)];
                        [bezier31Path addCurveToPoint: CGPointMake(16.91, 10.55) controlPoint1: CGPointMake(17.14, 11.13) controlPoint2: CGPointMake(16.91, 10.92)];
                        [bezier31Path addCurveToPoint: CGPointMake(17.02, 9.84) controlPoint1: CGPointMake(16.9, 10.45) controlPoint2: CGPointMake(17, 9.97)];
                        [bezier31Path addCurveToPoint: CGPointMake(17.4, 7.77) controlPoint1: CGPointMake(17.04, 9.71) controlPoint2: CGPointMake(17.4, 7.77)];
                        [bezier31Path addLineToPoint: CGPointMake(18.2, 7.77)];
                        [bezier31Path addLineToPoint: CGPointMake(18.08, 8.4)];
                        [bezier31Path addLineToPoint: CGPointMake(18.49, 8.4)];
                        [bezier31Path addLineToPoint: CGPointMake(18.38, 9.05)];
                        [bezier31Path addLineToPoint: CGPointMake(17.97, 9.05)];
                        [bezier31Path addCurveToPoint: CGPointMake(17.74, 10.27) controlPoint1: CGPointMake(17.97, 9.05) controlPoint2: CGPointMake(17.74, 10.18)];
                        [bezier31Path addCurveToPoint: CGPointMake(18.01, 10.47) controlPoint1: CGPointMake(17.74, 10.41) controlPoint2: CGPointMake(17.82, 10.47)];
                        [bezier31Path addCurveToPoint: CGPointMake(18.23, 10.44) controlPoint1: CGPointMake(18.1, 10.47) controlPoint2: CGPointMake(18.17, 10.46)];
                        [bezier31Path addLineToPoint: CGPointMake(18.13, 11.04)];
                        [bezier31Path closePath];
                        bezier31Path.miterLimit = 4;

                        [fillColor4 setFill];
                        [bezier31Path fill];


                        //// Bezier 32 Drawing
                        UIBezierPath* bezier32Path = [UIBezierPath bezierPath];
                        [bezier32Path moveToPoint: CGPointMake(22.1, 9.52)];
                        [bezier32Path addCurveToPoint: CGPointMake(21.46, 10.48) controlPoint1: CGPointMake(22.1, 10.12) controlPoint2: CGPointMake(21.85, 10.48)];
                        [bezier32Path addCurveToPoint: CGPointMake(21, 9.89) controlPoint1: CGPointMake(21.17, 10.48) controlPoint2: CGPointMake(21, 10.25)];
                        [bezier32Path addCurveToPoint: CGPointMake(21.66, 8.99) controlPoint1: CGPointMake(21, 9.47) controlPoint2: CGPointMake(21.25, 8.99)];
                        [bezier32Path addCurveToPoint: CGPointMake(22.1, 9.52) controlPoint1: CGPointMake(21.99, 8.98) controlPoint2: CGPointMake(22.1, 9.24)];
                        [bezier32Path closePath];
                        [bezier32Path moveToPoint: CGPointMake(22.97, 9.53)];
                        [bezier32Path addCurveToPoint: CGPointMake(21.7, 8.34) controlPoint1: CGPointMake(22.97, 8.86) controlPoint2: CGPointMake(22.53, 8.34)];
                        [bezier32Path addCurveToPoint: CGPointMake(20.13, 9.91) controlPoint1: CGPointMake(20.75, 8.34) controlPoint2: CGPointMake(20.13, 8.97)];
                        [bezier32Path addCurveToPoint: CGPointMake(21.39, 11.13) controlPoint1: CGPointMake(20.13, 10.58) controlPoint2: CGPointMake(20.49, 11.13)];
                        [bezier32Path addCurveToPoint: CGPointMake(22.97, 9.53) controlPoint1: CGPointMake(22.31, 11.13) controlPoint2: CGPointMake(22.97, 10.64)];
                        [bezier32Path closePath];
                        bezier32Path.miterLimit = 4;

                        [fillColor4 setFill];
                        [bezier32Path fill];


                        //// Bezier 33 Drawing
                        UIBezierPath* bezier33Path = [UIBezierPath bezierPath];
                        [bezier33Path moveToPoint: CGPointMake(18.84, 8.4)];
                        [bezier33Path addCurveToPoint: CGPointMake(18.42, 10.9) controlPoint1: CGPointMake(18.74, 9.23) controlPoint2: CGPointMake(18.56, 10.07)];
                        [bezier33Path addLineToPoint: CGPointMake(18.39, 11.08)];
                        [bezier33Path addLineToPoint: CGPointMake(19.2, 11.08)];
                        [bezier33Path addCurveToPoint: CGPointMake(20.2, 9.18) controlPoint1: CGPointMake(19.49, 9.48) controlPoint2: CGPointMake(19.59, 9.02)];
                        [bezier33Path addLineToPoint: CGPointMake(20.49, 8.42)];
                        [bezier33Path addCurveToPoint: CGPointMake(19.54, 8.8) controlPoint1: CGPointMake(20.07, 8.26) controlPoint2: CGPointMake(19.79, 8.49)];
                        [bezier33Path addCurveToPoint: CGPointMake(19.59, 8.39) controlPoint1: CGPointMake(19.56, 8.66) controlPoint2: CGPointMake(19.6, 8.52)];
                        [bezier33Path addLineToPoint: CGPointMake(18.84, 8.39)];
                        [bezier33Path addLineToPoint: CGPointMake(18.84, 8.4)];
                        [bezier33Path closePath];
                        bezier33Path.miterLimit = 4;

                        [fillColor4 setFill];
                        [bezier33Path fill];


                        //// Bezier 34 Drawing
                        UIBezierPath* bezier34Path = [UIBezierPath bezierPath];
                        [bezier34Path moveToPoint: CGPointMake(9.11, 11.08)];
                        [bezier34Path addLineToPoint: CGPointMake(8.31, 11.08)];
                        [bezier34Path addLineToPoint: CGPointMake(8.79, 8.57)];
                        [bezier34Path addLineToPoint: CGPointMake(7.69, 11.08)];
                        [bezier34Path addLineToPoint: CGPointMake(6.96, 11.08)];
                        [bezier34Path addLineToPoint: CGPointMake(6.82, 8.58)];
                        [bezier34Path addLineToPoint: CGPointMake(6.34, 11.08)];
                        [bezier34Path addLineToPoint: CGPointMake(5.61, 11.08)];
                        [bezier34Path addLineToPoint: CGPointMake(6.23, 7.81)];
                        [bezier34Path addLineToPoint: CGPointMake(7.49, 7.81)];
                        [bezier34Path addLineToPoint: CGPointMake(7.55, 9.84)];
                        [bezier34Path addLineToPoint: CGPointMake(8.44, 7.81)];
                        [bezier34Path addLineToPoint: CGPointMake(9.75, 7.81)];
                        [bezier34Path addLineToPoint: CGPointMake(9.11, 11.08)];
                        [bezier34Path closePath];
                        bezier34Path.miterLimit = 4;

                        [fillColor4 setFill];
                        [bezier34Path fill];
                    }
                }
            }
        }
    }
}

- (void)drawCardMasterCard {
    //// Color Declarations
    UIColor* fillColor = [UIColor colorWithRed: 0.651 green: 0.651 blue: 0.651 alpha: 1];
    UIColor* fillColor2 = [UIColor colorWithRed: 0.951 green: 0.956 blue: 0.956 alpha: 1];
    UIColor* fillColor4 = [UIColor colorWithRed: 1 green: 1 blue: 1 alpha: 1];
    UIColor* fillColor11 = [UIColor colorWithRed: 0.978 green: 0.636 blue: 0.15 alpha: 1];
    UIColor* fillColor12 = [UIColor colorWithRed: 0.899 green: 0 blue: 0.139 alpha: 1];
    UIColor* fillColor13 = [UIColor colorWithRed: 0.009 green: 0.143 blue: 0.375 alpha: 1];

    //// ic_card_mastercard Group
    {
        //// Group 2
        {
            //// Bezier Drawing
            UIBezierPath* bezierPath = [UIBezierPath bezierPath];
            [bezierPath moveToPoint: CGPointMake(39.97, 0)];
            [bezierPath addLineToPoint: CGPointMake(2.04, 0)];
            [bezierPath addCurveToPoint: CGPointMake(0, 2.02) controlPoint1: CGPointMake(0.91, 0) controlPoint2: CGPointMake(0, 0.91)];
            [bezierPath addLineToPoint: CGPointMake(0, 3.04)];
            [bezierPath addLineToPoint: CGPointMake(0, 23.96)];
            [bezierPath addLineToPoint: CGPointMake(0, 24.98)];
            [bezierPath addCurveToPoint: CGPointMake(2.04, 27) controlPoint1: CGPointMake(0, 26.09) controlPoint2: CGPointMake(0.91, 27)];
            [bezierPath addLineToPoint: CGPointMake(39.97, 27)];
            [bezierPath addCurveToPoint: CGPointMake(42, 24.98) controlPoint1: CGPointMake(41.09, 27) controlPoint2: CGPointMake(42, 26.09)];
            [bezierPath addLineToPoint: CGPointMake(42, 2.02)];
            [bezierPath addCurveToPoint: CGPointMake(39.97, 0) controlPoint1: CGPointMake(42, 0.91) controlPoint2: CGPointMake(41.09, 0)];
            [bezierPath closePath];
            bezierPath.miterLimit = 4;

            [fillColor setFill];
            [bezierPath fill];


            //// Rectangle Drawing
            UIBezierPath* rectanglePath = [UIBezierPath bezierPathWithRoundedRect: CGRectMake(0.5, 0.5, 41, 25.5) cornerRadius: 1.6];
            [fillColor2 setFill];
            [rectanglePath fill];
        }


        //// Group 3
        {
            //// Oval Drawing
            UIBezierPath* ovalPath = [UIBezierPath bezierPathWithOvalInRect: CGRectMake(12.15, 3, 12.9, 12.9)];
            [fillColor11 setFill];
            [ovalPath fill];


            //// Bezier 2 Drawing
            UIBezierPath* bezier2Path = [UIBezierPath bezierPath];
            [bezier2Path moveToPoint: CGPointMake(24.37, 13.06)];
            [bezier2Path addLineToPoint: CGPointMake(24.39, 13.06)];
            [bezier2Path addLineToPoint: CGPointMake(24.42, 13.06)];
            [bezier2Path addCurveToPoint: CGPointMake(24.43, 13.03) controlPoint1: CGPointMake(24.43, 13.06) controlPoint2: CGPointMake(24.43, 13.05)];
            [bezier2Path addCurveToPoint: CGPointMake(24.42, 13.02) controlPoint1: CGPointMake(24.43, 13.03) controlPoint2: CGPointMake(24.43, 13.02)];
            [bezier2Path addLineToPoint: CGPointMake(24.39, 13.02)];
            [bezier2Path addLineToPoint: CGPointMake(24.37, 13.02)];
            [bezier2Path addLineToPoint: CGPointMake(24.37, 13.06)];
            [bezier2Path closePath];
            [bezier2Path moveToPoint: CGPointMake(24.37, 13.17)];
            [bezier2Path addLineToPoint: CGPointMake(24.33, 13.17)];
            [bezier2Path addLineToPoint: CGPointMake(24.33, 12.98)];
            [bezier2Path addLineToPoint: CGPointMake(24.4, 12.98)];
            [bezier2Path addCurveToPoint: CGPointMake(24.45, 12.99) controlPoint1: CGPointMake(24.42, 12.98) controlPoint2: CGPointMake(24.44, 12.98)];
            [bezier2Path addCurveToPoint: CGPointMake(24.47, 13.03) controlPoint1: CGPointMake(24.46, 13) controlPoint2: CGPointMake(24.47, 13.02)];
            [bezier2Path addCurveToPoint: CGPointMake(24.43, 13.08) controlPoint1: CGPointMake(24.47, 13.06) controlPoint2: CGPointMake(24.46, 13.08)];
            [bezier2Path addLineToPoint: CGPointMake(24.47, 13.17)];
            [bezier2Path addLineToPoint: CGPointMake(24.42, 13.17)];
            [bezier2Path addLineToPoint: CGPointMake(24.4, 13.1)];
            [bezier2Path addLineToPoint: CGPointMake(24.37, 13.1)];
            [bezier2Path addLineToPoint: CGPointMake(24.37, 13.17)];
            [bezier2Path closePath];
            [bezier2Path moveToPoint: CGPointMake(24.4, 13.24)];
            [bezier2Path addCurveToPoint: CGPointMake(24.56, 13.08) controlPoint1: CGPointMake(24.48, 13.24) controlPoint2: CGPointMake(24.56, 13.16)];
            [bezier2Path addCurveToPoint: CGPointMake(24.4, 12.93) controlPoint1: CGPointMake(24.56, 12.99) controlPoint2: CGPointMake(24.48, 12.93)];
            [bezier2Path addCurveToPoint: CGPointMake(24.24, 13.08) controlPoint1: CGPointMake(24.31, 12.93) controlPoint2: CGPointMake(24.24, 12.99)];
            [bezier2Path addCurveToPoint: CGPointMake(24.4, 13.24) controlPoint1: CGPointMake(24.24, 13.16) controlPoint2: CGPointMake(24.32, 13.24)];
            [bezier2Path closePath];
            [bezier2Path moveToPoint: CGPointMake(24.19, 13.07)];
            [bezier2Path addCurveToPoint: CGPointMake(24.4, 12.87) controlPoint1: CGPointMake(24.19, 12.96) controlPoint2: CGPointMake(24.28, 12.87)];
            [bezier2Path addCurveToPoint: CGPointMake(24.61, 13.07) controlPoint1: CGPointMake(24.52, 12.87) controlPoint2: CGPointMake(24.61, 12.96)];
            [bezier2Path addCurveToPoint: CGPointMake(24.4, 13.29) controlPoint1: CGPointMake(24.61, 13.18) controlPoint2: CGPointMake(24.52, 13.29)];
            [bezier2Path addCurveToPoint: CGPointMake(24.19, 13.07) controlPoint1: CGPointMake(24.28, 13.29) controlPoint2: CGPointMake(24.19, 13.19)];
            [bezier2Path closePath];
            bezier2Path.miterLimit = 4;

            [fillColor11 setFill];
            [bezier2Path fill];


            //// Bezier 3 Drawing
            UIBezierPath* bezier3Path = [UIBezierPath bezierPath];
            [bezier3Path moveToPoint: CGPointMake(16.35, 8.79)];
            [bezier3Path addCurveToPoint: CGPointMake(16.23, 8.11) controlPoint1: CGPointMake(16.32, 8.56) controlPoint2: CGPointMake(16.29, 8.34)];
            [bezier3Path addLineToPoint: CGPointMake(12.28, 8.11)];
            [bezier3Path addCurveToPoint: CGPointMake(12.47, 7.42) controlPoint1: CGPointMake(12.33, 7.88) controlPoint2: CGPointMake(12.39, 7.66)];
            [bezier3Path addLineToPoint: CGPointMake(16.04, 7.42)];
            [bezier3Path addCurveToPoint: CGPointMake(15.77, 6.74) controlPoint1: CGPointMake(15.96, 7.19) controlPoint2: CGPointMake(15.88, 6.97)];
            [bezier3Path addLineToPoint: CGPointMake(12.73, 6.74)];
            [bezier3Path addCurveToPoint: CGPointMake(13.11, 6.05) controlPoint1: CGPointMake(12.85, 6.51) controlPoint2: CGPointMake(12.97, 6.28)];
            [bezier3Path addLineToPoint: CGPointMake(15.39, 6.05)];
            [bezier3Path addCurveToPoint: CGPointMake(14.89, 5.37) controlPoint1: CGPointMake(15.25, 5.81) controlPoint2: CGPointMake(15.09, 5.58)];
            [bezier3Path addLineToPoint: CGPointMake(13.6, 5.37)];
            [bezier3Path addCurveToPoint: CGPointMake(14.25, 4.69) controlPoint1: CGPointMake(13.79, 5.13) controlPoint2: CGPointMake(14.02, 4.9)];
            [bezier3Path addCurveToPoint: CGPointMake(9.92, 3.02) controlPoint1: CGPointMake(13.11, 3.65) controlPoint2: CGPointMake(11.59, 3.02)];
            [bezier3Path addCurveToPoint: CGPointMake(3.46, 9.48) controlPoint1: CGPointMake(6.35, 3.02) controlPoint2: CGPointMake(3.46, 5.92)];
            [bezier3Path addCurveToPoint: CGPointMake(9.92, 15.94) controlPoint1: CGPointMake(3.46, 13.05) controlPoint2: CGPointMake(6.35, 15.94)];
            [bezier3Path addCurveToPoint: CGPointMake(14.25, 14.26) controlPoint1: CGPointMake(11.6, 15.94) controlPoint2: CGPointMake(13.11, 15.3)];
            [bezier3Path addCurveToPoint: CGPointMake(14.91, 13.58) controlPoint1: CGPointMake(14.48, 14.05) controlPoint2: CGPointMake(14.71, 13.82)];
            [bezier3Path addLineToPoint: CGPointMake(13.6, 13.58)];
            [bezier3Path addCurveToPoint: CGPointMake(13.11, 12.9) controlPoint1: CGPointMake(13.42, 13.37) controlPoint2: CGPointMake(13.26, 13.14)];
            [bezier3Path addLineToPoint: CGPointMake(15.39, 12.9)];
            [bezier3Path addCurveToPoint: CGPointMake(15.77, 12.22) controlPoint1: CGPointMake(15.53, 12.68) controlPoint2: CGPointMake(15.65, 12.46)];
            [bezier3Path addLineToPoint: CGPointMake(12.73, 12.22)];
            [bezier3Path addCurveToPoint: CGPointMake(12.46, 11.54) controlPoint1: CGPointMake(12.63, 12.01) controlPoint2: CGPointMake(12.54, 11.78)];
            [bezier3Path addLineToPoint: CGPointMake(16.03, 11.54)];
            [bezier3Path addCurveToPoint: CGPointMake(16.22, 10.86) controlPoint1: CGPointMake(16.11, 11.31) controlPoint2: CGPointMake(16.17, 11.08)];
            [bezier3Path addCurveToPoint: CGPointMake(16.34, 10.18) controlPoint1: CGPointMake(16.27, 10.63) controlPoint2: CGPointMake(16.31, 10.4)];
            [bezier3Path addCurveToPoint: CGPointMake(16.38, 9.5) controlPoint1: CGPointMake(16.36, 9.95) controlPoint2: CGPointMake(16.38, 9.72)];
            [bezier3Path addCurveToPoint: CGPointMake(16.35, 8.79) controlPoint1: CGPointMake(16.38, 9.25) controlPoint2: CGPointMake(16.37, 9.02)];
            [bezier3Path closePath];
            bezier3Path.miterLimit = 4;

            [fillColor12 setFill];
            [bezier3Path fill];


            //// Bezier 4 Drawing
            UIBezierPath* bezier4Path = [UIBezierPath bezierPath];
            [bezier4Path moveToPoint: CGPointMake(24.37, 10.96)];
            [bezier4Path addLineToPoint: CGPointMake(24.39, 10.96)];
            [bezier4Path addLineToPoint: CGPointMake(24.42, 10.96)];
            [bezier4Path addCurveToPoint: CGPointMake(24.43, 10.93) controlPoint1: CGPointMake(24.43, 10.96) controlPoint2: CGPointMake(24.43, 10.95)];
            [bezier4Path addCurveToPoint: CGPointMake(24.42, 10.92) controlPoint1: CGPointMake(24.43, 10.93) controlPoint2: CGPointMake(24.43, 10.92)];
            [bezier4Path addLineToPoint: CGPointMake(24.39, 10.92)];
            [bezier4Path addLineToPoint: CGPointMake(24.37, 10.92)];
            [bezier4Path addLineToPoint: CGPointMake(24.37, 10.96)];
            [bezier4Path closePath];
            [bezier4Path moveToPoint: CGPointMake(24.37, 11.07)];
            [bezier4Path addLineToPoint: CGPointMake(24.33, 11.07)];
            [bezier4Path addLineToPoint: CGPointMake(24.33, 10.88)];
            [bezier4Path addLineToPoint: CGPointMake(24.4, 10.88)];
            [bezier4Path addCurveToPoint: CGPointMake(24.45, 10.89) controlPoint1: CGPointMake(24.42, 10.88) controlPoint2: CGPointMake(24.44, 10.88)];
            [bezier4Path addCurveToPoint: CGPointMake(24.47, 10.93) controlPoint1: CGPointMake(24.46, 10.9) controlPoint2: CGPointMake(24.47, 10.92)];
            [bezier4Path addCurveToPoint: CGPointMake(24.43, 10.98) controlPoint1: CGPointMake(24.47, 10.96) controlPoint2: CGPointMake(24.46, 10.98)];
            [bezier4Path addLineToPoint: CGPointMake(24.47, 11.07)];
            [bezier4Path addLineToPoint: CGPointMake(24.42, 11.07)];
            [bezier4Path addLineToPoint: CGPointMake(24.4, 11)];
            [bezier4Path addLineToPoint: CGPointMake(24.37, 11)];
            [bezier4Path addLineToPoint: CGPointMake(24.37, 11.07)];
            [bezier4Path closePath];
            [bezier4Path moveToPoint: CGPointMake(24.4, 11.14)];
            [bezier4Path addCurveToPoint: CGPointMake(24.56, 10.97) controlPoint1: CGPointMake(24.48, 11.14) controlPoint2: CGPointMake(24.56, 11.06)];
            [bezier4Path addCurveToPoint: CGPointMake(24.4, 10.82) controlPoint1: CGPointMake(24.56, 10.88) controlPoint2: CGPointMake(24.48, 10.82)];
            [bezier4Path addCurveToPoint: CGPointMake(24.24, 10.97) controlPoint1: CGPointMake(24.31, 10.82) controlPoint2: CGPointMake(24.24, 10.88)];
            [bezier4Path addCurveToPoint: CGPointMake(24.4, 11.14) controlPoint1: CGPointMake(24.24, 11.06) controlPoint2: CGPointMake(24.32, 11.14)];
            [bezier4Path closePath];
            [bezier4Path moveToPoint: CGPointMake(24.19, 10.97)];
            [bezier4Path addCurveToPoint: CGPointMake(24.4, 10.77) controlPoint1: CGPointMake(24.19, 10.86) controlPoint2: CGPointMake(24.28, 10.77)];
            [bezier4Path addCurveToPoint: CGPointMake(24.61, 10.97) controlPoint1: CGPointMake(24.52, 10.77) controlPoint2: CGPointMake(24.61, 10.86)];
            [bezier4Path addCurveToPoint: CGPointMake(24.4, 11.19) controlPoint1: CGPointMake(24.61, 11.09) controlPoint2: CGPointMake(24.52, 11.19)];
            [bezier4Path addCurveToPoint: CGPointMake(24.19, 10.97) controlPoint1: CGPointMake(24.28, 11.18) controlPoint2: CGPointMake(24.19, 11.08)];
            [bezier4Path closePath];
            bezier4Path.miterLimit = 4;

            [fillColor4 setFill];
            [bezier4Path fill];


            //// Bezier 5 Drawing
            UIBezierPath* bezier5Path = [UIBezierPath bezierPath];
            [bezier5Path moveToPoint: CGPointMake(12.06, 11.34)];
            [bezier5Path addCurveToPoint: CGPointMake(11.53, 11.43) controlPoint1: CGPointMake(11.84, 11.4) controlPoint2: CGPointMake(11.69, 11.43)];
            [bezier5Path addCurveToPoint: CGPointMake(11, 10.85) controlPoint1: CGPointMake(11.2, 11.43) controlPoint2: CGPointMake(11, 11.22)];
            [bezier5Path addCurveToPoint: CGPointMake(11.02, 10.61) controlPoint1: CGPointMake(11, 10.77) controlPoint2: CGPointMake(11.01, 10.7)];
            [bezier5Path addLineToPoint: CGPointMake(11.06, 10.36)];
            [bezier5Path addLineToPoint: CGPointMake(11.1, 10.15)];
            [bezier5Path addLineToPoint: CGPointMake(11.41, 8.33)];
            [bezier5Path addLineToPoint: CGPointMake(12.08, 8.33)];
            [bezier5Path addLineToPoint: CGPointMake(12, 8.71)];
            [bezier5Path addLineToPoint: CGPointMake(12.42, 8.71)];
            [bezier5Path addLineToPoint: CGPointMake(12.32, 9.38)];
            [bezier5Path addLineToPoint: CGPointMake(11.9, 9.38)];
            [bezier5Path addLineToPoint: CGPointMake(11.71, 10.47)];
            [bezier5Path addCurveToPoint: CGPointMake(11.7, 10.57) controlPoint1: CGPointMake(11.71, 10.51) controlPoint2: CGPointMake(11.7, 10.55)];
            [bezier5Path addCurveToPoint: CGPointMake(11.94, 10.77) controlPoint1: CGPointMake(11.7, 10.71) controlPoint2: CGPointMake(11.78, 10.77)];
            [bezier5Path addCurveToPoint: CGPointMake(12.16, 10.75) controlPoint1: CGPointMake(12.03, 10.77) controlPoint2: CGPointMake(12.08, 10.76)];
            [bezier5Path addLineToPoint: CGPointMake(12.06, 11.34)];
            [bezier5Path closePath];
            bezier5Path.miterLimit = 4;

            [fillColor13 setFill];
            [bezier5Path fill];


            //// Bezier 6 Drawing
            UIBezierPath* bezier6Path = [UIBezierPath bezierPath];
            [bezier6Path moveToPoint: CGPointMake(13.81, 9.73)];
            [bezier6Path addLineToPoint: CGPointMake(13.81, 9.6)];
            [bezier6Path addCurveToPoint: CGPointMake(13.48, 9.26) controlPoint1: CGPointMake(13.81, 9.38) controlPoint2: CGPointMake(13.68, 9.26)];
            [bezier6Path addCurveToPoint: CGPointMake(13.03, 9.73) controlPoint1: CGPointMake(13.25, 9.26) controlPoint2: CGPointMake(13.1, 9.42)];
            [bezier6Path addLineToPoint: CGPointMake(13.81, 9.73)];
            [bezier6Path closePath];
            [bezier6Path moveToPoint: CGPointMake(14.23, 11.31)];
            [bezier6Path addCurveToPoint: CGPointMake(13.51, 11.42) controlPoint1: CGPointMake(13.99, 11.39) controlPoint2: CGPointMake(13.75, 11.42)];
            [bezier6Path addCurveToPoint: CGPointMake(12.32, 10.23) controlPoint1: CGPointMake(12.76, 11.42) controlPoint2: CGPointMake(12.32, 11.01)];
            [bezier6Path addCurveToPoint: CGPointMake(13.55, 8.63) controlPoint1: CGPointMake(12.32, 9.32) controlPoint2: CGPointMake(12.84, 8.63)];
            [bezier6Path addCurveToPoint: CGPointMake(14.48, 9.61) controlPoint1: CGPointMake(14.12, 8.63) controlPoint2: CGPointMake(14.48, 9.01)];
            [bezier6Path addCurveToPoint: CGPointMake(14.39, 10.27) controlPoint1: CGPointMake(14.48, 9.8) controlPoint2: CGPointMake(14.46, 9.99)];
            [bezier6Path addLineToPoint: CGPointMake(13, 10.27)];
            [bezier6Path addLineToPoint: CGPointMake(13, 10.34)];
            [bezier6Path addCurveToPoint: CGPointMake(13.61, 10.81) controlPoint1: CGPointMake(13, 10.66) controlPoint2: CGPointMake(13.2, 10.81)];
            [bezier6Path addCurveToPoint: CGPointMake(14.35, 10.65) controlPoint1: CGPointMake(13.86, 10.81) controlPoint2: CGPointMake(14.09, 10.76)];
            [bezier6Path addLineToPoint: CGPointMake(14.23, 11.31)];
            [bezier6Path closePath];
            bezier6Path.miterLimit = 4;

            [fillColor13 setFill];
            [bezier6Path fill];


            //// Bezier 7 Drawing
            UIBezierPath* bezier7Path = [UIBezierPath bezierPath];
            [bezier7Path moveToPoint: CGPointMake(6.7, 11.38)];
            [bezier7Path addLineToPoint: CGPointMake(6.01, 11.38)];
            [bezier7Path addLineToPoint: CGPointMake(6.41, 8.85)];
            [bezier7Path addLineToPoint: CGPointMake(5.51, 11.38)];
            [bezier7Path addLineToPoint: CGPointMake(5.03, 11.38)];
            [bezier7Path addLineToPoint: CGPointMake(4.98, 8.87)];
            [bezier7Path addLineToPoint: CGPointMake(4.55, 11.38)];
            [bezier7Path addLineToPoint: CGPointMake(3.88, 11.38)];
            [bezier7Path addLineToPoint: CGPointMake(4.42, 8.1)];
            [bezier7Path addLineToPoint: CGPointMake(5.42, 8.1)];
            [bezier7Path addLineToPoint: CGPointMake(5.46, 10.12)];
            [bezier7Path addLineToPoint: CGPointMake(6.13, 8.1)];
            [bezier7Path addLineToPoint: CGPointMake(7.25, 8.1)];
            [bezier7Path addLineToPoint: CGPointMake(6.7, 11.38)];
            [bezier7Path closePath];
            bezier7Path.miterLimit = 4;

            [fillColor13 setFill];
            [bezier7Path fill];


            //// Group 4
            {
                //// Bezier 8 Drawing
                UIBezierPath* bezier8Path = [UIBezierPath bezierPath];
                [bezier8Path moveToPoint: CGPointMake(8.95, 11.38)];
                [bezier8Path addLineToPoint: CGPointMake(8.34, 11.38)];
                [bezier8Path addLineToPoint: CGPointMake(8.36, 11.1)];
                [bezier8Path addCurveToPoint: CGPointMake(7.61, 11.43) controlPoint1: CGPointMake(8.2, 11.31) controlPoint2: CGPointMake(8, 11.43)];
                [bezier8Path addCurveToPoint: CGPointMake(6.99, 10.69) controlPoint1: CGPointMake(7.27, 11.43) controlPoint2: CGPointMake(6.99, 11.13)];
                [bezier8Path addCurveToPoint: CGPointMake(7.04, 10.35) controlPoint1: CGPointMake(6.99, 10.56) controlPoint2: CGPointMake(7.02, 10.45)];
                [bezier8Path addCurveToPoint: CGPointMake(8.21, 9.67) controlPoint1: CGPointMake(7.16, 9.93) controlPoint2: CGPointMake(7.57, 9.68)];
                [bezier8Path addCurveToPoint: CGPointMake(8.51, 9.69) controlPoint1: CGPointMake(8.29, 9.67) controlPoint2: CGPointMake(8.41, 9.67)];
                [bezier8Path addCurveToPoint: CGPointMake(8.54, 9.5) controlPoint1: CGPointMake(8.54, 9.59) controlPoint2: CGPointMake(8.54, 9.55)];
                [bezier8Path addCurveToPoint: CGPointMake(8.07, 9.27) controlPoint1: CGPointMake(8.54, 9.32) controlPoint2: CGPointMake(8.4, 9.27)];
                [bezier8Path addCurveToPoint: CGPointMake(7.49, 9.34) controlPoint1: CGPointMake(7.87, 9.27) controlPoint2: CGPointMake(7.65, 9.31)];
                [bezier8Path addLineToPoint: CGPointMake(7.4, 9.39)];
                [bezier8Path addLineToPoint: CGPointMake(7.35, 9.39)];
                [bezier8Path addLineToPoint: CGPointMake(7.45, 8.79)];
                [bezier8Path addCurveToPoint: CGPointMake(8.26, 8.65) controlPoint1: CGPointMake(7.78, 8.69) controlPoint2: CGPointMake(8, 8.65)];
                [bezier8Path addCurveToPoint: CGPointMake(9.19, 9.44) controlPoint1: CGPointMake(8.87, 8.65) controlPoint2: CGPointMake(9.19, 8.92)];
                [bezier8Path addCurveToPoint: CGPointMake(9.15, 9.96) controlPoint1: CGPointMake(9.19, 9.57) controlPoint2: CGPointMake(9.2, 9.67)];
                [bezier8Path addLineToPoint: CGPointMake(9.01, 10.91)];
                [bezier8Path addLineToPoint: CGPointMake(8.98, 11.07)];
                [bezier8Path addLineToPoint: CGPointMake(8.95, 11.21)];
                [bezier8Path addLineToPoint: CGPointMake(8.95, 11.3)];
                [bezier8Path addLineToPoint: CGPointMake(8.95, 11.38)];
                [bezier8Path closePath];
                [bezier8Path moveToPoint: CGPointMake(8.39, 10.18)];
                [bezier8Path addCurveToPoint: CGPointMake(8.25, 10.17) controlPoint1: CGPointMake(8.31, 10.18) controlPoint2: CGPointMake(8.3, 10.17)];
                [bezier8Path addCurveToPoint: CGPointMake(7.66, 10.58) controlPoint1: CGPointMake(7.86, 10.17) controlPoint2: CGPointMake(7.66, 10.32)];
                [bezier8Path addCurveToPoint: CGPointMake(7.91, 10.86) controlPoint1: CGPointMake(7.66, 10.76) controlPoint2: CGPointMake(7.76, 10.86)];
                [bezier8Path addCurveToPoint: CGPointMake(8.39, 10.18) controlPoint1: CGPointMake(8.25, 10.86) controlPoint2: CGPointMake(8.38, 10.58)];
                [bezier8Path closePath];
                bezier8Path.miterLimit = 4;

                [fillColor13 setFill];
                [bezier8Path fill];


                //// Bezier 9 Drawing
                UIBezierPath* bezier9Path = [UIBezierPath bezierPath];
                [bezier9Path moveToPoint: CGPointMake(17.6, 8.74)];
                [bezier9Path addCurveToPoint: CGPointMake(18.22, 8.92) controlPoint1: CGPointMake(17.79, 8.74) controlPoint2: CGPointMake(17.97, 8.79)];
                [bezier9Path addLineToPoint: CGPointMake(18.34, 8.2)];
                [bezier9Path addCurveToPoint: CGPointMake(18.18, 8.14) controlPoint1: CGPointMake(18.28, 8.17) controlPoint2: CGPointMake(18.27, 8.17)];
                [bezier9Path addLineToPoint: CGPointMake(17.89, 8.08)];
                [bezier9Path addCurveToPoint: CGPointMake(17.57, 8.04) controlPoint1: CGPointMake(17.8, 8.05) controlPoint2: CGPointMake(17.7, 8.04)];
                [bezier9Path addCurveToPoint: CGPointMake(16.81, 8.18) controlPoint1: CGPointMake(17.23, 8.04) controlPoint2: CGPointMake(17.03, 8.04)];
                [bezier9Path addCurveToPoint: CGPointMake(16.39, 8.52) controlPoint1: CGPointMake(16.69, 8.24) controlPoint2: CGPointMake(16.56, 8.35)];
                [bezier9Path addLineToPoint: CGPointMake(16.31, 8.49)];
                [bezier9Path addLineToPoint: CGPointMake(15.59, 9)];
                [bezier9Path addLineToPoint: CGPointMake(15.63, 8.72)];
                [bezier9Path addLineToPoint: CGPointMake(14.88, 8.72)];
                [bezier9Path addLineToPoint: CGPointMake(14.46, 11.38)];
                [bezier9Path addLineToPoint: CGPointMake(15.16, 11.38)];
                [bezier9Path addLineToPoint: CGPointMake(15.41, 9.95)];
                [bezier9Path addCurveToPoint: CGPointMake(15.56, 9.68) controlPoint1: CGPointMake(15.41, 9.95) controlPoint2: CGPointMake(15.51, 9.75)];
                [bezier9Path addCurveToPoint: CGPointMake(15.94, 9.51) controlPoint1: CGPointMake(15.69, 9.51) controlPoint2: CGPointMake(15.8, 9.51)];
                [bezier9Path addLineToPoint: CGPointMake(15.99, 9.51)];
                [bezier9Path addCurveToPoint: CGPointMake(15.96, 10.02) controlPoint1: CGPointMake(15.98, 9.66) controlPoint2: CGPointMake(15.96, 9.84)];
                [bezier9Path addCurveToPoint: CGPointMake(17.21, 11.44) controlPoint1: CGPointMake(15.96, 10.89) controlPoint2: CGPointMake(16.45, 11.44)];
                [bezier9Path addCurveToPoint: CGPointMake(17.82, 11.34) controlPoint1: CGPointMake(17.4, 11.44) controlPoint2: CGPointMake(17.57, 11.41)];
                [bezier9Path addLineToPoint: CGPointMake(17.95, 10.59)];
                [bezier9Path addCurveToPoint: CGPointMake(17.35, 10.76) controlPoint1: CGPointMake(17.72, 10.71) controlPoint2: CGPointMake(17.53, 10.76)];
                [bezier9Path addCurveToPoint: CGPointMake(16.7, 9.96) controlPoint1: CGPointMake(16.94, 10.76) controlPoint2: CGPointMake(16.7, 10.47)];
                [bezier9Path addCurveToPoint: CGPointMake(17.6, 8.74) controlPoint1: CGPointMake(16.71, 9.25) controlPoint2: CGPointMake(17.07, 8.74)];
                [bezier9Path closePath];
                bezier9Path.miterLimit = 4;

                [fillColor13 setFill];
                [bezier9Path fill];


                //// Bezier 10 Drawing
                UIBezierPath* bezier10Path = [UIBezierPath bezierPath];
                [bezier10Path moveToPoint: CGPointMake(22.67, 10.74)];
                [bezier10Path addCurveToPoint: CGPointMake(22.32, 10.22) controlPoint1: CGPointMake(22.43, 10.74) controlPoint2: CGPointMake(22.32, 10.58)];
                [bezier10Path addCurveToPoint: CGPointMake(22.86, 9.32) controlPoint1: CGPointMake(22.32, 9.7) controlPoint2: CGPointMake(22.54, 9.32)];
                [bezier10Path addCurveToPoint: CGPointMake(23.23, 9.85) controlPoint1: CGPointMake(23.1, 9.32) controlPoint2: CGPointMake(23.23, 9.51)];
                [bezier10Path addCurveToPoint: CGPointMake(22.67, 10.74) controlPoint1: CGPointMake(23.23, 10.37) controlPoint2: CGPointMake(23, 10.74)];
                [bezier10Path closePath];
                [bezier10Path moveToPoint: CGPointMake(23.52, 8.1)];
                [bezier10Path addLineToPoint: CGPointMake(23.36, 9.04)];
                [bezier10Path addCurveToPoint: CGPointMake(22.73, 8.67) controlPoint1: CGPointMake(23.2, 8.78) controlPoint2: CGPointMake(23, 8.67)];
                [bezier10Path addCurveToPoint: CGPointMake(21.8, 9.26) controlPoint1: CGPointMake(22.36, 8.67) controlPoint2: CGPointMake(22.02, 8.87)];
                [bezier10Path addLineToPoint: CGPointMake(21.36, 8.99)];
                [bezier10Path addLineToPoint: CGPointMake(21.4, 8.71)];
                [bezier10Path addLineToPoint: CGPointMake(20.65, 8.71)];
                [bezier10Path addLineToPoint: CGPointMake(20.22, 11.37)];
                [bezier10Path addLineToPoint: CGPointMake(20.93, 11.37)];
                [bezier10Path addLineToPoint: CGPointMake(21.16, 9.94)];
                [bezier10Path addCurveToPoint: CGPointMake(21.39, 9.67) controlPoint1: CGPointMake(21.16, 9.94) controlPoint2: CGPointMake(21.34, 9.74)];
                [bezier10Path addCurveToPoint: CGPointMake(21.69, 9.5) controlPoint1: CGPointMake(21.49, 9.54) controlPoint2: CGPointMake(21.6, 9.5)];
                [bezier10Path addCurveToPoint: CGPointMake(21.57, 10.29) controlPoint1: CGPointMake(21.62, 9.73) controlPoint2: CGPointMake(21.57, 9.99)];
                [bezier10Path addCurveToPoint: CGPointMake(22.43, 11.4) controlPoint1: CGPointMake(21.57, 10.96) controlPoint2: CGPointMake(21.92, 11.4)];
                [bezier10Path addCurveToPoint: CGPointMake(23.08, 11.1) controlPoint1: CGPointMake(22.68, 11.4) controlPoint2: CGPointMake(22.89, 11.31)];
                [bezier10Path addLineToPoint: CGPointMake(23.04, 11.37)];
                [bezier10Path addLineToPoint: CGPointMake(23.71, 11.37)];
                [bezier10Path addLineToPoint: CGPointMake(24.24, 8.09)];
                [bezier10Path addLineToPoint: CGPointMake(23.52, 8.09)];
                [bezier10Path addLineToPoint: CGPointMake(23.52, 8.1)];
                [bezier10Path closePath];
                bezier10Path.miterLimit = 4;

                [fillColor13 setFill];
                [bezier10Path fill];


                //// Bezier 11 Drawing
                UIBezierPath* bezier11Path = [UIBezierPath bezierPath];
                [bezier11Path moveToPoint: CGPointMake(19.99, 11.38)];
                [bezier11Path addLineToPoint: CGPointMake(19.38, 11.38)];
                [bezier11Path addLineToPoint: CGPointMake(19.39, 11.1)];
                [bezier11Path addCurveToPoint: CGPointMake(18.65, 11.43) controlPoint1: CGPointMake(19.24, 11.32) controlPoint2: CGPointMake(19.04, 11.43)];
                [bezier11Path addCurveToPoint: CGPointMake(18.01, 10.69) controlPoint1: CGPointMake(18.31, 11.43) controlPoint2: CGPointMake(18.01, 11.14)];
                [bezier11Path addCurveToPoint: CGPointMake(19.25, 9.66) controlPoint1: CGPointMake(18.02, 10.06) controlPoint2: CGPointMake(18.49, 9.66)];
                [bezier11Path addCurveToPoint: CGPointMake(19.56, 9.68) controlPoint1: CGPointMake(19.33, 9.66) controlPoint2: CGPointMake(19.45, 9.66)];
                [bezier11Path addCurveToPoint: CGPointMake(19.59, 9.5) controlPoint1: CGPointMake(19.59, 9.59) controlPoint2: CGPointMake(19.59, 9.55)];
                [bezier11Path addCurveToPoint: CGPointMake(19.12, 9.27) controlPoint1: CGPointMake(19.59, 9.32) controlPoint2: CGPointMake(19.45, 9.27)];
                [bezier11Path addCurveToPoint: CGPointMake(18.54, 9.34) controlPoint1: CGPointMake(18.92, 9.27) controlPoint2: CGPointMake(18.69, 9.31)];
                [bezier11Path addLineToPoint: CGPointMake(18.44, 9.38)];
                [bezier11Path addLineToPoint: CGPointMake(18.4, 9.38)];
                [bezier11Path addLineToPoint: CGPointMake(18.5, 8.78)];
                [bezier11Path addCurveToPoint: CGPointMake(19.31, 8.64) controlPoint1: CGPointMake(18.83, 8.68) controlPoint2: CGPointMake(19.06, 8.64)];
                [bezier11Path addCurveToPoint: CGPointMake(20.24, 9.43) controlPoint1: CGPointMake(19.92, 8.64) controlPoint2: CGPointMake(20.24, 8.91)];
                [bezier11Path addCurveToPoint: CGPointMake(20.2, 9.95) controlPoint1: CGPointMake(20.24, 9.56) controlPoint2: CGPointMake(20.25, 9.66)];
                [bezier11Path addLineToPoint: CGPointMake(20.06, 10.9)];
                [bezier11Path addLineToPoint: CGPointMake(20.03, 11.06)];
                [bezier11Path addLineToPoint: CGPointMake(20.01, 11.2)];
                [bezier11Path addLineToPoint: CGPointMake(20, 11.29)];
                [bezier11Path addLineToPoint: CGPointMake(20, 11.38)];
                [bezier11Path addLineToPoint: CGPointMake(19.99, 11.38)];
                [bezier11Path closePath];
                [bezier11Path moveToPoint: CGPointMake(19.44, 10.18)];
                [bezier11Path addCurveToPoint: CGPointMake(19.3, 10.17) controlPoint1: CGPointMake(19.36, 10.18) controlPoint2: CGPointMake(19.35, 10.17)];
                [bezier11Path addCurveToPoint: CGPointMake(18.71, 10.58) controlPoint1: CGPointMake(18.91, 10.17) controlPoint2: CGPointMake(18.71, 10.32)];
                [bezier11Path addCurveToPoint: CGPointMake(18.96, 10.86) controlPoint1: CGPointMake(18.71, 10.76) controlPoint2: CGPointMake(18.81, 10.86)];
                [bezier11Path addCurveToPoint: CGPointMake(19.44, 10.18) controlPoint1: CGPointMake(19.3, 10.86) controlPoint2: CGPointMake(19.42, 10.58)];
                [bezier11Path closePath];
                bezier11Path.miterLimit = 4;

                [fillColor13 setFill];
                [bezier11Path fill];


                //// Bezier 12 Drawing
                UIBezierPath* bezier12Path = [UIBezierPath bezierPath];
                [bezier12Path moveToPoint: CGPointMake(10.4, 9.28)];
                [bezier12Path addCurveToPoint: CGPointMake(10.93, 9.32) controlPoint1: CGPointMake(10.54, 9.28) controlPoint2: CGPointMake(10.73, 9.29)];
                [bezier12Path addLineToPoint: CGPointMake(11.03, 8.7)];
                [bezier12Path addCurveToPoint: CGPointMake(10.4, 8.65) controlPoint1: CGPointMake(10.83, 8.67) controlPoint2: CGPointMake(10.56, 8.65)];
                [bezier12Path addCurveToPoint: CGPointMake(9.36, 9.56) controlPoint1: CGPointMake(9.63, 8.65) controlPoint2: CGPointMake(9.36, 9.07)];
                [bezier12Path addCurveToPoint: CGPointMake(9.88, 10.28) controlPoint1: CGPointMake(9.36, 9.87) controlPoint2: CGPointMake(9.51, 10.12)];
                [bezier12Path addCurveToPoint: CGPointMake(10.22, 10.56) controlPoint1: CGPointMake(10.17, 10.42) controlPoint2: CGPointMake(10.22, 10.45)];
                [bezier12Path addCurveToPoint: CGPointMake(9.79, 10.83) controlPoint1: CGPointMake(10.22, 10.72) controlPoint2: CGPointMake(10.07, 10.83)];
                [bezier12Path addCurveToPoint: CGPointMake(9.17, 10.73) controlPoint1: CGPointMake(9.59, 10.83) controlPoint2: CGPointMake(9.4, 10.79)];
                [bezier12Path addLineToPoint: CGPointMake(9.1, 11.34)];
                [bezier12Path addLineToPoint: CGPointMake(9.11, 11.34)];
                [bezier12Path addLineToPoint: CGPointMake(9.24, 11.36)];
                [bezier12Path addCurveToPoint: CGPointMake(9.42, 11.39) controlPoint1: CGPointMake(9.28, 11.38) controlPoint2: CGPointMake(9.34, 11.39)];
                [bezier12Path addCurveToPoint: CGPointMake(9.83, 11.41) controlPoint1: CGPointMake(9.59, 11.41) controlPoint2: CGPointMake(9.73, 11.41)];
                [bezier12Path addCurveToPoint: CGPointMake(10.93, 10.52) controlPoint1: CGPointMake(10.6, 11.41) controlPoint2: CGPointMake(10.93, 11.12)];
                [bezier12Path addCurveToPoint: CGPointMake(10.4, 9.78) controlPoint1: CGPointMake(10.93, 10.15) controlPoint2: CGPointMake(10.75, 9.94)];
                [bezier12Path addCurveToPoint: CGPointMake(10.07, 9.5) controlPoint1: CGPointMake(10.11, 9.64) controlPoint2: CGPointMake(10.07, 9.63)];
                [bezier12Path addCurveToPoint: CGPointMake(10.4, 9.28) controlPoint1: CGPointMake(10.06, 9.39) controlPoint2: CGPointMake(10.19, 9.28)];
                [bezier12Path closePath];
                bezier12Path.miterLimit = 4;

                [fillColor13 setFill];
                [bezier12Path fill];


                //// Bezier 13 Drawing
                UIBezierPath* bezier13Path = [UIBezierPath bezierPath];
                [bezier13Path moveToPoint: CGPointMake(18.53, 7.99)];
                [bezier13Path addLineToPoint: CGPointMake(18.41, 8.7)];
                [bezier13Path addCurveToPoint: CGPointMake(17.79, 8.52) controlPoint1: CGPointMake(18.15, 8.58) controlPoint2: CGPointMake(17.98, 8.52)];
                [bezier13Path addCurveToPoint: CGPointMake(16.89, 9.75) controlPoint1: CGPointMake(17.26, 8.52) controlPoint2: CGPointMake(16.89, 9.03)];
                [bezier13Path addCurveToPoint: CGPointMake(17.55, 10.55) controlPoint1: CGPointMake(16.89, 10.24) controlPoint2: CGPointMake(17.14, 10.55)];
                [bezier13Path addCurveToPoint: CGPointMake(18.15, 10.39) controlPoint1: CGPointMake(17.73, 10.55) controlPoint2: CGPointMake(17.92, 10.5)];
                [bezier13Path addLineToPoint: CGPointMake(18.02, 11.14)];
                [bezier13Path addCurveToPoint: CGPointMake(17.4, 11.23) controlPoint1: CGPointMake(17.77, 11.2) controlPoint2: CGPointMake(17.6, 11.23)];
                [bezier13Path addCurveToPoint: CGPointMake(16.18, 9.82) controlPoint1: CGPointMake(16.66, 11.23) controlPoint2: CGPointMake(16.18, 10.7)];
                [bezier13Path addCurveToPoint: CGPointMake(17.75, 7.83) controlPoint1: CGPointMake(16.18, 8.64) controlPoint2: CGPointMake(16.83, 7.83)];
                [bezier13Path addCurveToPoint: CGPointMake(18.07, 7.86) controlPoint1: CGPointMake(17.88, 7.83) controlPoint2: CGPointMake(17.98, 7.84)];
                [bezier13Path addLineToPoint: CGPointMake(18.36, 7.93)];
                [bezier13Path addCurveToPoint: CGPointMake(18.53, 7.99) controlPoint1: CGPointMake(18.45, 7.97) controlPoint2: CGPointMake(18.46, 7.97)];
                [bezier13Path closePath];
                bezier13Path.miterLimit = 4;

                [fillColor4 setFill];
                [bezier13Path fill];


                //// Bezier 14 Drawing
                UIBezierPath* bezier14Path = [UIBezierPath bezierPath];
                [bezier14Path moveToPoint: CGPointMake(16.28, 8.49)];
                [bezier14Path addCurveToPoint: CGPointMake(16.2, 8.48) controlPoint1: CGPointMake(16.25, 8.48) controlPoint2: CGPointMake(16.23, 8.48)];
                [bezier14Path addCurveToPoint: CGPointMake(15.63, 8.91) controlPoint1: CGPointMake(15.97, 8.48) controlPoint2: CGPointMake(15.85, 8.6)];
                [bezier14Path addLineToPoint: CGPointMake(15.69, 8.51)];
                [bezier14Path addLineToPoint: CGPointMake(15.04, 8.51)];
                [bezier14Path addLineToPoint: CGPointMake(14.62, 11.18)];
                [bezier14Path addLineToPoint: CGPointMake(15.32, 11.18)];
                [bezier14Path addCurveToPoint: CGPointMake(15.98, 9.27) controlPoint1: CGPointMake(15.57, 9.54) controlPoint2: CGPointMake(15.63, 9.27)];
                [bezier14Path addLineToPoint: CGPointMake(16.03, 9.27)];
                [bezier14Path addCurveToPoint: CGPointMake(16.3, 8.5) controlPoint1: CGPointMake(16.09, 8.95) controlPoint2: CGPointMake(16.17, 8.71)];
                [bezier14Path addLineToPoint: CGPointMake(16.28, 8.5)];
                [bezier14Path addLineToPoint: CGPointMake(16.28, 8.49)];
                [bezier14Path closePath];
                bezier14Path.miterLimit = 4;

                [fillColor4 setFill];
                [bezier14Path fill];


                //// Bezier 15 Drawing
                UIBezierPath* bezier15Path = [UIBezierPath bezierPath];
                [bezier15Path moveToPoint: CGPointMake(12.24, 11.14)];
                [bezier15Path addCurveToPoint: CGPointMake(11.73, 11.23) controlPoint1: CGPointMake(12.05, 11.2) controlPoint2: CGPointMake(11.9, 11.23)];
                [bezier15Path addCurveToPoint: CGPointMake(11.18, 10.65) controlPoint1: CGPointMake(11.38, 11.23) controlPoint2: CGPointMake(11.18, 11.03)];
                [bezier15Path addCurveToPoint: CGPointMake(11.2, 10.41) controlPoint1: CGPointMake(11.18, 10.57) controlPoint2: CGPointMake(11.19, 10.5)];
                [bezier15Path addLineToPoint: CGPointMake(11.24, 10.14)];
                [bezier15Path addLineToPoint: CGPointMake(11.27, 9.94)];
                [bezier15Path addLineToPoint: CGPointMake(11.57, 8.12)];
                [bezier15Path addLineToPoint: CGPointMake(12.27, 8.12)];
                [bezier15Path addLineToPoint: CGPointMake(12.2, 8.5)];
                [bezier15Path addLineToPoint: CGPointMake(12.55, 8.5)];
                [bezier15Path addLineToPoint: CGPointMake(12.45, 9.16)];
                [bezier15Path addLineToPoint: CGPointMake(12.1, 9.16)];
                [bezier15Path addLineToPoint: CGPointMake(11.91, 10.26)];
                [bezier15Path addCurveToPoint: CGPointMake(11.9, 10.38) controlPoint1: CGPointMake(11.91, 10.31) controlPoint2: CGPointMake(11.9, 10.35)];
                [bezier15Path addCurveToPoint: CGPointMake(12.14, 10.58) controlPoint1: CGPointMake(11.9, 10.52) controlPoint2: CGPointMake(11.98, 10.58)];
                [bezier15Path addCurveToPoint: CGPointMake(12.33, 10.55) controlPoint1: CGPointMake(12.23, 10.58) controlPoint2: CGPointMake(12.28, 10.57)];
                [bezier15Path addLineToPoint: CGPointMake(12.24, 11.14)];
                [bezier15Path closePath];
                bezier15Path.miterLimit = 4;

                [fillColor4 setFill];
                [bezier15Path fill];


                //// Bezier 16 Drawing
                UIBezierPath* bezier16Path = [UIBezierPath bezierPath];
                [bezier16Path moveToPoint: CGPointMake(9.54, 9.35)];
                [bezier16Path addCurveToPoint: CGPointMake(10.07, 10.09) controlPoint1: CGPointMake(9.54, 9.68) controlPoint2: CGPointMake(9.7, 9.92)];
                [bezier16Path addCurveToPoint: CGPointMake(10.4, 10.39) controlPoint1: CGPointMake(10.36, 10.23) controlPoint2: CGPointMake(10.4, 10.26)];
                [bezier16Path addCurveToPoint: CGPointMake(10, 10.63) controlPoint1: CGPointMake(10.4, 10.56) controlPoint2: CGPointMake(10.27, 10.63)];
                [bezier16Path addCurveToPoint: CGPointMake(9.38, 10.52) controlPoint1: CGPointMake(9.8, 10.63) controlPoint2: CGPointMake(9.61, 10.59)];
                [bezier16Path addLineToPoint: CGPointMake(9.28, 11.14)];
                [bezier16Path addLineToPoint: CGPointMake(9.32, 11.14)];
                [bezier16Path addLineToPoint: CGPointMake(9.44, 11.17)];
                [bezier16Path addCurveToPoint: CGPointMake(9.62, 11.19) controlPoint1: CGPointMake(9.48, 11.18) controlPoint2: CGPointMake(9.54, 11.19)];
                [bezier16Path addCurveToPoint: CGPointMake(10.01, 11.22) controlPoint1: CGPointMake(9.78, 11.2) controlPoint2: CGPointMake(9.92, 11.22)];
                [bezier16Path addCurveToPoint: CGPointMake(11.09, 10.33) controlPoint1: CGPointMake(10.75, 11.22) controlPoint2: CGPointMake(11.09, 10.94)];
                [bezier16Path addCurveToPoint: CGPointMake(10.59, 9.58) controlPoint1: CGPointMake(11.09, 9.96) controlPoint2: CGPointMake(10.95, 9.75)];
                [bezier16Path addCurveToPoint: CGPointMake(10.26, 9.3) controlPoint1: CGPointMake(10.3, 9.45) controlPoint2: CGPointMake(10.26, 9.41)];
                [bezier16Path addCurveToPoint: CGPointMake(10.6, 9.07) controlPoint1: CGPointMake(10.26, 9.15) controlPoint2: CGPointMake(10.37, 9.07)];
                [bezier16Path addCurveToPoint: CGPointMake(11.11, 9.12) controlPoint1: CGPointMake(10.74, 9.07) controlPoint2: CGPointMake(10.93, 9.09)];
                [bezier16Path addLineToPoint: CGPointMake(11.21, 8.5)];
                [bezier16Path addCurveToPoint: CGPointMake(10.59, 8.45) controlPoint1: CGPointMake(11.03, 8.47) controlPoint2: CGPointMake(10.75, 8.45)];
                [bezier16Path addCurveToPoint: CGPointMake(9.54, 9.35) controlPoint1: CGPointMake(9.81, 8.45) controlPoint2: CGPointMake(9.54, 8.85)];
                [bezier16Path closePath];
                bezier16Path.miterLimit = 4;

                [fillColor4 setFill];
                [bezier16Path fill];


                //// Bezier 17 Drawing
                UIBezierPath* bezier17Path = [UIBezierPath bezierPath];
                [bezier17Path moveToPoint: CGPointMake(22.85, 10.54)];
                [bezier17Path addCurveToPoint: CGPointMake(23.41, 9.64) controlPoint1: CGPointMake(23.18, 10.54) controlPoint2: CGPointMake(23.41, 10.17)];
                [bezier17Path addCurveToPoint: CGPointMake(23.05, 9.12) controlPoint1: CGPointMake(23.41, 9.31) controlPoint2: CGPointMake(23.29, 9.12)];
                [bezier17Path addCurveToPoint: CGPointMake(22.51, 10.02) controlPoint1: CGPointMake(22.73, 9.12) controlPoint2: CGPointMake(22.51, 9.49)];
                [bezier17Path addCurveToPoint: CGPointMake(22.85, 10.54) controlPoint1: CGPointMake(22.49, 10.36) controlPoint2: CGPointMake(22.6, 10.54)];
                [bezier17Path closePath];
                [bezier17Path moveToPoint: CGPointMake(23.88, 11.17)];
                [bezier17Path addLineToPoint: CGPointMake(23.21, 11.17)];
                [bezier17Path addLineToPoint: CGPointMake(23.25, 10.9)];
                [bezier17Path addCurveToPoint: CGPointMake(22.6, 11.19) controlPoint1: CGPointMake(23.06, 11.1) controlPoint2: CGPointMake(22.86, 11.19)];
                [bezier17Path addCurveToPoint: CGPointMake(21.75, 10.09) controlPoint1: CGPointMake(22.09, 11.19) controlPoint2: CGPointMake(21.75, 10.76)];
                [bezier17Path addCurveToPoint: CGPointMake(22.89, 8.46) controlPoint1: CGPointMake(21.75, 9.2) controlPoint2: CGPointMake(22.27, 8.46)];
                [bezier17Path addCurveToPoint: CGPointMake(23.56, 8.83) controlPoint1: CGPointMake(23.17, 8.46) controlPoint2: CGPointMake(23.37, 8.58)];
                [bezier17Path addLineToPoint: CGPointMake(23.71, 7.89)];
                [bezier17Path addLineToPoint: CGPointMake(24.41, 7.89)];
                [bezier17Path addLineToPoint: CGPointMake(23.88, 11.17)];
                [bezier17Path closePath];
                bezier17Path.miterLimit = 4;

                [fillColor4 setFill];
                [bezier17Path fill];


                //// Bezier 18 Drawing
                UIBezierPath* bezier18Path = [UIBezierPath bezierPath];
                [bezier18Path moveToPoint: CGPointMake(13.99, 9.52)];
                [bezier18Path addLineToPoint: CGPointMake(13.99, 9.39)];
                [bezier18Path addCurveToPoint: CGPointMake(13.66, 9.05) controlPoint1: CGPointMake(13.99, 9.17) controlPoint2: CGPointMake(13.88, 9.05)];
                [bezier18Path addCurveToPoint: CGPointMake(13.22, 9.53) controlPoint1: CGPointMake(13.44, 9.05) controlPoint2: CGPointMake(13.28, 9.23)];
                [bezier18Path addLineToPoint: CGPointMake(13.99, 9.53)];
                [bezier18Path addLineToPoint: CGPointMake(13.99, 9.52)];
                [bezier18Path closePath];
                [bezier18Path moveToPoint: CGPointMake(14.38, 11.11)];
                [bezier18Path addCurveToPoint: CGPointMake(13.66, 11.22) controlPoint1: CGPointMake(14.14, 11.18) controlPoint2: CGPointMake(13.91, 11.22)];
                [bezier18Path addCurveToPoint: CGPointMake(12.47, 10.03) controlPoint1: CGPointMake(12.88, 11.22) controlPoint2: CGPointMake(12.47, 10.8)];
                [bezier18Path addCurveToPoint: CGPointMake(13.7, 8.43) controlPoint1: CGPointMake(12.47, 9.1) controlPoint2: CGPointMake(12.99, 8.43)];
                [bezier18Path addCurveToPoint: CGPointMake(14.64, 9.41) controlPoint1: CGPointMake(14.27, 8.43) controlPoint2: CGPointMake(14.64, 8.81)];
                [bezier18Path addCurveToPoint: CGPointMake(14.56, 10.07) controlPoint1: CGPointMake(14.64, 9.6) controlPoint2: CGPointMake(14.62, 9.79)];
                [bezier18Path addLineToPoint: CGPointMake(13.17, 10.07)];
                [bezier18Path addCurveToPoint: CGPointMake(13.15, 10.15) controlPoint1: CGPointMake(13.15, 10.11) controlPoint2: CGPointMake(13.15, 10.12)];
                [bezier18Path addCurveToPoint: CGPointMake(13.77, 10.62) controlPoint1: CGPointMake(13.15, 10.45) controlPoint2: CGPointMake(13.35, 10.62)];
                [bezier18Path addCurveToPoint: CGPointMake(14.49, 10.46) controlPoint1: CGPointMake(14.01, 10.62) controlPoint2: CGPointMake(14.24, 10.57)];
                [bezier18Path addLineToPoint: CGPointMake(14.38, 11.11)];
                [bezier18Path closePath];
                bezier18Path.miterLimit = 4;

                [fillColor4 setFill];
                [bezier18Path fill];
            }


            //// Bezier 19 Drawing
            UIBezierPath* bezier19Path = [UIBezierPath bezierPath];
            [bezier19Path moveToPoint: CGPointMake(6.88, 11.17)];
            [bezier19Path addLineToPoint: CGPointMake(6.18, 11.17)];
            [bezier19Path addLineToPoint: CGPointMake(6.59, 8.65)];
            [bezier19Path addLineToPoint: CGPointMake(5.69, 11.17)];
            [bezier19Path addLineToPoint: CGPointMake(5.21, 11.17)];
            [bezier19Path addLineToPoint: CGPointMake(5.16, 8.66)];
            [bezier19Path addLineToPoint: CGPointMake(4.73, 11.17)];
            [bezier19Path addLineToPoint: CGPointMake(4.08, 11.17)];
            [bezier19Path addLineToPoint: CGPointMake(4.63, 7.89)];
            [bezier19Path addLineToPoint: CGPointMake(5.63, 7.89)];
            [bezier19Path addLineToPoint: CGPointMake(5.66, 9.92)];
            [bezier19Path addLineToPoint: CGPointMake(6.34, 7.89)];
            [bezier19Path addLineToPoint: CGPointMake(7.43, 7.89)];
            [bezier19Path addLineToPoint: CGPointMake(6.88, 11.17)];
            [bezier19Path closePath];
            bezier19Path.miterLimit = 4;

            [fillColor4 setFill];
            [bezier19Path fill];


            //// Group 5
            {
                //// Bezier 20 Drawing
                UIBezierPath* bezier20Path = [UIBezierPath bezierPath];
                [bezier20Path moveToPoint: CGPointMake(9.12, 11.17)];
                [bezier20Path addLineToPoint: CGPointMake(8.54, 11.17)];
                [bezier20Path addLineToPoint: CGPointMake(8.55, 10.89)];
                [bezier20Path addCurveToPoint: CGPointMake(7.82, 11.2) controlPoint1: CGPointMake(8.38, 11.11) controlPoint2: CGPointMake(8.15, 11.2)];
                [bezier20Path addCurveToPoint: CGPointMake(7.19, 10.48) controlPoint1: CGPointMake(7.44, 11.2) controlPoint2: CGPointMake(7.19, 10.91)];
                [bezier20Path addCurveToPoint: CGPointMake(8.42, 9.45) controlPoint1: CGPointMake(7.19, 9.83) controlPoint2: CGPointMake(7.63, 9.45)];
                [bezier20Path addCurveToPoint: CGPointMake(8.7, 9.46) controlPoint1: CGPointMake(8.5, 9.45) controlPoint2: CGPointMake(8.6, 9.45)];
                [bezier20Path addCurveToPoint: CGPointMake(8.72, 9.31) controlPoint1: CGPointMake(8.72, 9.4) controlPoint2: CGPointMake(8.72, 9.36)];
                [bezier20Path addCurveToPoint: CGPointMake(8.28, 9.07) controlPoint1: CGPointMake(8.72, 9.13) controlPoint2: CGPointMake(8.61, 9.07)];
                [bezier20Path addCurveToPoint: CGPointMake(7.7, 9.15) controlPoint1: CGPointMake(8.08, 9.07) controlPoint2: CGPointMake(7.85, 9.1)];
                [bezier20Path addLineToPoint: CGPointMake(7.6, 9.18)];
                [bezier20Path addLineToPoint: CGPointMake(7.52, 9.18)];
                [bezier20Path addLineToPoint: CGPointMake(7.62, 8.59)];
                [bezier20Path addCurveToPoint: CGPointMake(8.46, 8.45) controlPoint1: CGPointMake(7.98, 8.49) controlPoint2: CGPointMake(8.2, 8.45)];
                [bezier20Path addCurveToPoint: CGPointMake(9.38, 9.23) controlPoint1: CGPointMake(9.07, 8.45) controlPoint2: CGPointMake(9.38, 8.72)];
                [bezier20Path addCurveToPoint: CGPointMake(9.32, 9.76) controlPoint1: CGPointMake(9.38, 9.37) controlPoint2: CGPointMake(9.36, 9.47)];
                [bezier20Path addLineToPoint: CGPointMake(9.19, 10.7)];
                [bezier20Path addLineToPoint: CGPointMake(9.17, 10.86)];
                [bezier20Path addLineToPoint: CGPointMake(9.16, 11)];
                [bezier20Path addLineToPoint: CGPointMake(9.14, 11.1)];
                [bezier20Path addLineToPoint: CGPointMake(9.12, 11.17)];
                [bezier20Path closePath];
                [bezier20Path moveToPoint: CGPointMake(8.62, 9.98)];
                [bezier20Path addCurveToPoint: CGPointMake(8.45, 9.97) controlPoint1: CGPointMake(8.54, 9.97) controlPoint2: CGPointMake(8.5, 9.97)];
                [bezier20Path addCurveToPoint: CGPointMake(7.85, 10.37) controlPoint1: CGPointMake(8.06, 9.97) controlPoint2: CGPointMake(7.85, 10.11)];
                [bezier20Path addCurveToPoint: CGPointMake(8.1, 10.65) controlPoint1: CGPointMake(7.85, 10.54) controlPoint2: CGPointMake(7.95, 10.65)];
                [bezier20Path addCurveToPoint: CGPointMake(8.62, 9.98) controlPoint1: CGPointMake(8.4, 10.65) controlPoint2: CGPointMake(8.6, 10.37)];
                [bezier20Path closePath];
                bezier20Path.miterLimit = 4;

                [fillColor4 setFill];
                [bezier20Path fill];


                //// Bezier 21 Drawing
                UIBezierPath* bezier21Path = [UIBezierPath bezierPath];
                [bezier21Path moveToPoint: CGPointMake(20.17, 11.17)];
                [bezier21Path addLineToPoint: CGPointMake(19.59, 11.17)];
                [bezier21Path addLineToPoint: CGPointMake(19.6, 10.89)];
                [bezier21Path addCurveToPoint: CGPointMake(18.86, 11.2) controlPoint1: CGPointMake(19.42, 11.11) controlPoint2: CGPointMake(19.18, 11.2)];
                [bezier21Path addCurveToPoint: CGPointMake(18.21, 10.48) controlPoint1: CGPointMake(18.48, 11.2) controlPoint2: CGPointMake(18.21, 10.91)];
                [bezier21Path addCurveToPoint: CGPointMake(19.46, 9.45) controlPoint1: CGPointMake(18.21, 9.83) controlPoint2: CGPointMake(18.67, 9.45)];
                [bezier21Path addCurveToPoint: CGPointMake(19.74, 9.46) controlPoint1: CGPointMake(19.53, 9.45) controlPoint2: CGPointMake(19.64, 9.45)];
                [bezier21Path addCurveToPoint: CGPointMake(19.77, 9.3) controlPoint1: CGPointMake(19.77, 9.38) controlPoint2: CGPointMake(19.77, 9.35)];
                [bezier21Path addCurveToPoint: CGPointMake(19.33, 9.06) controlPoint1: CGPointMake(19.77, 9.12) controlPoint2: CGPointMake(19.66, 9.06)];
                [bezier21Path addCurveToPoint: CGPointMake(18.75, 9.14) controlPoint1: CGPointMake(19.13, 9.06) controlPoint2: CGPointMake(18.9, 9.09)];
                [bezier21Path addLineToPoint: CGPointMake(18.65, 9.17)];
                [bezier21Path addLineToPoint: CGPointMake(18.59, 9.18)];
                [bezier21Path addLineToPoint: CGPointMake(18.69, 8.59)];
                [bezier21Path addCurveToPoint: CGPointMake(19.53, 8.45) controlPoint1: CGPointMake(19.05, 8.49) controlPoint2: CGPointMake(19.27, 8.45)];
                [bezier21Path addCurveToPoint: CGPointMake(20.46, 9.23) controlPoint1: CGPointMake(20.14, 8.45) controlPoint2: CGPointMake(20.46, 8.72)];
                [bezier21Path addCurveToPoint: CGPointMake(20.4, 9.76) controlPoint1: CGPointMake(20.46, 9.37) controlPoint2: CGPointMake(20.45, 9.47)];
                [bezier21Path addLineToPoint: CGPointMake(20.26, 10.71)];
                [bezier21Path addLineToPoint: CGPointMake(20.23, 10.87)];
                [bezier21Path addLineToPoint: CGPointMake(20.2, 11.01)];
                [bezier21Path addLineToPoint: CGPointMake(20.19, 11.1)];
                [bezier21Path addLineToPoint: CGPointMake(20.19, 11.17)];
                [bezier21Path addLineToPoint: CGPointMake(20.17, 11.17)];
                [bezier21Path closePath];
                [bezier21Path moveToPoint: CGPointMake(19.67, 9.98)];
                [bezier21Path addCurveToPoint: CGPointMake(19.5, 9.97) controlPoint1: CGPointMake(19.59, 9.97) controlPoint2: CGPointMake(19.56, 9.97)];
                [bezier21Path addCurveToPoint: CGPointMake(18.9, 10.37) controlPoint1: CGPointMake(19.11, 9.97) controlPoint2: CGPointMake(18.9, 10.11)];
                [bezier21Path addCurveToPoint: CGPointMake(19.15, 10.65) controlPoint1: CGPointMake(18.9, 10.54) controlPoint2: CGPointMake(19, 10.65)];
                [bezier21Path addCurveToPoint: CGPointMake(19.67, 9.98) controlPoint1: CGPointMake(19.44, 10.65) controlPoint2: CGPointMake(19.65, 10.37)];
                [bezier21Path closePath];
                bezier21Path.miterLimit = 4;

                [fillColor4 setFill];
                [bezier21Path fill];


                //// Bezier 22 Drawing
                UIBezierPath* bezier22Path = [UIBezierPath bezierPath];
                [bezier22Path moveToPoint: CGPointMake(22.05, 8.49)];
                [bezier22Path addCurveToPoint: CGPointMake(21.99, 8.48) controlPoint1: CGPointMake(22.04, 8.48) controlPoint2: CGPointMake(22.01, 8.48)];
                [bezier22Path addCurveToPoint: CGPointMake(21.41, 8.91) controlPoint1: CGPointMake(21.76, 8.48) controlPoint2: CGPointMake(21.62, 8.6)];
                [bezier22Path addLineToPoint: CGPointMake(21.47, 8.51)];
                [bezier22Path addLineToPoint: CGPointMake(20.84, 8.51)];
                [bezier22Path addLineToPoint: CGPointMake(20.41, 11.18)];
                [bezier22Path addLineToPoint: CGPointMake(21.12, 11.18)];
                [bezier22Path addCurveToPoint: CGPointMake(21.77, 9.27) controlPoint1: CGPointMake(21.36, 9.54) controlPoint2: CGPointMake(21.43, 9.27)];
                [bezier22Path addLineToPoint: CGPointMake(21.82, 9.27)];
                [bezier22Path addCurveToPoint: CGPointMake(22.08, 8.5) controlPoint1: CGPointMake(21.88, 8.95) controlPoint2: CGPointMake(21.97, 8.71)];
                [bezier22Path addLineToPoint: CGPointMake(22.05, 8.5)];
                [bezier22Path addLineToPoint: CGPointMake(22.05, 8.49)];
                [bezier22Path closePath];
                bezier22Path.miterLimit = 4;

                [fillColor4 setFill];
                [bezier22Path fill];
            }
        }


        //// Group 6
        {
            //// Group 7
            {
                //// Bezier 23 Drawing
                UIBezierPath* bezier23Path = [UIBezierPath bezierPath];
                [bezier23Path moveToPoint: CGPointMake(4.97, 20.62)];
                [bezier23Path addCurveToPoint: CGPointMake(5.13, 20.7) controlPoint1: CGPointMake(5.03, 20.64) controlPoint2: CGPointMake(5.09, 20.67)];
                [bezier23Path addCurveToPoint: CGPointMake(5.22, 20.86) controlPoint1: CGPointMake(5.17, 20.74) controlPoint2: CGPointMake(5.2, 20.79)];
                [bezier23Path addCurveToPoint: CGPointMake(5.25, 21.12) controlPoint1: CGPointMake(5.24, 20.93) controlPoint2: CGPointMake(5.25, 21.01)];
                [bezier23Path addCurveToPoint: CGPointMake(5.22, 21.38) controlPoint1: CGPointMake(5.25, 21.23) controlPoint2: CGPointMake(5.24, 21.31)];
                [bezier23Path addCurveToPoint: CGPointMake(5.1, 21.55) controlPoint1: CGPointMake(5.19, 21.45) controlPoint2: CGPointMake(5.16, 21.51)];
                [bezier23Path addCurveToPoint: CGPointMake(4.87, 21.64) controlPoint1: CGPointMake(5.04, 21.59) controlPoint2: CGPointMake(4.97, 21.62)];
                [bezier23Path addCurveToPoint: CGPointMake(4.51, 21.66) controlPoint1: CGPointMake(4.77, 21.66) controlPoint2: CGPointMake(4.65, 21.66)];
                [bezier23Path addLineToPoint: CGPointMake(4.43, 21.66)];
                [bezier23Path addCurveToPoint: CGPointMake(4.25, 21.66) controlPoint1: CGPointMake(4.38, 21.66) controlPoint2: CGPointMake(4.32, 21.66)];
                [bezier23Path addCurveToPoint: CGPointMake(4.07, 21.63) controlPoint1: CGPointMake(4.19, 21.66) controlPoint2: CGPointMake(4.13, 21.65)];
                [bezier23Path addCurveToPoint: CGPointMake(3.93, 21.56) controlPoint1: CGPointMake(4.01, 21.61) controlPoint2: CGPointMake(3.97, 21.59)];
                [bezier23Path addCurveToPoint: CGPointMake(3.86, 21.42) controlPoint1: CGPointMake(3.89, 21.53) controlPoint2: CGPointMake(3.87, 21.48)];
                [bezier23Path addLineToPoint: CGPointMake(3.86, 21.42)];
                [bezier23Path addCurveToPoint: CGPointMake(3.91, 21.32) controlPoint1: CGPointMake(3.86, 21.38) controlPoint2: CGPointMake(3.88, 21.34)];
                [bezier23Path addCurveToPoint: CGPointMake(4.02, 21.28) controlPoint1: CGPointMake(3.94, 21.29) controlPoint2: CGPointMake(3.98, 21.28)];
                [bezier23Path addLineToPoint: CGPointMake(4.03, 21.28)];
                [bezier23Path addCurveToPoint: CGPointMake(4.11, 21.29) controlPoint1: CGPointMake(4.07, 21.28) controlPoint2: CGPointMake(4.09, 21.29)];
                [bezier23Path addCurveToPoint: CGPointMake(4.16, 21.31) controlPoint1: CGPointMake(4.13, 21.3) controlPoint2: CGPointMake(4.14, 21.3)];
                [bezier23Path addCurveToPoint: CGPointMake(4.2, 21.34) controlPoint1: CGPointMake(4.17, 21.32) controlPoint2: CGPointMake(4.19, 21.33)];
                [bezier23Path addCurveToPoint: CGPointMake(4.26, 21.37) controlPoint1: CGPointMake(4.21, 21.35) controlPoint2: CGPointMake(4.23, 21.36)];
                [bezier23Path addCurveToPoint: CGPointMake(4.37, 21.39) controlPoint1: CGPointMake(4.29, 21.38) controlPoint2: CGPointMake(4.32, 21.38)];
                [bezier23Path addCurveToPoint: CGPointMake(4.54, 21.4) controlPoint1: CGPointMake(4.41, 21.4) controlPoint2: CGPointMake(4.47, 21.4)];
                [bezier23Path addCurveToPoint: CGPointMake(4.72, 21.38) controlPoint1: CGPointMake(4.61, 21.4) controlPoint2: CGPointMake(4.67, 21.4)];
                [bezier23Path addCurveToPoint: CGPointMake(4.83, 21.33) controlPoint1: CGPointMake(4.77, 21.37) controlPoint2: CGPointMake(4.8, 21.35)];
                [bezier23Path addCurveToPoint: CGPointMake(4.88, 21.25) controlPoint1: CGPointMake(4.86, 21.31) controlPoint2: CGPointMake(4.88, 21.28)];
                [bezier23Path addCurveToPoint: CGPointMake(4.9, 21.13) controlPoint1: CGPointMake(4.89, 21.22) controlPoint2: CGPointMake(4.9, 21.18)];
                [bezier23Path addCurveToPoint: CGPointMake(4.87, 20.96) controlPoint1: CGPointMake(4.9, 21.05) controlPoint2: CGPointMake(4.89, 20.99)];
                [bezier23Path addCurveToPoint: CGPointMake(4.75, 20.91) controlPoint1: CGPointMake(4.85, 20.92) controlPoint2: CGPointMake(4.81, 20.91)];
                [bezier23Path addLineToPoint: CGPointMake(4.13, 20.91)];
                [bezier23Path addCurveToPoint: CGPointMake(4, 20.9) controlPoint1: CGPointMake(4.08, 20.91) controlPoint2: CGPointMake(4.04, 20.91)];
                [bezier23Path addCurveToPoint: CGPointMake(3.93, 20.87) controlPoint1: CGPointMake(3.97, 20.9) controlPoint2: CGPointMake(3.94, 20.89)];
                [bezier23Path addCurveToPoint: CGPointMake(3.9, 20.8) controlPoint1: CGPointMake(3.91, 20.85) controlPoint2: CGPointMake(3.9, 20.83)];
                [bezier23Path addCurveToPoint: CGPointMake(3.89, 20.69) controlPoint1: CGPointMake(3.89, 20.77) controlPoint2: CGPointMake(3.89, 20.74)];
                [bezier23Path addLineToPoint: CGPointMake(3.89, 20.01)];
                [bezier23Path addCurveToPoint: CGPointMake(3.93, 19.89) controlPoint1: CGPointMake(3.89, 19.96) controlPoint2: CGPointMake(3.91, 19.92)];
                [bezier23Path addCurveToPoint: CGPointMake(4.09, 19.85) controlPoint1: CGPointMake(3.96, 19.86) controlPoint2: CGPointMake(4.02, 19.85)];
                [bezier23Path addCurveToPoint: CGPointMake(4.2, 19.85) controlPoint1: CGPointMake(4.12, 19.85) controlPoint2: CGPointMake(4.15, 19.85)];
                [bezier23Path addCurveToPoint: CGPointMake(4.36, 19.85) controlPoint1: CGPointMake(4.25, 19.85) controlPoint2: CGPointMake(4.3, 19.85)];
                [bezier23Path addCurveToPoint: CGPointMake(4.55, 19.85) controlPoint1: CGPointMake(4.42, 19.85) controlPoint2: CGPointMake(4.48, 19.85)];
                [bezier23Path addCurveToPoint: CGPointMake(4.73, 19.85) controlPoint1: CGPointMake(4.61, 19.85) controlPoint2: CGPointMake(4.68, 19.85)];
                [bezier23Path addCurveToPoint: CGPointMake(4.87, 19.85) controlPoint1: CGPointMake(4.78, 19.85) controlPoint2: CGPointMake(4.83, 19.85)];
                [bezier23Path addCurveToPoint: CGPointMake(4.94, 19.85) controlPoint1: CGPointMake(4.91, 19.85) controlPoint2: CGPointMake(4.94, 19.85)];
                [bezier23Path addCurveToPoint: CGPointMake(5.01, 19.86) controlPoint1: CGPointMake(4.97, 19.85) controlPoint2: CGPointMake(4.99, 19.85)];
                [bezier23Path addCurveToPoint: CGPointMake(5.08, 19.88) controlPoint1: CGPointMake(5.03, 19.86) controlPoint2: CGPointMake(5.05, 19.87)];
                [bezier23Path addCurveToPoint: CGPointMake(5.13, 19.92) controlPoint1: CGPointMake(5.1, 19.89) controlPoint2: CGPointMake(5.12, 19.91)];
                [bezier23Path addCurveToPoint: CGPointMake(5.15, 19.99) controlPoint1: CGPointMake(5.15, 19.94) controlPoint2: CGPointMake(5.15, 19.96)];
                [bezier23Path addLineToPoint: CGPointMake(5.15, 20)];
                [bezier23Path addCurveToPoint: CGPointMake(5.13, 20.08) controlPoint1: CGPointMake(5.15, 20.04) controlPoint2: CGPointMake(5.14, 20.06)];
                [bezier23Path addCurveToPoint: CGPointMake(5.08, 20.12) controlPoint1: CGPointMake(5.12, 20.1) controlPoint2: CGPointMake(5.1, 20.12)];
                [bezier23Path addCurveToPoint: CGPointMake(5.02, 20.14) controlPoint1: CGPointMake(5.06, 20.13) controlPoint2: CGPointMake(5.04, 20.13)];
                [bezier23Path addCurveToPoint: CGPointMake(4.94, 20.14) controlPoint1: CGPointMake(4.99, 20.14) controlPoint2: CGPointMake(4.97, 20.14)];
                [bezier23Path addLineToPoint: CGPointMake(4.24, 20.14)];
                [bezier23Path addLineToPoint: CGPointMake(4.24, 20.6)];
                [bezier23Path addLineToPoint: CGPointMake(4.72, 20.6)];
                [bezier23Path addCurveToPoint: CGPointMake(4.97, 20.62) controlPoint1: CGPointMake(4.82, 20.6) controlPoint2: CGPointMake(4.91, 20.6)];
                [bezier23Path closePath];
                bezier23Path.miterLimit = 4;

                [fillColor setFill];
                [bezier23Path fill];


                //// Bezier 24 Drawing
                UIBezierPath* bezier24Path = [UIBezierPath bezierPath];
                [bezier24Path moveToPoint: CGPointMake(7.08, 20.61)];
                [bezier24Path addCurveToPoint: CGPointMake(7.2, 20.64) controlPoint1: CGPointMake(7.13, 20.61) controlPoint2: CGPointMake(7.17, 20.62)];
                [bezier24Path addCurveToPoint: CGPointMake(7.26, 20.75) controlPoint1: CGPointMake(7.24, 20.66) controlPoint2: CGPointMake(7.25, 20.7)];
                [bezier24Path addCurveToPoint: CGPointMake(7.21, 20.87) controlPoint1: CGPointMake(7.26, 20.81) controlPoint2: CGPointMake(7.24, 20.85)];
                [bezier24Path addCurveToPoint: CGPointMake(7.09, 20.91) controlPoint1: CGPointMake(7.18, 20.89) controlPoint2: CGPointMake(7.14, 20.9)];
                [bezier24Path addLineToPoint: CGPointMake(7.03, 20.91)];
                [bezier24Path addLineToPoint: CGPointMake(7.03, 21.52)];
                [bezier24Path addCurveToPoint: CGPointMake(7.02, 21.57) controlPoint1: CGPointMake(7.03, 21.53) controlPoint2: CGPointMake(7.03, 21.55)];
                [bezier24Path addCurveToPoint: CGPointMake(6.99, 21.62) controlPoint1: CGPointMake(7.01, 21.59) controlPoint2: CGPointMake(7, 21.61)];
                [bezier24Path addCurveToPoint: CGPointMake(6.94, 21.66) controlPoint1: CGPointMake(6.98, 21.63) controlPoint2: CGPointMake(6.96, 21.65)];
                [bezier24Path addCurveToPoint: CGPointMake(6.85, 21.67) controlPoint1: CGPointMake(6.92, 21.67) controlPoint2: CGPointMake(6.89, 21.67)];
                [bezier24Path addCurveToPoint: CGPointMake(6.77, 21.66) controlPoint1: CGPointMake(6.82, 21.67) controlPoint2: CGPointMake(6.79, 21.67)];
                [bezier24Path addCurveToPoint: CGPointMake(6.72, 21.62) controlPoint1: CGPointMake(6.75, 21.65) controlPoint2: CGPointMake(6.73, 21.64)];
                [bezier24Path addCurveToPoint: CGPointMake(6.69, 21.57) controlPoint1: CGPointMake(6.7, 21.61) controlPoint2: CGPointMake(6.69, 21.59)];
                [bezier24Path addCurveToPoint: CGPointMake(6.68, 21.52) controlPoint1: CGPointMake(6.68, 21.55) controlPoint2: CGPointMake(6.68, 21.54)];
                [bezier24Path addLineToPoint: CGPointMake(6.68, 20.91)];
                [bezier24Path addLineToPoint: CGPointMake(5.98, 20.91)];
                [bezier24Path addCurveToPoint: CGPointMake(5.89, 20.89) controlPoint1: CGPointMake(5.93, 20.91) controlPoint2: CGPointMake(5.9, 20.9)];
                [bezier24Path addCurveToPoint: CGPointMake(5.87, 20.82) controlPoint1: CGPointMake(5.88, 20.88) controlPoint2: CGPointMake(5.87, 20.85)];
                [bezier24Path addLineToPoint: CGPointMake(5.87, 19.99)];
                [bezier24Path addCurveToPoint: CGPointMake(5.88, 19.94) controlPoint1: CGPointMake(5.87, 19.97) controlPoint2: CGPointMake(5.87, 19.96)];
                [bezier24Path addCurveToPoint: CGPointMake(5.91, 19.89) controlPoint1: CGPointMake(5.89, 19.92) controlPoint2: CGPointMake(5.9, 19.9)];
                [bezier24Path addCurveToPoint: CGPointMake(5.97, 19.85) controlPoint1: CGPointMake(5.93, 19.88) controlPoint2: CGPointMake(5.94, 19.86)];
                [bezier24Path addCurveToPoint: CGPointMake(6.05, 19.84) controlPoint1: CGPointMake(5.99, 19.84) controlPoint2: CGPointMake(6.02, 19.84)];
                [bezier24Path addCurveToPoint: CGPointMake(6.19, 19.88) controlPoint1: CGPointMake(6.11, 19.84) controlPoint2: CGPointMake(6.16, 19.85)];
                [bezier24Path addCurveToPoint: CGPointMake(6.23, 20) controlPoint1: CGPointMake(6.22, 19.91) controlPoint2: CGPointMake(6.23, 19.95)];
                [bezier24Path addLineToPoint: CGPointMake(6.23, 20.63)];
                [bezier24Path addLineToPoint: CGPointMake(6.68, 20.63)];
                [bezier24Path addLineToPoint: CGPointMake(6.68, 19.99)];
                [bezier24Path addCurveToPoint: CGPointMake(6.72, 19.88) controlPoint1: CGPointMake(6.68, 19.94) controlPoint2: CGPointMake(6.7, 19.91)];
                [bezier24Path addCurveToPoint: CGPointMake(6.85, 19.84) controlPoint1: CGPointMake(6.75, 19.85) controlPoint2: CGPointMake(6.79, 19.84)];
                [bezier24Path addCurveToPoint: CGPointMake(6.99, 19.88) controlPoint1: CGPointMake(6.91, 19.84) controlPoint2: CGPointMake(6.95, 19.85)];
                [bezier24Path addCurveToPoint: CGPointMake(7.04, 19.99) controlPoint1: CGPointMake(7.02, 19.91) controlPoint2: CGPointMake(7.04, 19.94)];
                [bezier24Path addLineToPoint: CGPointMake(7.04, 20.63)];
                [bezier24Path addLineToPoint: CGPointMake(7.08, 20.61)];
                [bezier24Path addLineToPoint: CGPointMake(7.08, 20.61)];
                [bezier24Path closePath];
                bezier24Path.miterLimit = 4;

                [fillColor setFill];
                [bezier24Path fill];


                //// Bezier 25 Drawing
                UIBezierPath* bezier25Path = [UIBezierPath bezierPath];
                [bezier25Path moveToPoint: CGPointMake(8.61, 20.54)];
                [bezier25Path addCurveToPoint: CGPointMake(8.9, 20.58) controlPoint1: CGPointMake(8.73, 20.54) controlPoint2: CGPointMake(8.82, 20.55)];
                [bezier25Path addCurveToPoint: CGPointMake(9.09, 20.69) controlPoint1: CGPointMake(8.98, 20.61) controlPoint2: CGPointMake(9.04, 20.64)];
                [bezier25Path addCurveToPoint: CGPointMake(9.19, 20.87) controlPoint1: CGPointMake(9.14, 20.74) controlPoint2: CGPointMake(9.17, 20.8)];
                [bezier25Path addCurveToPoint: CGPointMake(9.22, 21.12) controlPoint1: CGPointMake(9.21, 20.94) controlPoint2: CGPointMake(9.22, 21.02)];
                [bezier25Path addCurveToPoint: CGPointMake(9.18, 21.36) controlPoint1: CGPointMake(9.22, 21.21) controlPoint2: CGPointMake(9.21, 21.29)];
                [bezier25Path addCurveToPoint: CGPointMake(9.07, 21.54) controlPoint1: CGPointMake(9.16, 21.43) controlPoint2: CGPointMake(9.12, 21.49)];
                [bezier25Path addCurveToPoint: CGPointMake(8.86, 21.65) controlPoint1: CGPointMake(9.02, 21.59) controlPoint2: CGPointMake(8.95, 21.62)];
                [bezier25Path addCurveToPoint: CGPointMake(8.53, 21.69) controlPoint1: CGPointMake(8.77, 21.67) controlPoint2: CGPointMake(8.66, 21.69)];
                [bezier25Path addCurveToPoint: CGPointMake(8.26, 21.66) controlPoint1: CGPointMake(8.43, 21.69) controlPoint2: CGPointMake(8.34, 21.68)];
                [bezier25Path addCurveToPoint: CGPointMake(8.05, 21.57) controlPoint1: CGPointMake(8.18, 21.64) controlPoint2: CGPointMake(8.11, 21.61)];
                [bezier25Path addCurveToPoint: CGPointMake(7.91, 21.41) controlPoint1: CGPointMake(7.99, 21.53) controlPoint2: CGPointMake(7.94, 21.48)];
                [bezier25Path addCurveToPoint: CGPointMake(7.86, 21.17) controlPoint1: CGPointMake(7.88, 21.34) controlPoint2: CGPointMake(7.86, 21.27)];
                [bezier25Path addLineToPoint: CGPointMake(7.86, 19.98)];
                [bezier25Path addCurveToPoint: CGPointMake(7.87, 19.93) controlPoint1: CGPointMake(7.86, 19.96) controlPoint2: CGPointMake(7.86, 19.94)];
                [bezier25Path addCurveToPoint: CGPointMake(7.9, 19.88) controlPoint1: CGPointMake(7.88, 19.91) controlPoint2: CGPointMake(7.89, 19.89)];
                [bezier25Path addCurveToPoint: CGPointMake(7.96, 19.84) controlPoint1: CGPointMake(7.92, 19.87) controlPoint2: CGPointMake(7.93, 19.85)];
                [bezier25Path addCurveToPoint: CGPointMake(8.05, 19.83) controlPoint1: CGPointMake(7.99, 19.83) controlPoint2: CGPointMake(8.01, 19.83)];
                [bezier25Path addCurveToPoint: CGPointMake(8.18, 19.87) controlPoint1: CGPointMake(8.11, 19.83) controlPoint2: CGPointMake(8.15, 19.84)];
                [bezier25Path addCurveToPoint: CGPointMake(8.22, 19.98) controlPoint1: CGPointMake(8.21, 19.9) controlPoint2: CGPointMake(8.22, 19.93)];
                [bezier25Path addLineToPoint: CGPointMake(8.22, 20.57)];
                [bezier25Path addCurveToPoint: CGPointMake(8.45, 20.55) controlPoint1: CGPointMake(8.31, 20.56) controlPoint2: CGPointMake(8.38, 20.55)];
                [bezier25Path addCurveToPoint: CGPointMake(8.61, 20.54) controlPoint1: CGPointMake(8.51, 20.54) controlPoint2: CGPointMake(8.56, 20.54)];
                [bezier25Path closePath];
                [bezier25Path moveToPoint: CGPointMake(8.88, 21.1)];
                [bezier25Path addCurveToPoint: CGPointMake(8.86, 20.97) controlPoint1: CGPointMake(8.88, 21.05) controlPoint2: CGPointMake(8.88, 21)];
                [bezier25Path addCurveToPoint: CGPointMake(8.81, 20.89) controlPoint1: CGPointMake(8.85, 20.93) controlPoint2: CGPointMake(8.83, 20.91)];
                [bezier25Path addCurveToPoint: CGPointMake(8.71, 20.85) controlPoint1: CGPointMake(8.79, 20.87) controlPoint2: CGPointMake(8.75, 20.86)];
                [bezier25Path addCurveToPoint: CGPointMake(8.55, 20.84) controlPoint1: CGPointMake(8.67, 20.84) controlPoint2: CGPointMake(8.61, 20.84)];
                [bezier25Path addCurveToPoint: CGPointMake(8.43, 20.84) controlPoint1: CGPointMake(8.5, 20.84) controlPoint2: CGPointMake(8.46, 20.84)];
                [bezier25Path addCurveToPoint: CGPointMake(8.35, 20.84) controlPoint1: CGPointMake(8.4, 20.84) controlPoint2: CGPointMake(8.37, 20.84)];
                [bezier25Path addCurveToPoint: CGPointMake(8.29, 20.85) controlPoint1: CGPointMake(8.33, 20.84) controlPoint2: CGPointMake(8.31, 20.84)];
                [bezier25Path addCurveToPoint: CGPointMake(8.23, 20.86) controlPoint1: CGPointMake(8.27, 20.85) controlPoint2: CGPointMake(8.25, 20.86)];
                [bezier25Path addLineToPoint: CGPointMake(8.23, 21.09)];
                [bezier25Path addCurveToPoint: CGPointMake(8.25, 21.22) controlPoint1: CGPointMake(8.23, 21.14) controlPoint2: CGPointMake(8.24, 21.19)];
                [bezier25Path addCurveToPoint: CGPointMake(8.3, 21.31) controlPoint1: CGPointMake(8.26, 21.25) controlPoint2: CGPointMake(8.28, 21.28)];
                [bezier25Path addCurveToPoint: CGPointMake(8.4, 21.36) controlPoint1: CGPointMake(8.32, 21.34) controlPoint2: CGPointMake(8.36, 21.35)];
                [bezier25Path addCurveToPoint: CGPointMake(8.56, 21.38) controlPoint1: CGPointMake(8.44, 21.37) controlPoint2: CGPointMake(8.49, 21.38)];
                [bezier25Path addCurveToPoint: CGPointMake(8.71, 21.37) controlPoint1: CGPointMake(8.62, 21.38) controlPoint2: CGPointMake(8.67, 21.38)];
                [bezier25Path addCurveToPoint: CGPointMake(8.81, 21.33) controlPoint1: CGPointMake(8.75, 21.36) controlPoint2: CGPointMake(8.78, 21.35)];
                [bezier25Path addCurveToPoint: CGPointMake(8.87, 21.25) controlPoint1: CGPointMake(8.84, 21.31) controlPoint2: CGPointMake(8.86, 21.28)];
                [bezier25Path addCurveToPoint: CGPointMake(8.88, 21.1) controlPoint1: CGPointMake(8.87, 21.21) controlPoint2: CGPointMake(8.88, 21.16)];
                [bezier25Path closePath];
                bezier25Path.miterLimit = 4;

                [fillColor setFill];
                [bezier25Path fill];


                //// Bezier 26 Drawing
                UIBezierPath* bezier26Path = [UIBezierPath bezierPath];
                [bezier26Path moveToPoint: CGPointMake(10.47, 19.82)];
                [bezier26Path addCurveToPoint: CGPointMake(10.81, 19.85) controlPoint1: CGPointMake(10.6, 19.82) controlPoint2: CGPointMake(10.72, 19.83)];
                [bezier26Path addCurveToPoint: CGPointMake(11.03, 19.94) controlPoint1: CGPointMake(10.9, 19.87) controlPoint2: CGPointMake(10.98, 19.9)];
                [bezier26Path addCurveToPoint: CGPointMake(11.16, 20.1) controlPoint1: CGPointMake(11.09, 19.98) controlPoint2: CGPointMake(11.13, 20.03)];
                [bezier26Path addCurveToPoint: CGPointMake(11.2, 20.34) controlPoint1: CGPointMake(11.19, 20.17) controlPoint2: CGPointMake(11.2, 20.25)];
                [bezier26Path addLineToPoint: CGPointMake(11.2, 20.35)];
                [bezier26Path addCurveToPoint: CGPointMake(11.17, 20.61) controlPoint1: CGPointMake(11.2, 20.45) controlPoint2: CGPointMake(11.19, 20.54)];
                [bezier26Path addCurveToPoint: CGPointMake(11.07, 20.78) controlPoint1: CGPointMake(11.15, 20.68) controlPoint2: CGPointMake(11.12, 20.73)];
                [bezier26Path addCurveToPoint: CGPointMake(10.89, 20.87) controlPoint1: CGPointMake(11.02, 20.82) controlPoint2: CGPointMake(10.96, 20.85)];
                [bezier26Path addCurveToPoint: CGPointMake(10.61, 20.9) controlPoint1: CGPointMake(10.82, 20.89) controlPoint2: CGPointMake(10.72, 20.9)];
                [bezier26Path addCurveToPoint: CGPointMake(10.37, 20.9) controlPoint1: CGPointMake(10.52, 20.9) controlPoint2: CGPointMake(10.44, 20.9)];
                [bezier26Path addCurveToPoint: CGPointMake(10.22, 20.93) controlPoint1: CGPointMake(10.31, 20.9) controlPoint2: CGPointMake(10.26, 20.91)];
                [bezier26Path addCurveToPoint: CGPointMake(10.15, 21.02) controlPoint1: CGPointMake(10.18, 20.95) controlPoint2: CGPointMake(10.16, 20.98)];
                [bezier26Path addCurveToPoint: CGPointMake(10.13, 21.19) controlPoint1: CGPointMake(10.13, 21.06) controlPoint2: CGPointMake(10.13, 21.12)];
                [bezier26Path addLineToPoint: CGPointMake(10.13, 21.36)];
                [bezier26Path addLineToPoint: CGPointMake(11, 21.36)];
                [bezier26Path addCurveToPoint: CGPointMake(11.06, 21.37) controlPoint1: CGPointMake(11.02, 21.36) controlPoint2: CGPointMake(11.04, 21.36)];
                [bezier26Path addCurveToPoint: CGPointMake(11.12, 21.4) controlPoint1: CGPointMake(11.08, 21.38) controlPoint2: CGPointMake(11.1, 21.39)];
                [bezier26Path addCurveToPoint: CGPointMake(11.16, 21.45) controlPoint1: CGPointMake(11.14, 21.41) controlPoint2: CGPointMake(11.15, 21.43)];
                [bezier26Path addCurveToPoint: CGPointMake(11.18, 21.52) controlPoint1: CGPointMake(11.17, 21.47) controlPoint2: CGPointMake(11.18, 21.49)];
                [bezier26Path addCurveToPoint: CGPointMake(11.16, 21.59) controlPoint1: CGPointMake(11.18, 21.55) controlPoint2: CGPointMake(11.18, 21.57)];
                [bezier26Path addCurveToPoint: CGPointMake(11.11, 21.63) controlPoint1: CGPointMake(11.15, 21.61) controlPoint2: CGPointMake(11.14, 21.62)];
                [bezier26Path addCurveToPoint: CGPointMake(11.05, 21.66) controlPoint1: CGPointMake(11.09, 21.64) controlPoint2: CGPointMake(11.07, 21.65)];
                [bezier26Path addCurveToPoint: CGPointMake(10.98, 21.67) controlPoint1: CGPointMake(11.03, 21.67) controlPoint2: CGPointMake(11, 21.67)];
                [bezier26Path addLineToPoint: CGPointMake(9.96, 21.67)];
                [bezier26Path addCurveToPoint: CGPointMake(9.8, 21.63) controlPoint1: CGPointMake(9.88, 21.67) controlPoint2: CGPointMake(9.83, 21.66)];
                [bezier26Path addCurveToPoint: CGPointMake(9.76, 21.51) controlPoint1: CGPointMake(9.77, 21.6) controlPoint2: CGPointMake(9.76, 21.56)];
                [bezier26Path addLineToPoint: CGPointMake(9.76, 21.14)];
                [bezier26Path addCurveToPoint: CGPointMake(9.8, 20.89) controlPoint1: CGPointMake(9.76, 21.04) controlPoint2: CGPointMake(9.77, 20.96)];
                [bezier26Path addCurveToPoint: CGPointMake(9.91, 20.73) controlPoint1: CGPointMake(9.83, 20.82) controlPoint2: CGPointMake(9.86, 20.77)];
                [bezier26Path addCurveToPoint: CGPointMake(10.09, 20.64) controlPoint1: CGPointMake(9.96, 20.69) controlPoint2: CGPointMake(10.02, 20.66)];
                [bezier26Path addCurveToPoint: CGPointMake(10.33, 20.61) controlPoint1: CGPointMake(10.16, 20.62) controlPoint2: CGPointMake(10.24, 20.61)];
                [bezier26Path addLineToPoint: CGPointMake(10.59, 20.6)];
                [bezier26Path addCurveToPoint: CGPointMake(10.71, 20.59) controlPoint1: CGPointMake(10.64, 20.6) controlPoint2: CGPointMake(10.68, 20.6)];
                [bezier26Path addCurveToPoint: CGPointMake(10.79, 20.55) controlPoint1: CGPointMake(10.74, 20.58) controlPoint2: CGPointMake(10.76, 20.57)];
                [bezier26Path addCurveToPoint: CGPointMake(10.83, 20.48) controlPoint1: CGPointMake(10.81, 20.53) controlPoint2: CGPointMake(10.82, 20.51)];
                [bezier26Path addCurveToPoint: CGPointMake(10.84, 20.37) controlPoint1: CGPointMake(10.84, 20.45) controlPoint2: CGPointMake(10.84, 20.41)];
                [bezier26Path addLineToPoint: CGPointMake(10.84, 20.36)];
                [bezier26Path addCurveToPoint: CGPointMake(10.82, 20.24) controlPoint1: CGPointMake(10.84, 20.31) controlPoint2: CGPointMake(10.84, 20.27)];
                [bezier26Path addCurveToPoint: CGPointMake(10.76, 20.17) controlPoint1: CGPointMake(10.81, 20.21) controlPoint2: CGPointMake(10.79, 20.18)];
                [bezier26Path addCurveToPoint: CGPointMake(10.64, 20.13) controlPoint1: CGPointMake(10.73, 20.15) controlPoint2: CGPointMake(10.7, 20.14)];
                [bezier26Path addCurveToPoint: CGPointMake(10.44, 20.12) controlPoint1: CGPointMake(10.59, 20.12) controlPoint2: CGPointMake(10.53, 20.12)];
                [bezier26Path addCurveToPoint: CGPointMake(10.27, 20.13) controlPoint1: CGPointMake(10.38, 20.12) controlPoint2: CGPointMake(10.32, 20.12)];
                [bezier26Path addCurveToPoint: CGPointMake(10.14, 20.16) controlPoint1: CGPointMake(10.22, 20.14) controlPoint2: CGPointMake(10.18, 20.15)];
                [bezier26Path addCurveToPoint: CGPointMake(10.05, 20.19) controlPoint1: CGPointMake(10.11, 20.17) controlPoint2: CGPointMake(10.08, 20.18)];
                [bezier26Path addCurveToPoint: CGPointMake(9.95, 20.21) controlPoint1: CGPointMake(10.02, 20.2) controlPoint2: CGPointMake(9.99, 20.21)];
                [bezier26Path addLineToPoint: CGPointMake(9.96, 20.21)];
                [bezier26Path addCurveToPoint: CGPointMake(9.85, 20.16) controlPoint1: CGPointMake(9.92, 20.21) controlPoint2: CGPointMake(9.88, 20.19)];
                [bezier26Path addCurveToPoint: CGPointMake(9.81, 20.05) controlPoint1: CGPointMake(9.82, 20.13) controlPoint2: CGPointMake(9.81, 20.1)];
                [bezier26Path addLineToPoint: CGPointMake(9.81, 20.04)];
                [bezier26Path addCurveToPoint: CGPointMake(9.86, 19.94) controlPoint1: CGPointMake(9.81, 20) controlPoint2: CGPointMake(9.83, 19.96)];
                [bezier26Path addCurveToPoint: CGPointMake(10, 19.87) controlPoint1: CGPointMake(9.9, 19.91) controlPoint2: CGPointMake(9.94, 19.89)];
                [bezier26Path addCurveToPoint: CGPointMake(10.21, 19.83) controlPoint1: CGPointMake(10.06, 19.85) controlPoint2: CGPointMake(10.13, 19.84)];
                [bezier26Path addCurveToPoint: CGPointMake(10.47, 19.82) controlPoint1: CGPointMake(10.29, 19.83) controlPoint2: CGPointMake(10.37, 19.82)];
                [bezier26Path closePath];
                bezier26Path.miterLimit = 4;

                [fillColor setFill];
                [bezier26Path fill];


                //// Bezier 27 Drawing
                UIBezierPath* bezier27Path = [UIBezierPath bezierPath];
                [bezier27Path moveToPoint: CGPointMake(13.72, 19.82)];
                [bezier27Path addCurveToPoint: CGPointMake(14.06, 19.85) controlPoint1: CGPointMake(13.85, 19.82) controlPoint2: CGPointMake(13.97, 19.83)];
                [bezier27Path addCurveToPoint: CGPointMake(14.29, 19.94) controlPoint1: CGPointMake(14.15, 19.87) controlPoint2: CGPointMake(14.22, 19.9)];
                [bezier27Path addCurveToPoint: CGPointMake(14.41, 20.1) controlPoint1: CGPointMake(14.34, 19.98) controlPoint2: CGPointMake(14.39, 20.03)];
                [bezier27Path addCurveToPoint: CGPointMake(14.45, 20.34) controlPoint1: CGPointMake(14.44, 20.17) controlPoint2: CGPointMake(14.45, 20.25)];
                [bezier27Path addLineToPoint: CGPointMake(14.45, 20.35)];
                [bezier27Path addCurveToPoint: CGPointMake(14.42, 20.61) controlPoint1: CGPointMake(14.45, 20.45) controlPoint2: CGPointMake(14.44, 20.54)];
                [bezier27Path addCurveToPoint: CGPointMake(14.32, 20.78) controlPoint1: CGPointMake(14.4, 20.68) controlPoint2: CGPointMake(14.37, 20.73)];
                [bezier27Path addCurveToPoint: CGPointMake(14.14, 20.87) controlPoint1: CGPointMake(14.28, 20.82) controlPoint2: CGPointMake(14.21, 20.85)];
                [bezier27Path addCurveToPoint: CGPointMake(13.86, 20.9) controlPoint1: CGPointMake(14.07, 20.89) controlPoint2: CGPointMake(13.97, 20.9)];
                [bezier27Path addCurveToPoint: CGPointMake(13.62, 20.9) controlPoint1: CGPointMake(13.76, 20.9) controlPoint2: CGPointMake(13.69, 20.9)];
                [bezier27Path addCurveToPoint: CGPointMake(13.47, 20.93) controlPoint1: CGPointMake(13.56, 20.9) controlPoint2: CGPointMake(13.51, 20.91)];
                [bezier27Path addCurveToPoint: CGPointMake(13.39, 21.02) controlPoint1: CGPointMake(13.43, 20.95) controlPoint2: CGPointMake(13.41, 20.98)];
                [bezier27Path addCurveToPoint: CGPointMake(13.37, 21.19) controlPoint1: CGPointMake(13.38, 21.06) controlPoint2: CGPointMake(13.37, 21.12)];
                [bezier27Path addLineToPoint: CGPointMake(13.37, 21.36)];
                [bezier27Path addLineToPoint: CGPointMake(14.26, 21.36)];
                [bezier27Path addCurveToPoint: CGPointMake(14.33, 21.37) controlPoint1: CGPointMake(14.28, 21.36) controlPoint2: CGPointMake(14.3, 21.36)];
                [bezier27Path addCurveToPoint: CGPointMake(14.39, 21.4) controlPoint1: CGPointMake(14.35, 21.38) controlPoint2: CGPointMake(14.37, 21.39)];
                [bezier27Path addCurveToPoint: CGPointMake(14.43, 21.45) controlPoint1: CGPointMake(14.41, 21.41) controlPoint2: CGPointMake(14.43, 21.43)];
                [bezier27Path addCurveToPoint: CGPointMake(14.45, 21.52) controlPoint1: CGPointMake(14.44, 21.47) controlPoint2: CGPointMake(14.45, 21.49)];
                [bezier27Path addCurveToPoint: CGPointMake(14.44, 21.59) controlPoint1: CGPointMake(14.45, 21.55) controlPoint2: CGPointMake(14.45, 21.57)];
                [bezier27Path addCurveToPoint: CGPointMake(14.39, 21.63) controlPoint1: CGPointMake(14.42, 21.61) controlPoint2: CGPointMake(14.41, 21.62)];
                [bezier27Path addCurveToPoint: CGPointMake(14.33, 21.66) controlPoint1: CGPointMake(14.37, 21.64) controlPoint2: CGPointMake(14.35, 21.65)];
                [bezier27Path addCurveToPoint: CGPointMake(14.26, 21.67) controlPoint1: CGPointMake(14.31, 21.67) controlPoint2: CGPointMake(14.28, 21.67)];
                [bezier27Path addLineToPoint: CGPointMake(13.22, 21.67)];
                [bezier27Path addCurveToPoint: CGPointMake(13.07, 21.63) controlPoint1: CGPointMake(13.14, 21.67) controlPoint2: CGPointMake(13.09, 21.66)];
                [bezier27Path addCurveToPoint: CGPointMake(13.02, 21.51) controlPoint1: CGPointMake(13.04, 21.6) controlPoint2: CGPointMake(13.02, 21.56)];
                [bezier27Path addLineToPoint: CGPointMake(13.02, 21.14)];
                [bezier27Path addCurveToPoint: CGPointMake(13.06, 20.89) controlPoint1: CGPointMake(13.02, 21.04) controlPoint2: CGPointMake(13.03, 20.96)];
                [bezier27Path addCurveToPoint: CGPointMake(13.17, 20.73) controlPoint1: CGPointMake(13.09, 20.82) controlPoint2: CGPointMake(13.12, 20.77)];
                [bezier27Path addCurveToPoint: CGPointMake(13.35, 20.64) controlPoint1: CGPointMake(13.22, 20.69) controlPoint2: CGPointMake(13.28, 20.66)];
                [bezier27Path addCurveToPoint: CGPointMake(13.59, 20.61) controlPoint1: CGPointMake(13.42, 20.62) controlPoint2: CGPointMake(13.5, 20.61)];
                [bezier27Path addLineToPoint: CGPointMake(13.85, 20.6)];
                [bezier27Path addCurveToPoint: CGPointMake(13.97, 20.59) controlPoint1: CGPointMake(13.9, 20.6) controlPoint2: CGPointMake(13.94, 20.6)];
                [bezier27Path addCurveToPoint: CGPointMake(14.05, 20.55) controlPoint1: CGPointMake(14, 20.58) controlPoint2: CGPointMake(14.03, 20.57)];
                [bezier27Path addCurveToPoint: CGPointMake(14.1, 20.48) controlPoint1: CGPointMake(14.07, 20.53) controlPoint2: CGPointMake(14.09, 20.51)];
                [bezier27Path addCurveToPoint: CGPointMake(14.11, 20.37) controlPoint1: CGPointMake(14.11, 20.45) controlPoint2: CGPointMake(14.11, 20.41)];
                [bezier27Path addLineToPoint: CGPointMake(14.11, 20.36)];
                [bezier27Path addCurveToPoint: CGPointMake(14.09, 20.24) controlPoint1: CGPointMake(14.11, 20.31) controlPoint2: CGPointMake(14.1, 20.27)];
                [bezier27Path addCurveToPoint: CGPointMake(14.03, 20.17) controlPoint1: CGPointMake(14.08, 20.21) controlPoint2: CGPointMake(14.06, 20.18)];
                [bezier27Path addCurveToPoint: CGPointMake(13.91, 20.13) controlPoint1: CGPointMake(14, 20.15) controlPoint2: CGPointMake(13.96, 20.14)];
                [bezier27Path addCurveToPoint: CGPointMake(13.71, 20.12) controlPoint1: CGPointMake(13.86, 20.12) controlPoint2: CGPointMake(13.79, 20.12)];
                [bezier27Path addCurveToPoint: CGPointMake(13.54, 20.13) controlPoint1: CGPointMake(13.65, 20.12) controlPoint2: CGPointMake(13.59, 20.12)];
                [bezier27Path addCurveToPoint: CGPointMake(13.41, 20.16) controlPoint1: CGPointMake(13.49, 20.14) controlPoint2: CGPointMake(13.45, 20.15)];
                [bezier27Path addCurveToPoint: CGPointMake(13.32, 20.19) controlPoint1: CGPointMake(13.38, 20.17) controlPoint2: CGPointMake(13.35, 20.18)];
                [bezier27Path addCurveToPoint: CGPointMake(13.22, 20.21) controlPoint1: CGPointMake(13.29, 20.2) controlPoint2: CGPointMake(13.26, 20.21)];
                [bezier27Path addLineToPoint: CGPointMake(13.21, 20.21)];
                [bezier27Path addCurveToPoint: CGPointMake(13.1, 20.16) controlPoint1: CGPointMake(13.17, 20.21) controlPoint2: CGPointMake(13.13, 20.19)];
                [bezier27Path addCurveToPoint: CGPointMake(13.06, 20.05) controlPoint1: CGPointMake(13.07, 20.13) controlPoint2: CGPointMake(13.06, 20.1)];
                [bezier27Path addLineToPoint: CGPointMake(13.06, 20.04)];
                [bezier27Path addCurveToPoint: CGPointMake(13.11, 19.94) controlPoint1: CGPointMake(13.06, 20) controlPoint2: CGPointMake(13.08, 19.96)];
                [bezier27Path addCurveToPoint: CGPointMake(13.25, 19.87) controlPoint1: CGPointMake(13.15, 19.91) controlPoint2: CGPointMake(13.19, 19.89)];
                [bezier27Path addCurveToPoint: CGPointMake(13.46, 19.83) controlPoint1: CGPointMake(13.31, 19.85) controlPoint2: CGPointMake(13.38, 19.84)];
                [bezier27Path addCurveToPoint: CGPointMake(13.72, 19.82) controlPoint1: CGPointMake(13.55, 19.83) controlPoint2: CGPointMake(13.64, 19.82)];
                [bezier27Path closePath];
                bezier27Path.miterLimit = 4;

                [fillColor setFill];
                [bezier27Path fill];


                //// Bezier 28 Drawing
                UIBezierPath* bezier28Path = [UIBezierPath bezierPath];
                [bezier28Path moveToPoint: CGPointMake(16.45, 21.17)];
                [bezier28Path addCurveToPoint: CGPointMake(16.42, 21.38) controlPoint1: CGPointMake(16.45, 21.25) controlPoint2: CGPointMake(16.44, 21.32)];
                [bezier28Path addCurveToPoint: CGPointMake(16.32, 21.54) controlPoint1: CGPointMake(16.4, 21.44) controlPoint2: CGPointMake(16.37, 21.5)];
                [bezier28Path addCurveToPoint: CGPointMake(16.11, 21.64) controlPoint1: CGPointMake(16.27, 21.58) controlPoint2: CGPointMake(16.2, 21.62)];
                [bezier28Path addCurveToPoint: CGPointMake(15.74, 21.67) controlPoint1: CGPointMake(16.02, 21.66) controlPoint2: CGPointMake(15.89, 21.67)];
                [bezier28Path addCurveToPoint: CGPointMake(15.39, 21.63) controlPoint1: CGPointMake(15.59, 21.67) controlPoint2: CGPointMake(15.47, 21.66)];
                [bezier28Path addCurveToPoint: CGPointMake(15.19, 21.53) controlPoint1: CGPointMake(15.3, 21.6) controlPoint2: CGPointMake(15.23, 21.57)];
                [bezier28Path addCurveToPoint: CGPointMake(15.09, 21.37) controlPoint1: CGPointMake(15.14, 21.49) controlPoint2: CGPointMake(15.11, 21.43)];
                [bezier28Path addCurveToPoint: CGPointMake(15.06, 21.17) controlPoint1: CGPointMake(15.08, 21.31) controlPoint2: CGPointMake(15.06, 21.24)];
                [bezier28Path addCurveToPoint: CGPointMake(15.07, 21.02) controlPoint1: CGPointMake(15.06, 21.11) controlPoint2: CGPointMake(15.06, 21.06)];
                [bezier28Path addCurveToPoint: CGPointMake(15.1, 20.92) controlPoint1: CGPointMake(15.07, 20.98) controlPoint2: CGPointMake(15.08, 20.95)];
                [bezier28Path addCurveToPoint: CGPointMake(15.18, 20.84) controlPoint1: CGPointMake(15.12, 20.89) controlPoint2: CGPointMake(15.14, 20.87)];
                [bezier28Path addCurveToPoint: CGPointMake(15.34, 20.75) controlPoint1: CGPointMake(15.22, 20.82) controlPoint2: CGPointMake(15.27, 20.79)];
                [bezier28Path addCurveToPoint: CGPointMake(15.19, 20.69) controlPoint1: CGPointMake(15.27, 20.73) controlPoint2: CGPointMake(15.22, 20.71)];
                [bezier28Path addCurveToPoint: CGPointMake(15.11, 20.62) controlPoint1: CGPointMake(15.15, 20.67) controlPoint2: CGPointMake(15.13, 20.65)];
                [bezier28Path addCurveToPoint: CGPointMake(15.08, 20.51) controlPoint1: CGPointMake(15.1, 20.59) controlPoint2: CGPointMake(15.09, 20.55)];
                [bezier28Path addCurveToPoint: CGPointMake(15.07, 20.33) controlPoint1: CGPointMake(15.07, 20.46) controlPoint2: CGPointMake(15.07, 20.4)];
                [bezier28Path addCurveToPoint: CGPointMake(15.11, 20.09) controlPoint1: CGPointMake(15.07, 20.23) controlPoint2: CGPointMake(15.08, 20.15)];
                [bezier28Path addCurveToPoint: CGPointMake(15.23, 19.93) controlPoint1: CGPointMake(15.13, 20.02) controlPoint2: CGPointMake(15.17, 19.97)];
                [bezier28Path addCurveToPoint: CGPointMake(15.44, 19.85) controlPoint1: CGPointMake(15.29, 19.89) controlPoint2: CGPointMake(15.35, 19.86)];
                [bezier28Path addCurveToPoint: CGPointMake(15.76, 19.83) controlPoint1: CGPointMake(15.53, 19.83) controlPoint2: CGPointMake(15.63, 19.83)];
                [bezier28Path addCurveToPoint: CGPointMake(16.09, 19.86) controlPoint1: CGPointMake(15.89, 19.83) controlPoint2: CGPointMake(16, 19.84)];
                [bezier28Path addCurveToPoint: CGPointMake(16.31, 19.94) controlPoint1: CGPointMake(16.18, 19.88) controlPoint2: CGPointMake(16.25, 19.91)];
                [bezier28Path addCurveToPoint: CGPointMake(16.43, 20.09) controlPoint1: CGPointMake(16.36, 19.98) controlPoint2: CGPointMake(16.41, 20.03)];
                [bezier28Path addCurveToPoint: CGPointMake(16.47, 20.33) controlPoint1: CGPointMake(16.45, 20.16) controlPoint2: CGPointMake(16.47, 20.23)];
                [bezier28Path addCurveToPoint: CGPointMake(16.47, 20.51) controlPoint1: CGPointMake(16.47, 20.4) controlPoint2: CGPointMake(16.47, 20.47)];
                [bezier28Path addCurveToPoint: CGPointMake(16.44, 20.62) controlPoint1: CGPointMake(16.47, 20.56) controlPoint2: CGPointMake(16.46, 20.59)];
                [bezier28Path addCurveToPoint: CGPointMake(16.36, 20.69) controlPoint1: CGPointMake(16.42, 20.65) controlPoint2: CGPointMake(16.4, 20.67)];
                [bezier28Path addCurveToPoint: CGPointMake(16.22, 20.75) controlPoint1: CGPointMake(16.33, 20.71) controlPoint2: CGPointMake(16.28, 20.73)];
                [bezier28Path addCurveToPoint: CGPointMake(16.37, 20.82) controlPoint1: CGPointMake(16.28, 20.78) controlPoint2: CGPointMake(16.33, 20.8)];
                [bezier28Path addCurveToPoint: CGPointMake(16.44, 20.89) controlPoint1: CGPointMake(16.4, 20.84) controlPoint2: CGPointMake(16.43, 20.87)];
                [bezier28Path addCurveToPoint: CGPointMake(16.47, 21) controlPoint1: CGPointMake(16.46, 20.92) controlPoint2: CGPointMake(16.47, 20.95)];
                [bezier28Path addCurveToPoint: CGPointMake(16.45, 21.17) controlPoint1: CGPointMake(16.44, 21.05) controlPoint2: CGPointMake(16.45, 21.1)];
                [bezier28Path closePath];
                [bezier28Path moveToPoint: CGPointMake(16.09, 21.14)];
                [bezier28Path addCurveToPoint: CGPointMake(16.08, 21.11) controlPoint1: CGPointMake(16.09, 21.14) controlPoint2: CGPointMake(16.08, 21.13)];
                [bezier28Path addCurveToPoint: CGPointMake(16.04, 21.05) controlPoint1: CGPointMake(16.07, 21.09) controlPoint2: CGPointMake(16.06, 21.07)];
                [bezier28Path addCurveToPoint: CGPointMake(15.94, 20.97) controlPoint1: CGPointMake(16.02, 21.02) controlPoint2: CGPointMake(15.98, 21)];
                [bezier28Path addCurveToPoint: CGPointMake(15.75, 20.89) controlPoint1: CGPointMake(15.89, 20.94) controlPoint2: CGPointMake(15.83, 20.91)];
                [bezier28Path addCurveToPoint: CGPointMake(15.56, 20.98) controlPoint1: CGPointMake(15.67, 20.92) controlPoint2: CGPointMake(15.61, 20.95)];
                [bezier28Path addCurveToPoint: CGPointMake(15.46, 21.07) controlPoint1: CGPointMake(15.51, 21.01) controlPoint2: CGPointMake(15.48, 21.04)];
                [bezier28Path addCurveToPoint: CGPointMake(15.41, 21.14) controlPoint1: CGPointMake(15.43, 21.1) controlPoint2: CGPointMake(15.42, 21.12)];
                [bezier28Path addCurveToPoint: CGPointMake(15.4, 21.18) controlPoint1: CGPointMake(15.4, 21.16) controlPoint2: CGPointMake(15.4, 21.17)];
                [bezier28Path addLineToPoint: CGPointMake(15.4, 21.18)];
                [bezier28Path addCurveToPoint: CGPointMake(15.41, 21.27) controlPoint1: CGPointMake(15.4, 21.22) controlPoint2: CGPointMake(15.4, 21.25)];
                [bezier28Path addCurveToPoint: CGPointMake(15.46, 21.33) controlPoint1: CGPointMake(15.42, 21.3) controlPoint2: CGPointMake(15.44, 21.32)];
                [bezier28Path addCurveToPoint: CGPointMake(15.57, 21.36) controlPoint1: CGPointMake(15.48, 21.34) controlPoint2: CGPointMake(15.52, 21.36)];
                [bezier28Path addCurveToPoint: CGPointMake(15.75, 21.37) controlPoint1: CGPointMake(15.62, 21.37) controlPoint2: CGPointMake(15.68, 21.37)];
                [bezier28Path addCurveToPoint: CGPointMake(15.91, 21.36) controlPoint1: CGPointMake(15.81, 21.37) controlPoint2: CGPointMake(15.87, 21.37)];
                [bezier28Path addCurveToPoint: CGPointMake(16.01, 21.33) controlPoint1: CGPointMake(15.95, 21.35) controlPoint2: CGPointMake(15.99, 21.34)];
                [bezier28Path addCurveToPoint: CGPointMake(16.07, 21.27) controlPoint1: CGPointMake(16.04, 21.31) controlPoint2: CGPointMake(16.05, 21.29)];
                [bezier28Path addCurveToPoint: CGPointMake(16.09, 21.18) controlPoint1: CGPointMake(16.08, 21.25) controlPoint2: CGPointMake(16.09, 21.21)];
                [bezier28Path addLineToPoint: CGPointMake(16.09, 21.14)];
                [bezier28Path closePath];
                [bezier28Path moveToPoint: CGPointMake(15.75, 20.61)];
                [bezier28Path addCurveToPoint: CGPointMake(15.94, 20.56) controlPoint1: CGPointMake(15.83, 20.59) controlPoint2: CGPointMake(15.9, 20.57)];
                [bezier28Path addCurveToPoint: CGPointMake(16.04, 20.51) controlPoint1: CGPointMake(15.99, 20.55) controlPoint2: CGPointMake(16.02, 20.53)];
                [bezier28Path addCurveToPoint: CGPointMake(16.08, 20.43) controlPoint1: CGPointMake(16.06, 20.49) controlPoint2: CGPointMake(16.07, 20.46)];
                [bezier28Path addCurveToPoint: CGPointMake(16.09, 20.29) controlPoint1: CGPointMake(16.08, 20.4) controlPoint2: CGPointMake(16.09, 20.35)];
                [bezier28Path addCurveToPoint: CGPointMake(16.07, 20.2) controlPoint1: CGPointMake(16.09, 20.25) controlPoint2: CGPointMake(16.08, 20.22)];
                [bezier28Path addCurveToPoint: CGPointMake(16, 20.15) controlPoint1: CGPointMake(16.05, 20.18) controlPoint2: CGPointMake(16.03, 20.16)];
                [bezier28Path addCurveToPoint: CGPointMake(15.89, 20.13) controlPoint1: CGPointMake(15.97, 20.14) controlPoint2: CGPointMake(15.93, 20.13)];
                [bezier28Path addCurveToPoint: CGPointMake(15.75, 20.12) controlPoint1: CGPointMake(15.85, 20.13) controlPoint2: CGPointMake(15.8, 20.12)];
                [bezier28Path addCurveToPoint: CGPointMake(15.6, 20.13) controlPoint1: CGPointMake(15.69, 20.12) controlPoint2: CGPointMake(15.64, 20.12)];
                [bezier28Path addCurveToPoint: CGPointMake(15.49, 20.16) controlPoint1: CGPointMake(15.56, 20.13) controlPoint2: CGPointMake(15.52, 20.15)];
                [bezier28Path addCurveToPoint: CGPointMake(15.44, 20.23) controlPoint1: CGPointMake(15.47, 20.17) controlPoint2: CGPointMake(15.45, 20.2)];
                [bezier28Path addCurveToPoint: CGPointMake(15.42, 20.35) controlPoint1: CGPointMake(15.42, 20.26) controlPoint2: CGPointMake(15.42, 20.3)];
                [bezier28Path addCurveToPoint: CGPointMake(15.42, 20.46) controlPoint1: CGPointMake(15.42, 20.4) controlPoint2: CGPointMake(15.42, 20.43)];
                [bezier28Path addCurveToPoint: CGPointMake(15.46, 20.53) controlPoint1: CGPointMake(15.43, 20.49) controlPoint2: CGPointMake(15.44, 20.51)];
                [bezier28Path addCurveToPoint: CGPointMake(15.56, 20.57) controlPoint1: CGPointMake(15.48, 20.55) controlPoint2: CGPointMake(15.52, 20.56)];
                [bezier28Path addCurveToPoint: CGPointMake(15.75, 20.61) controlPoint1: CGPointMake(15.61, 20.57) controlPoint2: CGPointMake(15.67, 20.58)];
                [bezier28Path closePath];
                bezier28Path.miterLimit = 4;

                [fillColor setFill];
                [bezier28Path fill];


                //// Bezier 29 Drawing
                UIBezierPath* bezier29Path = [UIBezierPath bezierPath];
                [bezier29Path moveToPoint: CGPointMake(18.45, 21.17)];
                [bezier29Path addLineToPoint: CGPointMake(18.45, 21.17)];
                [bezier29Path addCurveToPoint: CGPointMake(18.4, 21.41) controlPoint1: CGPointMake(18.45, 21.27) controlPoint2: CGPointMake(18.43, 21.35)];
                [bezier29Path addCurveToPoint: CGPointMake(18.26, 21.56) controlPoint1: CGPointMake(18.37, 21.47) controlPoint2: CGPointMake(18.32, 21.53)];
                [bezier29Path addCurveToPoint: CGPointMake(18.04, 21.65) controlPoint1: CGPointMake(18.2, 21.6) controlPoint2: CGPointMake(18.12, 21.63)];
                [bezier29Path addCurveToPoint: CGPointMake(17.76, 21.67) controlPoint1: CGPointMake(17.96, 21.67) controlPoint2: CGPointMake(17.86, 21.67)];
                [bezier29Path addCurveToPoint: CGPointMake(17.47, 21.64) controlPoint1: CGPointMake(17.65, 21.67) controlPoint2: CGPointMake(17.56, 21.66)];
                [bezier29Path addCurveToPoint: CGPointMake(17.26, 21.55) controlPoint1: CGPointMake(17.39, 21.62) controlPoint2: CGPointMake(17.32, 21.59)];
                [bezier29Path addCurveToPoint: CGPointMake(17.12, 21.4) controlPoint1: CGPointMake(17.2, 21.51) controlPoint2: CGPointMake(17.16, 21.46)];
                [bezier29Path addCurveToPoint: CGPointMake(17.07, 21.18) controlPoint1: CGPointMake(17.09, 21.34) controlPoint2: CGPointMake(17.07, 21.27)];
                [bezier29Path addLineToPoint: CGPointMake(17.07, 20.3)];
                [bezier29Path addCurveToPoint: CGPointMake(17.25, 19.94) controlPoint1: CGPointMake(17.07, 20.14) controlPoint2: CGPointMake(17.13, 20.02)];
                [bezier29Path addCurveToPoint: CGPointMake(17.76, 19.82) controlPoint1: CGPointMake(17.37, 19.86) controlPoint2: CGPointMake(17.54, 19.82)];
                [bezier29Path addCurveToPoint: CGPointMake(18.04, 19.85) controlPoint1: CGPointMake(17.86, 19.82) controlPoint2: CGPointMake(17.95, 19.83)];
                [bezier29Path addCurveToPoint: CGPointMake(18.25, 19.94) controlPoint1: CGPointMake(18.12, 19.87) controlPoint2: CGPointMake(18.2, 19.9)];
                [bezier29Path addCurveToPoint: CGPointMake(18.39, 20.09) controlPoint1: CGPointMake(18.31, 19.98) controlPoint2: CGPointMake(18.36, 20.03)];
                [bezier29Path addCurveToPoint: CGPointMake(18.44, 20.31) controlPoint1: CGPointMake(18.42, 20.15) controlPoint2: CGPointMake(18.44, 20.22)];
                [bezier29Path addLineToPoint: CGPointMake(18.44, 21.17)];
                [bezier29Path addLineToPoint: CGPointMake(18.45, 21.17)];
                [bezier29Path closePath];
                [bezier29Path moveToPoint: CGPointMake(18.09, 20.32)];
                [bezier29Path addCurveToPoint: CGPointMake(18.01, 20.17) controlPoint1: CGPointMake(18.09, 20.26) controlPoint2: CGPointMake(18.06, 20.2)];
                [bezier29Path addCurveToPoint: CGPointMake(17.76, 20.12) controlPoint1: CGPointMake(17.96, 20.13) controlPoint2: CGPointMake(17.87, 20.12)];
                [bezier29Path addCurveToPoint: CGPointMake(17.51, 20.17) controlPoint1: CGPointMake(17.65, 20.12) controlPoint2: CGPointMake(17.57, 20.14)];
                [bezier29Path addCurveToPoint: CGPointMake(17.43, 20.31) controlPoint1: CGPointMake(17.46, 20.21) controlPoint2: CGPointMake(17.43, 20.25)];
                [bezier29Path addLineToPoint: CGPointMake(17.43, 21.18)];
                [bezier29Path addCurveToPoint: CGPointMake(17.51, 21.33) controlPoint1: CGPointMake(17.43, 21.25) controlPoint2: CGPointMake(17.46, 21.3)];
                [bezier29Path addCurveToPoint: CGPointMake(17.75, 21.37) controlPoint1: CGPointMake(17.56, 21.36) controlPoint2: CGPointMake(17.65, 21.37)];
                [bezier29Path addCurveToPoint: CGPointMake(17.99, 21.32) controlPoint1: CGPointMake(17.85, 21.37) controlPoint2: CGPointMake(17.93, 21.36)];
                [bezier29Path addCurveToPoint: CGPointMake(18.08, 21.17) controlPoint1: CGPointMake(18.05, 21.29) controlPoint2: CGPointMake(18.08, 21.24)];
                [bezier29Path addLineToPoint: CGPointMake(18.08, 20.32)];
                [bezier29Path addLineToPoint: CGPointMake(18.09, 20.32)];
                [bezier29Path closePath];
                bezier29Path.miterLimit = 4;

                [fillColor setFill];
                [bezier29Path fill];


                //// Bezier 30 Drawing
                UIBezierPath* bezier30Path = [UIBezierPath bezierPath];
                [bezier30Path moveToPoint: CGPointMake(20.45, 21.17)];
                [bezier30Path addLineToPoint: CGPointMake(20.45, 21.17)];
                [bezier30Path addCurveToPoint: CGPointMake(20.4, 21.41) controlPoint1: CGPointMake(20.46, 21.27) controlPoint2: CGPointMake(20.43, 21.35)];
                [bezier30Path addCurveToPoint: CGPointMake(20.26, 21.56) controlPoint1: CGPointMake(20.37, 21.47) controlPoint2: CGPointMake(20.32, 21.53)];
                [bezier30Path addCurveToPoint: CGPointMake(20.04, 21.65) controlPoint1: CGPointMake(20.2, 21.6) controlPoint2: CGPointMake(20.13, 21.63)];
                [bezier30Path addCurveToPoint: CGPointMake(19.76, 21.67) controlPoint1: CGPointMake(19.95, 21.67) controlPoint2: CGPointMake(19.86, 21.67)];
                [bezier30Path addCurveToPoint: CGPointMake(19.47, 21.64) controlPoint1: CGPointMake(19.65, 21.67) controlPoint2: CGPointMake(19.56, 21.66)];
                [bezier30Path addCurveToPoint: CGPointMake(19.25, 21.55) controlPoint1: CGPointMake(19.38, 21.62) controlPoint2: CGPointMake(19.32, 21.59)];
                [bezier30Path addCurveToPoint: CGPointMake(19.12, 21.4) controlPoint1: CGPointMake(19.19, 21.51) controlPoint2: CGPointMake(19.15, 21.46)];
                [bezier30Path addCurveToPoint: CGPointMake(19.07, 21.18) controlPoint1: CGPointMake(19.09, 21.34) controlPoint2: CGPointMake(19.07, 21.27)];
                [bezier30Path addLineToPoint: CGPointMake(19.07, 20.3)];
                [bezier30Path addCurveToPoint: CGPointMake(19.25, 19.94) controlPoint1: CGPointMake(19.07, 20.14) controlPoint2: CGPointMake(19.13, 20.02)];
                [bezier30Path addCurveToPoint: CGPointMake(19.76, 19.82) controlPoint1: CGPointMake(19.37, 19.86) controlPoint2: CGPointMake(19.54, 19.82)];
                [bezier30Path addCurveToPoint: CGPointMake(20.04, 19.85) controlPoint1: CGPointMake(19.86, 19.82) controlPoint2: CGPointMake(19.95, 19.83)];
                [bezier30Path addCurveToPoint: CGPointMake(20.25, 19.94) controlPoint1: CGPointMake(20.12, 19.87) controlPoint2: CGPointMake(20.2, 19.9)];
                [bezier30Path addCurveToPoint: CGPointMake(20.39, 20.09) controlPoint1: CGPointMake(20.31, 19.98) controlPoint2: CGPointMake(20.36, 20.03)];
                [bezier30Path addCurveToPoint: CGPointMake(20.44, 20.31) controlPoint1: CGPointMake(20.42, 20.15) controlPoint2: CGPointMake(20.44, 20.22)];
                [bezier30Path addLineToPoint: CGPointMake(20.44, 21.17)];
                [bezier30Path addLineToPoint: CGPointMake(20.45, 21.17)];
                [bezier30Path closePath];
                [bezier30Path moveToPoint: CGPointMake(20.09, 20.32)];
                [bezier30Path addCurveToPoint: CGPointMake(20.01, 20.17) controlPoint1: CGPointMake(20.09, 20.26) controlPoint2: CGPointMake(20.06, 20.2)];
                [bezier30Path addCurveToPoint: CGPointMake(19.76, 20.12) controlPoint1: CGPointMake(19.95, 20.13) controlPoint2: CGPointMake(19.87, 20.12)];
                [bezier30Path addCurveToPoint: CGPointMake(19.51, 20.17) controlPoint1: CGPointMake(19.65, 20.12) controlPoint2: CGPointMake(19.57, 20.14)];
                [bezier30Path addCurveToPoint: CGPointMake(19.43, 20.31) controlPoint1: CGPointMake(19.46, 20.21) controlPoint2: CGPointMake(19.43, 20.25)];
                [bezier30Path addLineToPoint: CGPointMake(19.43, 21.18)];
                [bezier30Path addCurveToPoint: CGPointMake(19.51, 21.33) controlPoint1: CGPointMake(19.43, 21.25) controlPoint2: CGPointMake(19.46, 21.3)];
                [bezier30Path addCurveToPoint: CGPointMake(19.75, 21.37) controlPoint1: CGPointMake(19.56, 21.36) controlPoint2: CGPointMake(19.64, 21.37)];
                [bezier30Path addCurveToPoint: CGPointMake(19.99, 21.32) controlPoint1: CGPointMake(19.85, 21.37) controlPoint2: CGPointMake(19.94, 21.36)];
                [bezier30Path addCurveToPoint: CGPointMake(20.08, 21.17) controlPoint1: CGPointMake(20.05, 21.29) controlPoint2: CGPointMake(20.08, 21.24)];
                [bezier30Path addLineToPoint: CGPointMake(20.08, 20.32)];
                [bezier30Path addLineToPoint: CGPointMake(20.09, 20.32)];
                [bezier30Path closePath];
                bezier30Path.miterLimit = 4;

                [fillColor setFill];
                [bezier30Path fill];


                //// Bezier 31 Drawing
                UIBezierPath* bezier31Path = [UIBezierPath bezierPath];
                [bezier31Path moveToPoint: CGPointMake(23.4, 20.62)];
                [bezier31Path addCurveToPoint: CGPointMake(23.56, 20.7) controlPoint1: CGPointMake(23.47, 20.64) controlPoint2: CGPointMake(23.52, 20.67)];
                [bezier31Path addCurveToPoint: CGPointMake(23.65, 20.86) controlPoint1: CGPointMake(23.6, 20.74) controlPoint2: CGPointMake(23.63, 20.79)];
                [bezier31Path addCurveToPoint: CGPointMake(23.68, 21.12) controlPoint1: CGPointMake(23.67, 20.93) controlPoint2: CGPointMake(23.68, 21.01)];
                [bezier31Path addCurveToPoint: CGPointMake(23.65, 21.38) controlPoint1: CGPointMake(23.68, 21.23) controlPoint2: CGPointMake(23.67, 21.31)];
                [bezier31Path addCurveToPoint: CGPointMake(23.53, 21.55) controlPoint1: CGPointMake(23.63, 21.45) controlPoint2: CGPointMake(23.59, 21.51)];
                [bezier31Path addCurveToPoint: CGPointMake(23.3, 21.64) controlPoint1: CGPointMake(23.47, 21.59) controlPoint2: CGPointMake(23.4, 21.62)];
                [bezier31Path addCurveToPoint: CGPointMake(22.94, 21.66) controlPoint1: CGPointMake(23.2, 21.66) controlPoint2: CGPointMake(23.08, 21.66)];
                [bezier31Path addLineToPoint: CGPointMake(22.86, 21.66)];
                [bezier31Path addCurveToPoint: CGPointMake(22.68, 21.66) controlPoint1: CGPointMake(22.81, 21.66) controlPoint2: CGPointMake(22.74, 21.66)];
                [bezier31Path addCurveToPoint: CGPointMake(22.5, 21.63) controlPoint1: CGPointMake(22.61, 21.66) controlPoint2: CGPointMake(22.55, 21.65)];
                [bezier31Path addCurveToPoint: CGPointMake(22.36, 21.56) controlPoint1: CGPointMake(22.44, 21.61) controlPoint2: CGPointMake(22.4, 21.59)];
                [bezier31Path addCurveToPoint: CGPointMake(22.3, 21.42) controlPoint1: CGPointMake(22.32, 21.53) controlPoint2: CGPointMake(22.3, 21.48)];
                [bezier31Path addLineToPoint: CGPointMake(22.3, 21.42)];
                [bezier31Path addCurveToPoint: CGPointMake(22.35, 21.32) controlPoint1: CGPointMake(22.3, 21.38) controlPoint2: CGPointMake(22.32, 21.34)];
                [bezier31Path addCurveToPoint: CGPointMake(22.46, 21.28) controlPoint1: CGPointMake(22.38, 21.29) controlPoint2: CGPointMake(22.42, 21.28)];
                [bezier31Path addLineToPoint: CGPointMake(22.47, 21.28)];
                [bezier31Path addCurveToPoint: CGPointMake(22.55, 21.29) controlPoint1: CGPointMake(22.5, 21.28) controlPoint2: CGPointMake(22.53, 21.29)];
                [bezier31Path addCurveToPoint: CGPointMake(22.6, 21.31) controlPoint1: CGPointMake(22.57, 21.3) controlPoint2: CGPointMake(22.58, 21.3)];
                [bezier31Path addCurveToPoint: CGPointMake(22.64, 21.34) controlPoint1: CGPointMake(22.61, 21.32) controlPoint2: CGPointMake(22.63, 21.33)];
                [bezier31Path addCurveToPoint: CGPointMake(22.7, 21.37) controlPoint1: CGPointMake(22.66, 21.35) controlPoint2: CGPointMake(22.67, 21.36)];
                [bezier31Path addCurveToPoint: CGPointMake(22.81, 21.39) controlPoint1: CGPointMake(22.73, 21.38) controlPoint2: CGPointMake(22.76, 21.38)];
                [bezier31Path addCurveToPoint: CGPointMake(22.99, 21.4) controlPoint1: CGPointMake(22.86, 21.4) controlPoint2: CGPointMake(22.92, 21.4)];
                [bezier31Path addCurveToPoint: CGPointMake(23.17, 21.38) controlPoint1: CGPointMake(23.06, 21.4) controlPoint2: CGPointMake(23.12, 21.4)];
                [bezier31Path addCurveToPoint: CGPointMake(23.28, 21.33) controlPoint1: CGPointMake(23.21, 21.37) controlPoint2: CGPointMake(23.25, 21.35)];
                [bezier31Path addCurveToPoint: CGPointMake(23.33, 21.25) controlPoint1: CGPointMake(23.31, 21.31) controlPoint2: CGPointMake(23.32, 21.28)];
                [bezier31Path addCurveToPoint: CGPointMake(23.34, 21.13) controlPoint1: CGPointMake(23.34, 21.22) controlPoint2: CGPointMake(23.34, 21.18)];
                [bezier31Path addCurveToPoint: CGPointMake(23.31, 20.96) controlPoint1: CGPointMake(23.34, 21.05) controlPoint2: CGPointMake(23.33, 20.99)];
                [bezier31Path addCurveToPoint: CGPointMake(23.19, 20.91) controlPoint1: CGPointMake(23.29, 20.92) controlPoint2: CGPointMake(23.25, 20.91)];
                [bezier31Path addLineToPoint: CGPointMake(22.58, 20.91)];
                [bezier31Path addCurveToPoint: CGPointMake(22.46, 20.9) controlPoint1: CGPointMake(22.53, 20.91) controlPoint2: CGPointMake(22.49, 20.91)];
                [bezier31Path addCurveToPoint: CGPointMake(22.39, 20.87) controlPoint1: CGPointMake(22.43, 20.9) controlPoint2: CGPointMake(22.4, 20.89)];
                [bezier31Path addCurveToPoint: CGPointMake(22.35, 20.8) controlPoint1: CGPointMake(22.37, 20.85) controlPoint2: CGPointMake(22.36, 20.83)];
                [bezier31Path addCurveToPoint: CGPointMake(22.34, 20.69) controlPoint1: CGPointMake(22.35, 20.77) controlPoint2: CGPointMake(22.34, 20.74)];
                [bezier31Path addLineToPoint: CGPointMake(22.34, 20.01)];
                [bezier31Path addCurveToPoint: CGPointMake(22.38, 19.89) controlPoint1: CGPointMake(22.34, 19.96) controlPoint2: CGPointMake(22.36, 19.92)];
                [bezier31Path addCurveToPoint: CGPointMake(22.53, 19.85) controlPoint1: CGPointMake(22.41, 19.86) controlPoint2: CGPointMake(22.46, 19.85)];
                [bezier31Path addCurveToPoint: CGPointMake(22.64, 19.85) controlPoint1: CGPointMake(22.55, 19.85) controlPoint2: CGPointMake(22.59, 19.85)];
                [bezier31Path addCurveToPoint: CGPointMake(22.8, 19.85) controlPoint1: CGPointMake(22.69, 19.85) controlPoint2: CGPointMake(22.74, 19.85)];
                [bezier31Path addCurveToPoint: CGPointMake(22.99, 19.85) controlPoint1: CGPointMake(22.86, 19.85) controlPoint2: CGPointMake(22.92, 19.85)];
                [bezier31Path addCurveToPoint: CGPointMake(23.17, 19.85) controlPoint1: CGPointMake(23.06, 19.85) controlPoint2: CGPointMake(23.12, 19.85)];
                [bezier31Path addCurveToPoint: CGPointMake(23.31, 19.85) controlPoint1: CGPointMake(23.23, 19.85) controlPoint2: CGPointMake(23.27, 19.85)];
                [bezier31Path addCurveToPoint: CGPointMake(23.38, 19.85) controlPoint1: CGPointMake(23.35, 19.85) controlPoint2: CGPointMake(23.38, 19.85)];
                [bezier31Path addCurveToPoint: CGPointMake(23.45, 19.86) controlPoint1: CGPointMake(23.4, 19.85) controlPoint2: CGPointMake(23.42, 19.85)];
                [bezier31Path addCurveToPoint: CGPointMake(23.52, 19.88) controlPoint1: CGPointMake(23.47, 19.86) controlPoint2: CGPointMake(23.5, 19.87)];
                [bezier31Path addCurveToPoint: CGPointMake(23.57, 19.92) controlPoint1: CGPointMake(23.54, 19.89) controlPoint2: CGPointMake(23.56, 19.91)];
                [bezier31Path addCurveToPoint: CGPointMake(23.59, 19.99) controlPoint1: CGPointMake(23.58, 19.94) controlPoint2: CGPointMake(23.59, 19.96)];
                [bezier31Path addLineToPoint: CGPointMake(23.59, 20)];
                [bezier31Path addCurveToPoint: CGPointMake(23.57, 20.08) controlPoint1: CGPointMake(23.59, 20.04) controlPoint2: CGPointMake(23.58, 20.06)];
                [bezier31Path addCurveToPoint: CGPointMake(23.53, 20.12) controlPoint1: CGPointMake(23.56, 20.1) controlPoint2: CGPointMake(23.55, 20.12)];
                [bezier31Path addCurveToPoint: CGPointMake(23.46, 20.14) controlPoint1: CGPointMake(23.51, 20.13) controlPoint2: CGPointMake(23.49, 20.13)];
                [bezier31Path addCurveToPoint: CGPointMake(23.38, 20.14) controlPoint1: CGPointMake(23.43, 20.14) controlPoint2: CGPointMake(23.41, 20.14)];
                [bezier31Path addLineToPoint: CGPointMake(22.67, 20.14)];
                [bezier31Path addLineToPoint: CGPointMake(22.67, 20.6)];
                [bezier31Path addLineToPoint: CGPointMake(23.15, 20.6)];
                [bezier31Path addCurveToPoint: CGPointMake(23.4, 20.62) controlPoint1: CGPointMake(23.25, 20.6) controlPoint2: CGPointMake(23.34, 20.6)];
                [bezier31Path closePath];
                bezier31Path.miterLimit = 4;

                [fillColor setFill];
                [bezier31Path fill];


                //// Bezier 32 Drawing
                UIBezierPath* bezier32Path = [UIBezierPath bezierPath];
                [bezier32Path moveToPoint: CGPointMake(25.67, 21.17)];
                [bezier32Path addLineToPoint: CGPointMake(25.67, 21.17)];
                [bezier32Path addCurveToPoint: CGPointMake(25.62, 21.41) controlPoint1: CGPointMake(25.67, 21.27) controlPoint2: CGPointMake(25.65, 21.35)];
                [bezier32Path addCurveToPoint: CGPointMake(25.48, 21.56) controlPoint1: CGPointMake(25.59, 21.47) controlPoint2: CGPointMake(25.54, 21.53)];
                [bezier32Path addCurveToPoint: CGPointMake(25.26, 21.65) controlPoint1: CGPointMake(25.42, 21.6) controlPoint2: CGPointMake(25.35, 21.63)];
                [bezier32Path addCurveToPoint: CGPointMake(24.98, 21.67) controlPoint1: CGPointMake(25.17, 21.67) controlPoint2: CGPointMake(25.08, 21.67)];
                [bezier32Path addCurveToPoint: CGPointMake(24.7, 21.64) controlPoint1: CGPointMake(24.88, 21.67) controlPoint2: CGPointMake(24.78, 21.66)];
                [bezier32Path addCurveToPoint: CGPointMake(24.48, 21.55) controlPoint1: CGPointMake(24.61, 21.62) controlPoint2: CGPointMake(24.54, 21.59)];
                [bezier32Path addCurveToPoint: CGPointMake(24.35, 21.4) controlPoint1: CGPointMake(24.42, 21.51) controlPoint2: CGPointMake(24.38, 21.46)];
                [bezier32Path addCurveToPoint: CGPointMake(24.31, 21.18) controlPoint1: CGPointMake(24.32, 21.34) controlPoint2: CGPointMake(24.31, 21.27)];
                [bezier32Path addLineToPoint: CGPointMake(24.31, 20.3)];
                [bezier32Path addCurveToPoint: CGPointMake(24.49, 19.94) controlPoint1: CGPointMake(24.31, 20.14) controlPoint2: CGPointMake(24.37, 20.02)];
                [bezier32Path addCurveToPoint: CGPointMake(25, 19.82) controlPoint1: CGPointMake(24.61, 19.86) controlPoint2: CGPointMake(24.78, 19.82)];
                [bezier32Path addCurveToPoint: CGPointMake(25.28, 19.85) controlPoint1: CGPointMake(25.1, 19.82) controlPoint2: CGPointMake(25.2, 19.83)];
                [bezier32Path addCurveToPoint: CGPointMake(25.5, 19.94) controlPoint1: CGPointMake(25.36, 19.87) controlPoint2: CGPointMake(25.44, 19.9)];
                [bezier32Path addCurveToPoint: CGPointMake(25.64, 20.09) controlPoint1: CGPointMake(25.56, 19.98) controlPoint2: CGPointMake(25.6, 20.03)];
                [bezier32Path addCurveToPoint: CGPointMake(25.69, 20.31) controlPoint1: CGPointMake(25.67, 20.15) controlPoint2: CGPointMake(25.69, 20.22)];
                [bezier32Path addLineToPoint: CGPointMake(25.69, 21.17)];
                [bezier32Path addLineToPoint: CGPointMake(25.67, 21.17)];
                [bezier32Path closePath];
                [bezier32Path moveToPoint: CGPointMake(25.31, 20.32)];
                [bezier32Path addCurveToPoint: CGPointMake(25.23, 20.17) controlPoint1: CGPointMake(25.31, 20.26) controlPoint2: CGPointMake(25.28, 20.2)];
                [bezier32Path addCurveToPoint: CGPointMake(24.98, 20.12) controlPoint1: CGPointMake(25.17, 20.13) controlPoint2: CGPointMake(25.09, 20.12)];
                [bezier32Path addCurveToPoint: CGPointMake(24.73, 20.17) controlPoint1: CGPointMake(24.87, 20.12) controlPoint2: CGPointMake(24.79, 20.14)];
                [bezier32Path addCurveToPoint: CGPointMake(24.65, 20.31) controlPoint1: CGPointMake(24.68, 20.21) controlPoint2: CGPointMake(24.65, 20.25)];
                [bezier32Path addLineToPoint: CGPointMake(24.65, 21.18)];
                [bezier32Path addCurveToPoint: CGPointMake(24.73, 21.33) controlPoint1: CGPointMake(24.65, 21.25) controlPoint2: CGPointMake(24.68, 21.3)];
                [bezier32Path addCurveToPoint: CGPointMake(24.97, 21.37) controlPoint1: CGPointMake(24.78, 21.36) controlPoint2: CGPointMake(24.86, 21.37)];
                [bezier32Path addCurveToPoint: CGPointMake(25.21, 21.32) controlPoint1: CGPointMake(25.08, 21.37) controlPoint2: CGPointMake(25.16, 21.36)];
                [bezier32Path addCurveToPoint: CGPointMake(25.3, 21.17) controlPoint1: CGPointMake(25.27, 21.29) controlPoint2: CGPointMake(25.3, 21.24)];
                [bezier32Path addLineToPoint: CGPointMake(25.3, 20.32)];
                [bezier32Path addLineToPoint: CGPointMake(25.31, 20.32)];
                [bezier32Path closePath];
                bezier32Path.miterLimit = 4;

                [fillColor setFill];
                [bezier32Path fill];


                //// Bezier 33 Drawing
                UIBezierPath* bezier33Path = [UIBezierPath bezierPath];
                [bezier33Path moveToPoint: CGPointMake(26.99, 19.82)];
                [bezier33Path addCurveToPoint: CGPointMake(27.33, 19.85) controlPoint1: CGPointMake(27.12, 19.82) controlPoint2: CGPointMake(27.24, 19.83)];
                [bezier33Path addCurveToPoint: CGPointMake(27.56, 19.94) controlPoint1: CGPointMake(27.42, 19.87) controlPoint2: CGPointMake(27.5, 19.9)];
                [bezier33Path addCurveToPoint: CGPointMake(27.68, 20.1) controlPoint1: CGPointMake(27.62, 19.98) controlPoint2: CGPointMake(27.66, 20.03)];
                [bezier33Path addCurveToPoint: CGPointMake(27.72, 20.34) controlPoint1: CGPointMake(27.7, 20.17) controlPoint2: CGPointMake(27.72, 20.25)];
                [bezier33Path addLineToPoint: CGPointMake(27.72, 20.35)];
                [bezier33Path addCurveToPoint: CGPointMake(27.69, 20.61) controlPoint1: CGPointMake(27.72, 20.45) controlPoint2: CGPointMake(27.71, 20.54)];
                [bezier33Path addCurveToPoint: CGPointMake(27.59, 20.78) controlPoint1: CGPointMake(27.67, 20.68) controlPoint2: CGPointMake(27.63, 20.73)];
                [bezier33Path addCurveToPoint: CGPointMake(27.41, 20.87) controlPoint1: CGPointMake(27.54, 20.82) controlPoint2: CGPointMake(27.48, 20.85)];
                [bezier33Path addCurveToPoint: CGPointMake(27.13, 20.9) controlPoint1: CGPointMake(27.33, 20.89) controlPoint2: CGPointMake(27.24, 20.9)];
                [bezier33Path addCurveToPoint: CGPointMake(26.89, 20.9) controlPoint1: CGPointMake(27.04, 20.9) controlPoint2: CGPointMake(26.96, 20.9)];
                [bezier33Path addCurveToPoint: CGPointMake(26.74, 20.93) controlPoint1: CGPointMake(26.83, 20.9) controlPoint2: CGPointMake(26.78, 20.91)];
                [bezier33Path addCurveToPoint: CGPointMake(26.66, 21.02) controlPoint1: CGPointMake(26.7, 20.95) controlPoint2: CGPointMake(26.68, 20.98)];
                [bezier33Path addCurveToPoint: CGPointMake(26.64, 21.19) controlPoint1: CGPointMake(26.65, 21.06) controlPoint2: CGPointMake(26.64, 21.12)];
                [bezier33Path addLineToPoint: CGPointMake(26.64, 21.36)];
                [bezier33Path addLineToPoint: CGPointMake(27.52, 21.36)];
                [bezier33Path addCurveToPoint: CGPointMake(27.59, 21.37) controlPoint1: CGPointMake(27.54, 21.36) controlPoint2: CGPointMake(27.57, 21.36)];
                [bezier33Path addCurveToPoint: CGPointMake(27.65, 21.4) controlPoint1: CGPointMake(27.61, 21.38) controlPoint2: CGPointMake(27.63, 21.39)];
                [bezier33Path addCurveToPoint: CGPointMake(27.7, 21.45) controlPoint1: CGPointMake(27.67, 21.41) controlPoint2: CGPointMake(27.68, 21.43)];
                [bezier33Path addCurveToPoint: CGPointMake(27.72, 21.52) controlPoint1: CGPointMake(27.71, 21.47) controlPoint2: CGPointMake(27.72, 21.49)];
                [bezier33Path addCurveToPoint: CGPointMake(27.71, 21.59) controlPoint1: CGPointMake(27.72, 21.55) controlPoint2: CGPointMake(27.72, 21.57)];
                [bezier33Path addCurveToPoint: CGPointMake(27.67, 21.63) controlPoint1: CGPointMake(27.7, 21.61) controlPoint2: CGPointMake(27.69, 21.62)];
                [bezier33Path addCurveToPoint: CGPointMake(27.61, 21.66) controlPoint1: CGPointMake(27.65, 21.64) controlPoint2: CGPointMake(27.63, 21.65)];
                [bezier33Path addCurveToPoint: CGPointMake(27.54, 21.67) controlPoint1: CGPointMake(27.59, 21.67) controlPoint2: CGPointMake(27.57, 21.67)];
                [bezier33Path addLineToPoint: CGPointMake(26.5, 21.67)];
                [bezier33Path addCurveToPoint: CGPointMake(26.34, 21.63) controlPoint1: CGPointMake(26.42, 21.67) controlPoint2: CGPointMake(26.37, 21.66)];
                [bezier33Path addCurveToPoint: CGPointMake(26.3, 21.51) controlPoint1: CGPointMake(26.31, 21.6) controlPoint2: CGPointMake(26.3, 21.56)];
                [bezier33Path addLineToPoint: CGPointMake(26.3, 21.14)];
                [bezier33Path addCurveToPoint: CGPointMake(26.34, 20.89) controlPoint1: CGPointMake(26.3, 21.04) controlPoint2: CGPointMake(26.31, 20.96)];
                [bezier33Path addCurveToPoint: CGPointMake(26.45, 20.73) controlPoint1: CGPointMake(26.36, 20.82) controlPoint2: CGPointMake(26.4, 20.77)];
                [bezier33Path addCurveToPoint: CGPointMake(26.63, 20.64) controlPoint1: CGPointMake(26.5, 20.69) controlPoint2: CGPointMake(26.56, 20.66)];
                [bezier33Path addCurveToPoint: CGPointMake(26.87, 20.61) controlPoint1: CGPointMake(26.7, 20.62) controlPoint2: CGPointMake(26.78, 20.61)];
                [bezier33Path addLineToPoint: CGPointMake(27.13, 20.6)];
                [bezier33Path addCurveToPoint: CGPointMake(27.25, 20.59) controlPoint1: CGPointMake(27.18, 20.6) controlPoint2: CGPointMake(27.22, 20.6)];
                [bezier33Path addCurveToPoint: CGPointMake(27.33, 20.55) controlPoint1: CGPointMake(27.28, 20.58) controlPoint2: CGPointMake(27.31, 20.57)];
                [bezier33Path addCurveToPoint: CGPointMake(27.37, 20.48) controlPoint1: CGPointMake(27.35, 20.53) controlPoint2: CGPointMake(27.36, 20.51)];
                [bezier33Path addCurveToPoint: CGPointMake(27.38, 20.37) controlPoint1: CGPointMake(27.38, 20.45) controlPoint2: CGPointMake(27.38, 20.41)];
                [bezier33Path addLineToPoint: CGPointMake(27.38, 20.36)];
                [bezier33Path addCurveToPoint: CGPointMake(27.36, 20.24) controlPoint1: CGPointMake(27.38, 20.31) controlPoint2: CGPointMake(27.38, 20.27)];
                [bezier33Path addCurveToPoint: CGPointMake(27.3, 20.17) controlPoint1: CGPointMake(27.35, 20.21) controlPoint2: CGPointMake(27.33, 20.18)];
                [bezier33Path addCurveToPoint: CGPointMake(27.18, 20.13) controlPoint1: CGPointMake(27.27, 20.15) controlPoint2: CGPointMake(27.23, 20.14)];
                [bezier33Path addCurveToPoint: CGPointMake(26.99, 20.12) controlPoint1: CGPointMake(27.13, 20.12) controlPoint2: CGPointMake(27.07, 20.12)];
                [bezier33Path addCurveToPoint: CGPointMake(26.82, 20.13) controlPoint1: CGPointMake(26.93, 20.12) controlPoint2: CGPointMake(26.87, 20.12)];
                [bezier33Path addCurveToPoint: CGPointMake(26.69, 20.16) controlPoint1: CGPointMake(26.77, 20.14) controlPoint2: CGPointMake(26.73, 20.15)];
                [bezier33Path addCurveToPoint: CGPointMake(26.6, 20.19) controlPoint1: CGPointMake(26.66, 20.17) controlPoint2: CGPointMake(26.63, 20.18)];
                [bezier33Path addCurveToPoint: CGPointMake(26.51, 20.21) controlPoint1: CGPointMake(26.58, 20.2) controlPoint2: CGPointMake(26.55, 20.21)];
                [bezier33Path addLineToPoint: CGPointMake(26.5, 20.21)];
                [bezier33Path addCurveToPoint: CGPointMake(26.39, 20.16) controlPoint1: CGPointMake(26.46, 20.21) controlPoint2: CGPointMake(26.42, 20.19)];
                [bezier33Path addCurveToPoint: CGPointMake(26.35, 20.05) controlPoint1: CGPointMake(26.36, 20.13) controlPoint2: CGPointMake(26.35, 20.1)];
                [bezier33Path addLineToPoint: CGPointMake(26.35, 20.04)];
                [bezier33Path addCurveToPoint: CGPointMake(26.41, 19.94) controlPoint1: CGPointMake(26.35, 20) controlPoint2: CGPointMake(26.37, 19.96)];
                [bezier33Path addCurveToPoint: CGPointMake(26.55, 19.87) controlPoint1: CGPointMake(26.44, 19.91) controlPoint2: CGPointMake(26.49, 19.89)];
                [bezier33Path addCurveToPoint: CGPointMake(26.76, 19.83) controlPoint1: CGPointMake(26.61, 19.85) controlPoint2: CGPointMake(26.68, 19.84)];
                [bezier33Path addCurveToPoint: CGPointMake(26.99, 19.82) controlPoint1: CGPointMake(26.81, 19.83) controlPoint2: CGPointMake(26.9, 19.82)];
                [bezier33Path closePath];
                bezier33Path.miterLimit = 4;

                [fillColor setFill];
                [bezier33Path fill];


                //// Bezier 34 Drawing
                UIBezierPath* bezier34Path = [UIBezierPath bezierPath];
                [bezier34Path moveToPoint: CGPointMake(29.06, 20.54)];
                [bezier34Path addCurveToPoint: CGPointMake(29.36, 20.58) controlPoint1: CGPointMake(29.18, 20.54) controlPoint2: CGPointMake(29.28, 20.55)];
                [bezier34Path addCurveToPoint: CGPointMake(29.55, 20.69) controlPoint1: CGPointMake(29.44, 20.61) controlPoint2: CGPointMake(29.5, 20.64)];
                [bezier34Path addCurveToPoint: CGPointMake(29.65, 20.87) controlPoint1: CGPointMake(29.6, 20.74) controlPoint2: CGPointMake(29.63, 20.8)];
                [bezier34Path addCurveToPoint: CGPointMake(29.68, 21.12) controlPoint1: CGPointMake(29.67, 20.94) controlPoint2: CGPointMake(29.68, 21.02)];
                [bezier34Path addCurveToPoint: CGPointMake(29.65, 21.36) controlPoint1: CGPointMake(29.68, 21.21) controlPoint2: CGPointMake(29.67, 21.29)];
                [bezier34Path addCurveToPoint: CGPointMake(29.53, 21.54) controlPoint1: CGPointMake(29.63, 21.43) controlPoint2: CGPointMake(29.59, 21.49)];
                [bezier34Path addCurveToPoint: CGPointMake(29.32, 21.65) controlPoint1: CGPointMake(29.48, 21.59) controlPoint2: CGPointMake(29.41, 21.62)];
                [bezier34Path addCurveToPoint: CGPointMake(28.99, 21.69) controlPoint1: CGPointMake(29.23, 21.67) controlPoint2: CGPointMake(29.12, 21.69)];
                [bezier34Path addCurveToPoint: CGPointMake(28.72, 21.66) controlPoint1: CGPointMake(28.89, 21.69) controlPoint2: CGPointMake(28.8, 21.68)];
                [bezier34Path addCurveToPoint: CGPointMake(28.51, 21.57) controlPoint1: CGPointMake(28.64, 21.64) controlPoint2: CGPointMake(28.57, 21.61)];
                [bezier34Path addCurveToPoint: CGPointMake(28.37, 21.41) controlPoint1: CGPointMake(28.45, 21.53) controlPoint2: CGPointMake(28.4, 21.48)];
                [bezier34Path addCurveToPoint: CGPointMake(28.32, 21.17) controlPoint1: CGPointMake(28.34, 21.34) controlPoint2: CGPointMake(28.32, 21.27)];
                [bezier34Path addLineToPoint: CGPointMake(28.32, 19.98)];
                [bezier34Path addCurveToPoint: CGPointMake(28.33, 19.93) controlPoint1: CGPointMake(28.32, 19.96) controlPoint2: CGPointMake(28.32, 19.94)];
                [bezier34Path addCurveToPoint: CGPointMake(28.36, 19.88) controlPoint1: CGPointMake(28.34, 19.91) controlPoint2: CGPointMake(28.35, 19.89)];
                [bezier34Path addCurveToPoint: CGPointMake(28.42, 19.84) controlPoint1: CGPointMake(28.38, 19.87) controlPoint2: CGPointMake(28.39, 19.85)];
                [bezier34Path addCurveToPoint: CGPointMake(28.51, 19.83) controlPoint1: CGPointMake(28.45, 19.83) controlPoint2: CGPointMake(28.47, 19.83)];
                [bezier34Path addCurveToPoint: CGPointMake(28.64, 19.87) controlPoint1: CGPointMake(28.57, 19.83) controlPoint2: CGPointMake(28.62, 19.84)];
                [bezier34Path addCurveToPoint: CGPointMake(28.68, 19.98) controlPoint1: CGPointMake(28.67, 19.9) controlPoint2: CGPointMake(28.68, 19.93)];
                [bezier34Path addLineToPoint: CGPointMake(28.68, 20.57)];
                [bezier34Path addCurveToPoint: CGPointMake(28.91, 20.55) controlPoint1: CGPointMake(28.77, 20.56) controlPoint2: CGPointMake(28.84, 20.55)];
                [bezier34Path addCurveToPoint: CGPointMake(29.06, 20.54) controlPoint1: CGPointMake(28.96, 20.54) controlPoint2: CGPointMake(29.01, 20.54)];
                [bezier34Path closePath];
                [bezier34Path moveToPoint: CGPointMake(29.33, 21.1)];
                [bezier34Path addCurveToPoint: CGPointMake(29.32, 20.97) controlPoint1: CGPointMake(29.33, 21.05) controlPoint2: CGPointMake(29.33, 21)];
                [bezier34Path addCurveToPoint: CGPointMake(29.27, 20.89) controlPoint1: CGPointMake(29.31, 20.93) controlPoint2: CGPointMake(29.29, 20.91)];
                [bezier34Path addCurveToPoint: CGPointMake(29.17, 20.85) controlPoint1: CGPointMake(29.24, 20.87) controlPoint2: CGPointMake(29.21, 20.86)];
                [bezier34Path addCurveToPoint: CGPointMake(29.01, 20.84) controlPoint1: CGPointMake(29.13, 20.84) controlPoint2: CGPointMake(29.07, 20.84)];
                [bezier34Path addCurveToPoint: CGPointMake(28.89, 20.84) controlPoint1: CGPointMake(28.96, 20.84) controlPoint2: CGPointMake(28.92, 20.84)];
                [bezier34Path addCurveToPoint: CGPointMake(28.81, 20.84) controlPoint1: CGPointMake(28.86, 20.84) controlPoint2: CGPointMake(28.83, 20.84)];
                [bezier34Path addCurveToPoint: CGPointMake(28.75, 20.85) controlPoint1: CGPointMake(28.79, 20.84) controlPoint2: CGPointMake(28.77, 20.84)];
                [bezier34Path addCurveToPoint: CGPointMake(28.69, 20.86) controlPoint1: CGPointMake(28.73, 20.85) controlPoint2: CGPointMake(28.71, 20.86)];
                [bezier34Path addLineToPoint: CGPointMake(28.69, 21.09)];
                [bezier34Path addCurveToPoint: CGPointMake(28.71, 21.22) controlPoint1: CGPointMake(28.69, 21.14) controlPoint2: CGPointMake(28.7, 21.19)];
                [bezier34Path addCurveToPoint: CGPointMake(28.76, 21.31) controlPoint1: CGPointMake(28.72, 21.25) controlPoint2: CGPointMake(28.74, 21.28)];
                [bezier34Path addCurveToPoint: CGPointMake(28.86, 21.36) controlPoint1: CGPointMake(28.78, 21.34) controlPoint2: CGPointMake(28.82, 21.35)];
                [bezier34Path addCurveToPoint: CGPointMake(29.01, 21.38) controlPoint1: CGPointMake(28.9, 21.37) controlPoint2: CGPointMake(28.95, 21.38)];
                [bezier34Path addCurveToPoint: CGPointMake(29.16, 21.37) controlPoint1: CGPointMake(29.07, 21.38) controlPoint2: CGPointMake(29.12, 21.38)];
                [bezier34Path addCurveToPoint: CGPointMake(29.26, 21.33) controlPoint1: CGPointMake(29.2, 21.36) controlPoint2: CGPointMake(29.23, 21.35)];
                [bezier34Path addCurveToPoint: CGPointMake(29.32, 21.25) controlPoint1: CGPointMake(29.29, 21.31) controlPoint2: CGPointMake(29.31, 21.28)];
                [bezier34Path addCurveToPoint: CGPointMake(29.33, 21.1) controlPoint1: CGPointMake(29.32, 21.21) controlPoint2: CGPointMake(29.33, 21.16)];
                [bezier34Path closePath];
                bezier34Path.miterLimit = 4;

                [fillColor setFill];
                [bezier34Path fill];


                //// Bezier 35 Drawing
                UIBezierPath* bezier35Path = [UIBezierPath bezierPath];
                [bezier35Path moveToPoint: CGPointMake(32.87, 21.17)];
                [bezier35Path addCurveToPoint: CGPointMake(32.84, 21.38) controlPoint1: CGPointMake(32.87, 21.25) controlPoint2: CGPointMake(32.86, 21.32)];
                [bezier35Path addCurveToPoint: CGPointMake(32.74, 21.54) controlPoint1: CGPointMake(32.82, 21.44) controlPoint2: CGPointMake(32.79, 21.5)];
                [bezier35Path addCurveToPoint: CGPointMake(32.52, 21.64) controlPoint1: CGPointMake(32.69, 21.58) controlPoint2: CGPointMake(32.61, 21.62)];
                [bezier35Path addCurveToPoint: CGPointMake(32.15, 21.67) controlPoint1: CGPointMake(32.43, 21.66) controlPoint2: CGPointMake(32.3, 21.67)];
                [bezier35Path addCurveToPoint: CGPointMake(31.8, 21.63) controlPoint1: CGPointMake(32, 21.67) controlPoint2: CGPointMake(31.89, 21.66)];
                [bezier35Path addCurveToPoint: CGPointMake(31.6, 21.53) controlPoint1: CGPointMake(31.71, 21.6) controlPoint2: CGPointMake(31.64, 21.57)];
                [bezier35Path addCurveToPoint: CGPointMake(31.5, 21.37) controlPoint1: CGPointMake(31.55, 21.49) controlPoint2: CGPointMake(31.52, 21.43)];
                [bezier35Path addCurveToPoint: CGPointMake(31.48, 21.17) controlPoint1: CGPointMake(31.48, 21.31) controlPoint2: CGPointMake(31.48, 21.24)];
                [bezier35Path addCurveToPoint: CGPointMake(31.49, 21.02) controlPoint1: CGPointMake(31.48, 21.11) controlPoint2: CGPointMake(31.48, 21.06)];
                [bezier35Path addCurveToPoint: CGPointMake(31.52, 20.92) controlPoint1: CGPointMake(31.49, 20.98) controlPoint2: CGPointMake(31.5, 20.95)];
                [bezier35Path addCurveToPoint: CGPointMake(31.6, 20.84) controlPoint1: CGPointMake(31.54, 20.89) controlPoint2: CGPointMake(31.56, 20.87)];
                [bezier35Path addCurveToPoint: CGPointMake(31.75, 20.75) controlPoint1: CGPointMake(31.64, 20.82) controlPoint2: CGPointMake(31.69, 20.79)];
                [bezier35Path addCurveToPoint: CGPointMake(31.6, 20.69) controlPoint1: CGPointMake(31.69, 20.73) controlPoint2: CGPointMake(31.63, 20.71)];
                [bezier35Path addCurveToPoint: CGPointMake(31.52, 20.62) controlPoint1: CGPointMake(31.56, 20.67) controlPoint2: CGPointMake(31.54, 20.65)];
                [bezier35Path addCurveToPoint: CGPointMake(31.49, 20.51) controlPoint1: CGPointMake(31.5, 20.59) controlPoint2: CGPointMake(31.49, 20.55)];
                [bezier35Path addCurveToPoint: CGPointMake(31.49, 20.33) controlPoint1: CGPointMake(31.49, 20.46) controlPoint2: CGPointMake(31.49, 20.4)];
                [bezier35Path addCurveToPoint: CGPointMake(31.52, 20.09) controlPoint1: CGPointMake(31.49, 20.23) controlPoint2: CGPointMake(31.5, 20.15)];
                [bezier35Path addCurveToPoint: CGPointMake(31.64, 19.93) controlPoint1: CGPointMake(31.54, 20.02) controlPoint2: CGPointMake(31.59, 19.97)];
                [bezier35Path addCurveToPoint: CGPointMake(31.85, 19.85) controlPoint1: CGPointMake(31.69, 19.89) controlPoint2: CGPointMake(31.77, 19.86)];
                [bezier35Path addCurveToPoint: CGPointMake(32.17, 19.83) controlPoint1: CGPointMake(31.94, 19.83) controlPoint2: CGPointMake(32.04, 19.83)];
                [bezier35Path addCurveToPoint: CGPointMake(32.49, 19.86) controlPoint1: CGPointMake(32.3, 19.83) controlPoint2: CGPointMake(32.4, 19.84)];
                [bezier35Path addCurveToPoint: CGPointMake(32.71, 19.94) controlPoint1: CGPointMake(32.58, 19.88) controlPoint2: CGPointMake(32.65, 19.91)];
                [bezier35Path addCurveToPoint: CGPointMake(32.83, 20.09) controlPoint1: CGPointMake(32.76, 19.98) controlPoint2: CGPointMake(32.8, 20.03)];
                [bezier35Path addCurveToPoint: CGPointMake(32.87, 20.33) controlPoint1: CGPointMake(32.85, 20.16) controlPoint2: CGPointMake(32.87, 20.23)];
                [bezier35Path addCurveToPoint: CGPointMake(32.86, 20.51) controlPoint1: CGPointMake(32.87, 20.4) controlPoint2: CGPointMake(32.87, 20.47)];
                [bezier35Path addCurveToPoint: CGPointMake(32.83, 20.62) controlPoint1: CGPointMake(32.86, 20.56) controlPoint2: CGPointMake(32.85, 20.59)];
                [bezier35Path addCurveToPoint: CGPointMake(32.75, 20.69) controlPoint1: CGPointMake(32.81, 20.65) controlPoint2: CGPointMake(32.79, 20.67)];
                [bezier35Path addCurveToPoint: CGPointMake(32.61, 20.75) controlPoint1: CGPointMake(32.72, 20.71) controlPoint2: CGPointMake(32.67, 20.73)];
                [bezier35Path addCurveToPoint: CGPointMake(32.76, 20.82) controlPoint1: CGPointMake(32.67, 20.78) controlPoint2: CGPointMake(32.72, 20.8)];
                [bezier35Path addCurveToPoint: CGPointMake(32.84, 20.89) controlPoint1: CGPointMake(32.79, 20.84) controlPoint2: CGPointMake(32.82, 20.87)];
                [bezier35Path addCurveToPoint: CGPointMake(32.87, 21) controlPoint1: CGPointMake(32.86, 20.92) controlPoint2: CGPointMake(32.87, 20.95)];
                [bezier35Path addCurveToPoint: CGPointMake(32.87, 21.17) controlPoint1: CGPointMake(32.87, 21.05) controlPoint2: CGPointMake(32.87, 21.1)];
                [bezier35Path closePath];
                [bezier35Path moveToPoint: CGPointMake(32.51, 21.14)];
                [bezier35Path addCurveToPoint: CGPointMake(32.5, 21.11) controlPoint1: CGPointMake(32.51, 21.14) controlPoint2: CGPointMake(32.51, 21.13)];
                [bezier35Path addCurveToPoint: CGPointMake(32.45, 21.05) controlPoint1: CGPointMake(32.49, 21.09) controlPoint2: CGPointMake(32.48, 21.07)];
                [bezier35Path addCurveToPoint: CGPointMake(32.35, 20.97) controlPoint1: CGPointMake(32.43, 21.02) controlPoint2: CGPointMake(32.39, 21)];
                [bezier35Path addCurveToPoint: CGPointMake(32.17, 20.89) controlPoint1: CGPointMake(32.31, 20.94) controlPoint2: CGPointMake(32.25, 20.91)];
                [bezier35Path addCurveToPoint: CGPointMake(31.98, 20.98) controlPoint1: CGPointMake(32.09, 20.92) controlPoint2: CGPointMake(32.03, 20.95)];
                [bezier35Path addCurveToPoint: CGPointMake(31.88, 21.07) controlPoint1: CGPointMake(31.94, 21.01) controlPoint2: CGPointMake(31.9, 21.04)];
                [bezier35Path addCurveToPoint: CGPointMake(31.84, 21.14) controlPoint1: CGPointMake(31.85, 21.1) controlPoint2: CGPointMake(31.84, 21.12)];
                [bezier35Path addCurveToPoint: CGPointMake(31.83, 21.18) controlPoint1: CGPointMake(31.83, 21.16) controlPoint2: CGPointMake(31.83, 21.17)];
                [bezier35Path addLineToPoint: CGPointMake(31.83, 21.18)];
                [bezier35Path addCurveToPoint: CGPointMake(31.85, 21.27) controlPoint1: CGPointMake(31.83, 21.22) controlPoint2: CGPointMake(31.83, 21.25)];
                [bezier35Path addCurveToPoint: CGPointMake(31.9, 21.33) controlPoint1: CGPointMake(31.86, 21.3) controlPoint2: CGPointMake(31.87, 21.32)];
                [bezier35Path addCurveToPoint: CGPointMake(32.01, 21.36) controlPoint1: CGPointMake(31.92, 21.34) controlPoint2: CGPointMake(31.96, 21.36)];
                [bezier35Path addCurveToPoint: CGPointMake(32.18, 21.37) controlPoint1: CGPointMake(32.06, 21.37) controlPoint2: CGPointMake(32.12, 21.37)];
                [bezier35Path addCurveToPoint: CGPointMake(32.34, 21.36) controlPoint1: CGPointMake(32.24, 21.37) controlPoint2: CGPointMake(32.3, 21.37)];
                [bezier35Path addCurveToPoint: CGPointMake(32.44, 21.33) controlPoint1: CGPointMake(32.38, 21.35) controlPoint2: CGPointMake(32.42, 21.34)];
                [bezier35Path addCurveToPoint: CGPointMake(32.5, 21.27) controlPoint1: CGPointMake(32.47, 21.31) controlPoint2: CGPointMake(32.48, 21.29)];
                [bezier35Path addCurveToPoint: CGPointMake(32.51, 21.18) controlPoint1: CGPointMake(32.51, 21.25) controlPoint2: CGPointMake(32.51, 21.21)];
                [bezier35Path addLineToPoint: CGPointMake(32.51, 21.14)];
                [bezier35Path closePath];
                [bezier35Path moveToPoint: CGPointMake(32.18, 20.61)];
                [bezier35Path addCurveToPoint: CGPointMake(32.37, 20.56) controlPoint1: CGPointMake(32.26, 20.59) controlPoint2: CGPointMake(32.32, 20.57)];
                [bezier35Path addCurveToPoint: CGPointMake(32.47, 20.51) controlPoint1: CGPointMake(32.41, 20.55) controlPoint2: CGPointMake(32.45, 20.53)];
                [bezier35Path addCurveToPoint: CGPointMake(32.51, 20.43) controlPoint1: CGPointMake(32.49, 20.49) controlPoint2: CGPointMake(32.5, 20.46)];
                [bezier35Path addCurveToPoint: CGPointMake(32.52, 20.29) controlPoint1: CGPointMake(32.51, 20.4) controlPoint2: CGPointMake(32.52, 20.35)];
                [bezier35Path addCurveToPoint: CGPointMake(32.5, 20.2) controlPoint1: CGPointMake(32.52, 20.25) controlPoint2: CGPointMake(32.51, 20.22)];
                [bezier35Path addCurveToPoint: CGPointMake(32.43, 20.15) controlPoint1: CGPointMake(32.48, 20.18) controlPoint2: CGPointMake(32.46, 20.16)];
                [bezier35Path addCurveToPoint: CGPointMake(32.32, 20.13) controlPoint1: CGPointMake(32.4, 20.14) controlPoint2: CGPointMake(32.36, 20.13)];
                [bezier35Path addCurveToPoint: CGPointMake(32.18, 20.12) controlPoint1: CGPointMake(32.28, 20.13) controlPoint2: CGPointMake(32.23, 20.12)];
                [bezier35Path addCurveToPoint: CGPointMake(32.03, 20.13) controlPoint1: CGPointMake(32.12, 20.12) controlPoint2: CGPointMake(32.07, 20.12)];
                [bezier35Path addCurveToPoint: CGPointMake(31.93, 20.16) controlPoint1: CGPointMake(31.99, 20.13) controlPoint2: CGPointMake(31.96, 20.15)];
                [bezier35Path addCurveToPoint: CGPointMake(31.87, 20.23) controlPoint1: CGPointMake(31.9, 20.17) controlPoint2: CGPointMake(31.88, 20.2)];
                [bezier35Path addCurveToPoint: CGPointMake(31.85, 20.35) controlPoint1: CGPointMake(31.86, 20.26) controlPoint2: CGPointMake(31.85, 20.3)];
                [bezier35Path addCurveToPoint: CGPointMake(31.86, 20.46) controlPoint1: CGPointMake(31.85, 20.4) controlPoint2: CGPointMake(31.85, 20.43)];
                [bezier35Path addCurveToPoint: CGPointMake(31.9, 20.53) controlPoint1: CGPointMake(31.86, 20.49) controlPoint2: CGPointMake(31.88, 20.51)];
                [bezier35Path addCurveToPoint: CGPointMake(32, 20.57) controlPoint1: CGPointMake(31.92, 20.55) controlPoint2: CGPointMake(31.95, 20.56)];
                [bezier35Path addCurveToPoint: CGPointMake(32.18, 20.61) controlPoint1: CGPointMake(32.03, 20.57) controlPoint2: CGPointMake(32.09, 20.58)];
                [bezier35Path closePath];
                bezier35Path.miterLimit = 4;

                [fillColor setFill];
                [bezier35Path fill];


                //// Bezier 36 Drawing
                UIBezierPath* bezier36Path = [UIBezierPath bezierPath];
                [bezier36Path moveToPoint: CGPointMake(34.18, 19.82)];
                [bezier36Path addCurveToPoint: CGPointMake(34.52, 19.85) controlPoint1: CGPointMake(34.31, 19.82) controlPoint2: CGPointMake(34.43, 19.83)];
                [bezier36Path addCurveToPoint: CGPointMake(34.74, 19.94) controlPoint1: CGPointMake(34.61, 19.87) controlPoint2: CGPointMake(34.69, 19.9)];
                [bezier36Path addCurveToPoint: CGPointMake(34.86, 20.1) controlPoint1: CGPointMake(34.8, 19.98) controlPoint2: CGPointMake(34.84, 20.03)];
                [bezier36Path addCurveToPoint: CGPointMake(34.9, 20.34) controlPoint1: CGPointMake(34.89, 20.17) controlPoint2: CGPointMake(34.9, 20.25)];
                [bezier36Path addLineToPoint: CGPointMake(34.9, 20.35)];
                [bezier36Path addCurveToPoint: CGPointMake(34.87, 20.61) controlPoint1: CGPointMake(34.9, 20.45) controlPoint2: CGPointMake(34.89, 20.54)];
                [bezier36Path addCurveToPoint: CGPointMake(34.77, 20.78) controlPoint1: CGPointMake(34.85, 20.68) controlPoint2: CGPointMake(34.81, 20.73)];
                [bezier36Path addCurveToPoint: CGPointMake(34.59, 20.87) controlPoint1: CGPointMake(34.73, 20.82) controlPoint2: CGPointMake(34.66, 20.85)];
                [bezier36Path addCurveToPoint: CGPointMake(34.31, 20.9) controlPoint1: CGPointMake(34.51, 20.89) controlPoint2: CGPointMake(34.43, 20.9)];
                [bezier36Path addCurveToPoint: CGPointMake(34.07, 20.9) controlPoint1: CGPointMake(34.22, 20.9) controlPoint2: CGPointMake(34.14, 20.9)];
                [bezier36Path addCurveToPoint: CGPointMake(33.92, 20.93) controlPoint1: CGPointMake(34.01, 20.9) controlPoint2: CGPointMake(33.96, 20.91)];
                [bezier36Path addCurveToPoint: CGPointMake(33.84, 21.02) controlPoint1: CGPointMake(33.88, 20.95) controlPoint2: CGPointMake(33.86, 20.98)];
                [bezier36Path addCurveToPoint: CGPointMake(33.82, 21.19) controlPoint1: CGPointMake(33.82, 21.06) controlPoint2: CGPointMake(33.82, 21.12)];
                [bezier36Path addLineToPoint: CGPointMake(33.82, 21.36)];
                [bezier36Path addLineToPoint: CGPointMake(34.71, 21.36)];
                [bezier36Path addCurveToPoint: CGPointMake(34.78, 21.37) controlPoint1: CGPointMake(34.73, 21.36) controlPoint2: CGPointMake(34.75, 21.36)];
                [bezier36Path addCurveToPoint: CGPointMake(34.84, 21.4) controlPoint1: CGPointMake(34.8, 21.38) controlPoint2: CGPointMake(34.82, 21.39)];
                [bezier36Path addCurveToPoint: CGPointMake(34.88, 21.45) controlPoint1: CGPointMake(34.86, 21.41) controlPoint2: CGPointMake(34.87, 21.43)];
                [bezier36Path addCurveToPoint: CGPointMake(34.9, 21.52) controlPoint1: CGPointMake(34.89, 21.47) controlPoint2: CGPointMake(34.9, 21.49)];
                [bezier36Path addCurveToPoint: CGPointMake(34.88, 21.59) controlPoint1: CGPointMake(34.9, 21.55) controlPoint2: CGPointMake(34.9, 21.57)];
                [bezier36Path addCurveToPoint: CGPointMake(34.83, 21.63) controlPoint1: CGPointMake(34.87, 21.61) controlPoint2: CGPointMake(34.85, 21.62)];
                [bezier36Path addCurveToPoint: CGPointMake(34.77, 21.66) controlPoint1: CGPointMake(34.81, 21.64) controlPoint2: CGPointMake(34.79, 21.65)];
                [bezier36Path addCurveToPoint: CGPointMake(34.7, 21.67) controlPoint1: CGPointMake(34.75, 21.67) controlPoint2: CGPointMake(34.73, 21.67)];
                [bezier36Path addLineToPoint: CGPointMake(33.66, 21.67)];
                [bezier36Path addCurveToPoint: CGPointMake(33.5, 21.63) controlPoint1: CGPointMake(33.58, 21.67) controlPoint2: CGPointMake(33.53, 21.66)];
                [bezier36Path addCurveToPoint: CGPointMake(33.46, 21.51) controlPoint1: CGPointMake(33.48, 21.6) controlPoint2: CGPointMake(33.46, 21.56)];
                [bezier36Path addLineToPoint: CGPointMake(33.46, 21.14)];
                [bezier36Path addCurveToPoint: CGPointMake(33.5, 20.89) controlPoint1: CGPointMake(33.46, 21.04) controlPoint2: CGPointMake(33.47, 20.96)];
                [bezier36Path addCurveToPoint: CGPointMake(33.61, 20.73) controlPoint1: CGPointMake(33.53, 20.82) controlPoint2: CGPointMake(33.56, 20.77)];
                [bezier36Path addCurveToPoint: CGPointMake(33.79, 20.64) controlPoint1: CGPointMake(33.66, 20.69) controlPoint2: CGPointMake(33.72, 20.66)];
                [bezier36Path addCurveToPoint: CGPointMake(34.03, 20.61) controlPoint1: CGPointMake(33.86, 20.62) controlPoint2: CGPointMake(33.94, 20.61)];
                [bezier36Path addLineToPoint: CGPointMake(34.29, 20.6)];
                [bezier36Path addCurveToPoint: CGPointMake(34.41, 20.59) controlPoint1: CGPointMake(34.34, 20.6) controlPoint2: CGPointMake(34.38, 20.6)];
                [bezier36Path addCurveToPoint: CGPointMake(34.49, 20.55) controlPoint1: CGPointMake(34.44, 20.58) controlPoint2: CGPointMake(34.47, 20.57)];
                [bezier36Path addCurveToPoint: CGPointMake(34.53, 20.48) controlPoint1: CGPointMake(34.51, 20.53) controlPoint2: CGPointMake(34.52, 20.51)];
                [bezier36Path addCurveToPoint: CGPointMake(34.54, 20.37) controlPoint1: CGPointMake(34.54, 20.45) controlPoint2: CGPointMake(34.54, 20.41)];
                [bezier36Path addLineToPoint: CGPointMake(34.54, 20.36)];
                [bezier36Path addCurveToPoint: CGPointMake(34.52, 20.24) controlPoint1: CGPointMake(34.54, 20.31) controlPoint2: CGPointMake(34.53, 20.27)];
                [bezier36Path addCurveToPoint: CGPointMake(34.46, 20.17) controlPoint1: CGPointMake(34.51, 20.21) controlPoint2: CGPointMake(34.49, 20.18)];
                [bezier36Path addCurveToPoint: CGPointMake(34.34, 20.13) controlPoint1: CGPointMake(34.43, 20.15) controlPoint2: CGPointMake(34.39, 20.14)];
                [bezier36Path addCurveToPoint: CGPointMake(34.15, 20.12) controlPoint1: CGPointMake(34.29, 20.12) controlPoint2: CGPointMake(34.22, 20.12)];
                [bezier36Path addCurveToPoint: CGPointMake(33.98, 20.13) controlPoint1: CGPointMake(34.09, 20.12) controlPoint2: CGPointMake(34.03, 20.12)];
                [bezier36Path addCurveToPoint: CGPointMake(33.85, 20.16) controlPoint1: CGPointMake(33.93, 20.14) controlPoint2: CGPointMake(33.88, 20.15)];
                [bezier36Path addCurveToPoint: CGPointMake(33.76, 20.19) controlPoint1: CGPointMake(33.81, 20.17) controlPoint2: CGPointMake(33.79, 20.18)];
                [bezier36Path addCurveToPoint: CGPointMake(33.67, 20.21) controlPoint1: CGPointMake(33.74, 20.2) controlPoint2: CGPointMake(33.7, 20.21)];
                [bezier36Path addLineToPoint: CGPointMake(33.66, 20.21)];
                [bezier36Path addCurveToPoint: CGPointMake(33.56, 20.16) controlPoint1: CGPointMake(33.62, 20.21) controlPoint2: CGPointMake(33.58, 20.19)];
                [bezier36Path addCurveToPoint: CGPointMake(33.52, 20.05) controlPoint1: CGPointMake(33.53, 20.13) controlPoint2: CGPointMake(33.52, 20.1)];
                [bezier36Path addLineToPoint: CGPointMake(33.52, 20.04)];
                [bezier36Path addCurveToPoint: CGPointMake(33.58, 19.94) controlPoint1: CGPointMake(33.52, 20) controlPoint2: CGPointMake(33.54, 19.96)];
                [bezier36Path addCurveToPoint: CGPointMake(33.73, 19.87) controlPoint1: CGPointMake(33.61, 19.91) controlPoint2: CGPointMake(33.66, 19.89)];
                [bezier36Path addCurveToPoint: CGPointMake(33.93, 19.83) controlPoint1: CGPointMake(33.79, 19.85) controlPoint2: CGPointMake(33.86, 19.84)];
                [bezier36Path addCurveToPoint: CGPointMake(34.18, 19.82) controlPoint1: CGPointMake(34.01, 19.83) controlPoint2: CGPointMake(34.09, 19.82)];
                [bezier36Path closePath];
                bezier36Path.miterLimit = 4;

                [fillColor setFill];
                [bezier36Path fill];


                //// Bezier 37 Drawing
                UIBezierPath* bezier37Path = [UIBezierPath bezierPath];
                [bezier37Path moveToPoint: CGPointMake(36.5, 21.63)];
                [bezier37Path addCurveToPoint: CGPointMake(36.37, 21.67) controlPoint1: CGPointMake(36.46, 21.66) controlPoint2: CGPointMake(36.42, 21.67)];
                [bezier37Path addCurveToPoint: CGPointMake(36.23, 21.63) controlPoint1: CGPointMake(36.31, 21.67) controlPoint2: CGPointMake(36.26, 21.66)];
                [bezier37Path addCurveToPoint: CGPointMake(36.18, 21.52) controlPoint1: CGPointMake(36.2, 21.6) controlPoint2: CGPointMake(36.18, 21.56)];
                [bezier37Path addLineToPoint: CGPointMake(36.18, 20.14)];
                [bezier37Path addLineToPoint: CGPointMake(35.32, 20.14)];
                [bezier37Path addCurveToPoint: CGPointMake(35.2, 20.1) controlPoint1: CGPointMake(35.27, 20.14) controlPoint2: CGPointMake(35.23, 20.13)];
                [bezier37Path addCurveToPoint: CGPointMake(35.14, 19.99) controlPoint1: CGPointMake(35.16, 20.08) controlPoint2: CGPointMake(35.14, 20.04)];
                [bezier37Path addCurveToPoint: CGPointMake(35.2, 19.88) controlPoint1: CGPointMake(35.14, 19.94) controlPoint2: CGPointMake(35.16, 19.91)];
                [bezier37Path addCurveToPoint: CGPointMake(35.32, 19.84) controlPoint1: CGPointMake(35.24, 19.85) controlPoint2: CGPointMake(35.28, 19.84)];
                [bezier37Path addLineToPoint: CGPointMake(36.24, 19.84)];
                [bezier37Path addCurveToPoint: CGPointMake(36.4, 19.85) controlPoint1: CGPointMake(36.3, 19.84) controlPoint2: CGPointMake(36.36, 19.84)];
                [bezier37Path addCurveToPoint: CGPointMake(36.49, 19.89) controlPoint1: CGPointMake(36.44, 19.86) controlPoint2: CGPointMake(36.47, 19.87)];
                [bezier37Path addCurveToPoint: CGPointMake(36.53, 19.97) controlPoint1: CGPointMake(36.51, 19.91) controlPoint2: CGPointMake(36.53, 19.94)];
                [bezier37Path addCurveToPoint: CGPointMake(36.54, 20.09) controlPoint1: CGPointMake(36.54, 20) controlPoint2: CGPointMake(36.54, 20.04)];
                [bezier37Path addLineToPoint: CGPointMake(36.54, 21.52)];
                [bezier37Path addCurveToPoint: CGPointMake(36.5, 21.63) controlPoint1: CGPointMake(36.55, 21.56) controlPoint2: CGPointMake(36.53, 21.6)];
                [bezier37Path closePath];
                bezier37Path.miterLimit = 4;

                [fillColor setFill];
                [bezier37Path fill];


                //// Bezier 38 Drawing
                UIBezierPath* bezier38Path = [UIBezierPath bezierPath];
                [bezier38Path moveToPoint: CGPointMake(38.39, 21.51)];
                [bezier38Path addCurveToPoint: CGPointMake(38.37, 21.58) controlPoint1: CGPointMake(38.39, 21.54) controlPoint2: CGPointMake(38.38, 21.56)];
                [bezier38Path addCurveToPoint: CGPointMake(38.33, 21.62) controlPoint1: CGPointMake(38.36, 21.6) controlPoint2: CGPointMake(38.35, 21.61)];
                [bezier38Path addCurveToPoint: CGPointMake(38.28, 21.65) controlPoint1: CGPointMake(38.32, 21.63) controlPoint2: CGPointMake(38.3, 21.64)];
                [bezier38Path addCurveToPoint: CGPointMake(38.23, 21.66) controlPoint1: CGPointMake(38.26, 21.66) controlPoint2: CGPointMake(38.25, 21.66)];
                [bezier38Path addLineToPoint: CGPointMake(37.21, 21.66)];
                [bezier38Path addCurveToPoint: CGPointMake(37.15, 21.65) controlPoint1: CGPointMake(37.19, 21.66) controlPoint2: CGPointMake(37.17, 21.66)];
                [bezier38Path addCurveToPoint: CGPointMake(37.09, 21.62) controlPoint1: CGPointMake(37.13, 21.64) controlPoint2: CGPointMake(37.11, 21.64)];
                [bezier38Path addCurveToPoint: CGPointMake(37.05, 21.58) controlPoint1: CGPointMake(37.08, 21.61) controlPoint2: CGPointMake(37.06, 21.59)];
                [bezier38Path addCurveToPoint: CGPointMake(37.04, 21.51) controlPoint1: CGPointMake(37.04, 21.56) controlPoint2: CGPointMake(37.04, 21.54)];
                [bezier38Path addCurveToPoint: CGPointMake(37.05, 21.44) controlPoint1: CGPointMake(37.04, 21.49) controlPoint2: CGPointMake(37.04, 21.46)];
                [bezier38Path addCurveToPoint: CGPointMake(37.09, 21.39) controlPoint1: CGPointMake(37.06, 21.42) controlPoint2: CGPointMake(37.07, 21.41)];
                [bezier38Path addCurveToPoint: CGPointMake(37.14, 21.36) controlPoint1: CGPointMake(37.11, 21.38) controlPoint2: CGPointMake(37.12, 21.37)];
                [bezier38Path addCurveToPoint: CGPointMake(37.19, 21.35) controlPoint1: CGPointMake(37.16, 21.35) controlPoint2: CGPointMake(37.18, 21.35)];
                [bezier38Path addLineToPoint: CGPointMake(37.52, 21.35)];
                [bezier38Path addLineToPoint: CGPointMake(37.52, 20.13)];
                [bezier38Path addCurveToPoint: CGPointMake(37.45, 20.12) controlPoint1: CGPointMake(37.5, 20.13) controlPoint2: CGPointMake(37.47, 20.12)];
                [bezier38Path addCurveToPoint: CGPointMake(37.38, 20.1) controlPoint1: CGPointMake(37.42, 20.11) controlPoint2: CGPointMake(37.4, 20.1)];
                [bezier38Path addCurveToPoint: CGPointMake(37.33, 20.06) controlPoint1: CGPointMake(37.36, 20.09) controlPoint2: CGPointMake(37.34, 20.07)];
                [bezier38Path addCurveToPoint: CGPointMake(37.31, 20) controlPoint1: CGPointMake(37.32, 20.04) controlPoint2: CGPointMake(37.31, 20.02)];
                [bezier38Path addCurveToPoint: CGPointMake(37.33, 19.91) controlPoint1: CGPointMake(37.31, 19.96) controlPoint2: CGPointMake(37.32, 19.93)];
                [bezier38Path addCurveToPoint: CGPointMake(37.41, 19.86) controlPoint1: CGPointMake(37.35, 19.89) controlPoint2: CGPointMake(37.37, 19.87)];
                [bezier38Path addCurveToPoint: CGPointMake(37.53, 19.84) controlPoint1: CGPointMake(37.44, 19.85) controlPoint2: CGPointMake(37.49, 19.84)];
                [bezier38Path addCurveToPoint: CGPointMake(37.68, 19.84) controlPoint1: CGPointMake(37.57, 19.84) controlPoint2: CGPointMake(37.62, 19.84)];
                [bezier38Path addLineToPoint: CGPointMake(37.76, 19.84)];
                [bezier38Path addCurveToPoint: CGPointMake(37.85, 19.86) controlPoint1: CGPointMake(37.8, 19.84) controlPoint2: CGPointMake(37.83, 19.85)];
                [bezier38Path addCurveToPoint: CGPointMake(37.87, 19.92) controlPoint1: CGPointMake(37.87, 19.88) controlPoint2: CGPointMake(37.87, 19.9)];
                [bezier38Path addLineToPoint: CGPointMake(37.87, 21.36)];
                [bezier38Path addLineToPoint: CGPointMake(38.2, 21.36)];
                [bezier38Path addCurveToPoint: CGPointMake(38.24, 21.38) controlPoint1: CGPointMake(38.22, 21.36) controlPoint2: CGPointMake(38.23, 21.37)];
                [bezier38Path addCurveToPoint: CGPointMake(38.26, 21.43) controlPoint1: CGPointMake(38.25, 21.39) controlPoint2: CGPointMake(38.26, 21.41)];
                [bezier38Path addCurveToPoint: CGPointMake(38.27, 21.48) controlPoint1: CGPointMake(38.27, 21.45) controlPoint2: CGPointMake(38.27, 21.46)];
                [bezier38Path addCurveToPoint: CGPointMake(38.27, 21.5) controlPoint1: CGPointMake(38.27, 21.49) controlPoint2: CGPointMake(38.27, 21.5)];
                [bezier38Path addLineToPoint: CGPointMake(38.39, 21.5)];
                [bezier38Path addLineToPoint: CGPointMake(38.39, 21.51)];
                [bezier38Path closePath];
                bezier38Path.miterLimit = 4;

                [fillColor setFill];
                [bezier38Path fill];
            }
        }


        //// Bezier 39 Drawing
        UIBezierPath* bezier39Path = [UIBezierPath bezierPath];
        [bezier39Path moveToPoint: CGPointMake(32.87, 8.22)];
        [bezier39Path addCurveToPoint: CGPointMake(32.25, 7.6) controlPoint1: CGPointMake(32.53, 8.22) controlPoint2: CGPointMake(32.25, 7.94)];
        [bezier39Path addLineToPoint: CGPointMake(32.25, 4.59)];
        [bezier39Path addCurveToPoint: CGPointMake(32.87, 3.98) controlPoint1: CGPointMake(32.25, 4.25) controlPoint2: CGPointMake(32.53, 3.98)];
        [bezier39Path addLineToPoint: CGPointMake(37.96, 3.98)];
        [bezier39Path addCurveToPoint: CGPointMake(38.57, 4.59) controlPoint1: CGPointMake(38.3, 3.98) controlPoint2: CGPointMake(38.57, 4.26)];
        [bezier39Path addLineToPoint: CGPointMake(38.57, 7.6)];
        [bezier39Path addCurveToPoint: CGPointMake(37.96, 8.22) controlPoint1: CGPointMake(38.57, 7.94) controlPoint2: CGPointMake(38.29, 8.22)];
        [bezier39Path addLineToPoint: CGPointMake(32.87, 8.22)];
        [bezier39Path closePath];
        [bezier39Path moveToPoint: CGPointMake(32.87, 4.3)];
        [bezier39Path addCurveToPoint: CGPointMake(32.57, 4.6) controlPoint1: CGPointMake(32.71, 4.3) controlPoint2: CGPointMake(32.57, 4.43)];
        [bezier39Path addLineToPoint: CGPointMake(32.57, 7.6)];
        [bezier39Path addCurveToPoint: CGPointMake(32.87, 7.9) controlPoint1: CGPointMake(32.57, 7.76) controlPoint2: CGPointMake(32.7, 7.9)];
        [bezier39Path addLineToPoint: CGPointMake(37.96, 7.9)];
        [bezier39Path addCurveToPoint: CGPointMake(38.26, 7.6) controlPoint1: CGPointMake(38.12, 7.9) controlPoint2: CGPointMake(38.26, 7.77)];
        [bezier39Path addLineToPoint: CGPointMake(38.26, 4.59)];
        [bezier39Path addCurveToPoint: CGPointMake(37.96, 4.29) controlPoint1: CGPointMake(38.26, 4.43) controlPoint2: CGPointMake(38.13, 4.29)];
        [bezier39Path addLineToPoint: CGPointMake(32.87, 4.29)];
        [bezier39Path addLineToPoint: CGPointMake(32.87, 4.3)];
        [bezier39Path closePath];
        bezier39Path.miterLimit = 4;

        [fillColor setFill];
        [bezier39Path fill];
    }
}

- (void)drawCardUnknown {
    //// Color Declarations
    UIColor* fillColor = [UIColor colorWithRed: 0.651 green: 0.651 blue: 0.651 alpha: 1];
    UIColor* fillColor2 = [UIColor colorWithRed: 0.951 green: 0.956 blue: 0.956 alpha: 1];
    UIColor* fillColor14 = [UIColor colorWithRed: 0.439 green: 0.439 blue: 0.439 alpha: 1];

    //// ic_card_unknown Group
    {
        //// Group 2
        {
            //// Bezier Drawing
            UIBezierPath* bezierPath = [UIBezierPath bezierPath];
            [bezierPath moveToPoint: CGPointMake(39.97, 0)];
            [bezierPath addLineToPoint: CGPointMake(2.04, 0)];
            [bezierPath addCurveToPoint: CGPointMake(0, 2.02) controlPoint1: CGPointMake(0.91, 0) controlPoint2: CGPointMake(0, 0.91)];
            [bezierPath addLineToPoint: CGPointMake(0, 3.04)];
            [bezierPath addLineToPoint: CGPointMake(0, 23.96)];
            [bezierPath addLineToPoint: CGPointMake(0, 24.98)];
            [bezierPath addCurveToPoint: CGPointMake(2.04, 27) controlPoint1: CGPointMake(0, 26.09) controlPoint2: CGPointMake(0.91, 27)];
            [bezierPath addLineToPoint: CGPointMake(39.97, 27)];
            [bezierPath addCurveToPoint: CGPointMake(42, 24.98) controlPoint1: CGPointMake(41.09, 27) controlPoint2: CGPointMake(42, 26.09)];
            [bezierPath addLineToPoint: CGPointMake(42, 2.02)];
            [bezierPath addCurveToPoint: CGPointMake(39.97, 0) controlPoint1: CGPointMake(42, 0.91) controlPoint2: CGPointMake(41.09, 0)];
            [bezierPath closePath];
            bezierPath.miterLimit = 4;

            [fillColor setFill];
            [bezierPath fill];


            //// Rectangle Drawing
            UIBezierPath* rectanglePath = [UIBezierPath bezierPathWithRoundedRect: CGRectMake(0.5, 0.5, 41, 25.5) cornerRadius: 1.6];
            [fillColor2 setFill];
            [rectanglePath fill];
        }


        //// Bezier 2 Drawing
        UIBezierPath* bezier2Path = [UIBezierPath bezierPath];
        [bezier2Path moveToPoint: CGPointMake(32.82, 8.24)];
        [bezier2Path addCurveToPoint: CGPointMake(32.2, 7.62) controlPoint1: CGPointMake(32.48, 8.24) controlPoint2: CGPointMake(32.2, 7.96)];
        [bezier2Path addLineToPoint: CGPointMake(32.2, 4.62)];
        [bezier2Path addCurveToPoint: CGPointMake(32.82, 4) controlPoint1: CGPointMake(32.2, 4.28) controlPoint2: CGPointMake(32.48, 4)];
        [bezier2Path addLineToPoint: CGPointMake(37.91, 4)];
        [bezier2Path addCurveToPoint: CGPointMake(38.52, 4.61) controlPoint1: CGPointMake(38.25, 4) controlPoint2: CGPointMake(38.52, 4.28)];
        [bezier2Path addLineToPoint: CGPointMake(38.52, 7.62)];
        [bezier2Path addCurveToPoint: CGPointMake(37.91, 8.24) controlPoint1: CGPointMake(38.52, 7.96) controlPoint2: CGPointMake(38.24, 8.24)];
        [bezier2Path addLineToPoint: CGPointMake(32.82, 8.24)];
        [bezier2Path closePath];
        [bezier2Path moveToPoint: CGPointMake(32.82, 4.32)];
        [bezier2Path addCurveToPoint: CGPointMake(32.52, 4.62) controlPoint1: CGPointMake(32.66, 4.32) controlPoint2: CGPointMake(32.52, 4.45)];
        [bezier2Path addLineToPoint: CGPointMake(32.52, 7.63)];
        [bezier2Path addCurveToPoint: CGPointMake(32.82, 7.93) controlPoint1: CGPointMake(32.52, 7.79) controlPoint2: CGPointMake(32.65, 7.93)];
        [bezier2Path addLineToPoint: CGPointMake(37.91, 7.93)];
        [bezier2Path addCurveToPoint: CGPointMake(38.2, 7.63) controlPoint1: CGPointMake(38.07, 7.93) controlPoint2: CGPointMake(38.2, 7.8)];
        [bezier2Path addLineToPoint: CGPointMake(38.2, 4.62)];
        [bezier2Path addCurveToPoint: CGPointMake(37.91, 4.32) controlPoint1: CGPointMake(38.2, 4.46) controlPoint2: CGPointMake(38.07, 4.32)];
        [bezier2Path addLineToPoint: CGPointMake(32.82, 4.32)];
        [bezier2Path closePath];
        bezier2Path.miterLimit = 4;

        [fillColor setFill];
        [bezier2Path fill];


        //// Group 3
        {
            //// Group 4
            {
                //// Bezier 3 Drawing
                UIBezierPath* bezier3Path = [UIBezierPath bezierPath];
                [bezier3Path moveToPoint: CGPointMake(4.91, 20.64)];
                [bezier3Path addCurveToPoint: CGPointMake(5.03, 20.67) controlPoint1: CGPointMake(4.96, 20.64) controlPoint2: CGPointMake(5, 20.65)];
                [bezier3Path addCurveToPoint: CGPointMake(5.08, 20.78) controlPoint1: CGPointMake(5.06, 20.69) controlPoint2: CGPointMake(5.08, 20.73)];
                [bezier3Path addCurveToPoint: CGPointMake(5.03, 20.9) controlPoint1: CGPointMake(5.08, 20.84) controlPoint2: CGPointMake(5.06, 20.88)];
                [bezier3Path addCurveToPoint: CGPointMake(4.92, 20.94) controlPoint1: CGPointMake(5, 20.92) controlPoint2: CGPointMake(4.96, 20.94)];
                [bezier3Path addLineToPoint: CGPointMake(4.86, 20.94)];
                [bezier3Path addLineToPoint: CGPointMake(4.86, 21.55)];
                [bezier3Path addCurveToPoint: CGPointMake(4.85, 21.6) controlPoint1: CGPointMake(4.86, 21.57) controlPoint2: CGPointMake(4.86, 21.58)];
                [bezier3Path addCurveToPoint: CGPointMake(4.82, 21.65) controlPoint1: CGPointMake(4.84, 21.62) controlPoint2: CGPointMake(4.84, 21.63)];
                [bezier3Path addCurveToPoint: CGPointMake(4.76, 21.69) controlPoint1: CGPointMake(4.8, 21.66) controlPoint2: CGPointMake(4.79, 21.68)];
                [bezier3Path addCurveToPoint: CGPointMake(4.67, 21.7) controlPoint1: CGPointMake(4.74, 21.7) controlPoint2: CGPointMake(4.7, 21.7)];
                [bezier3Path addCurveToPoint: CGPointMake(4.59, 21.69) controlPoint1: CGPointMake(4.64, 21.7) controlPoint2: CGPointMake(4.61, 21.7)];
                [bezier3Path addCurveToPoint: CGPointMake(4.54, 21.65) controlPoint1: CGPointMake(4.57, 21.68) controlPoint2: CGPointMake(4.55, 21.67)];
                [bezier3Path addCurveToPoint: CGPointMake(4.51, 21.6) controlPoint1: CGPointMake(4.52, 21.64) controlPoint2: CGPointMake(4.51, 21.62)];
                [bezier3Path addCurveToPoint: CGPointMake(4.5, 21.55) controlPoint1: CGPointMake(4.5, 21.58) controlPoint2: CGPointMake(4.5, 21.57)];
                [bezier3Path addLineToPoint: CGPointMake(4.5, 20.94)];
                [bezier3Path addLineToPoint: CGPointMake(3.8, 20.94)];
                [bezier3Path addCurveToPoint: CGPointMake(3.72, 20.92) controlPoint1: CGPointMake(3.76, 20.94) controlPoint2: CGPointMake(3.73, 20.93)];
                [bezier3Path addCurveToPoint: CGPointMake(3.7, 20.85) controlPoint1: CGPointMake(3.71, 20.91) controlPoint2: CGPointMake(3.7, 20.88)];
                [bezier3Path addLineToPoint: CGPointMake(3.7, 20.02)];
                [bezier3Path addCurveToPoint: CGPointMake(3.71, 19.97) controlPoint1: CGPointMake(3.7, 20) controlPoint2: CGPointMake(3.7, 19.98)];
                [bezier3Path addCurveToPoint: CGPointMake(3.74, 19.92) controlPoint1: CGPointMake(3.71, 19.95) controlPoint2: CGPointMake(3.73, 19.93)];
                [bezier3Path addCurveToPoint: CGPointMake(3.8, 19.88) controlPoint1: CGPointMake(3.75, 19.91) controlPoint2: CGPointMake(3.77, 19.89)];
                [bezier3Path addCurveToPoint: CGPointMake(3.88, 19.86) controlPoint1: CGPointMake(3.82, 19.87) controlPoint2: CGPointMake(3.85, 19.86)];
                [bezier3Path addCurveToPoint: CGPointMake(4.02, 19.9) controlPoint1: CGPointMake(3.94, 19.86) controlPoint2: CGPointMake(3.99, 19.87)];
                [bezier3Path addCurveToPoint: CGPointMake(4.06, 20.02) controlPoint1: CGPointMake(4.05, 19.93) controlPoint2: CGPointMake(4.06, 19.97)];
                [bezier3Path addLineToPoint: CGPointMake(4.06, 20.66)];
                [bezier3Path addLineToPoint: CGPointMake(4.5, 20.66)];
                [bezier3Path addLineToPoint: CGPointMake(4.5, 20)];
                [bezier3Path addCurveToPoint: CGPointMake(4.54, 19.89) controlPoint1: CGPointMake(4.5, 19.95) controlPoint2: CGPointMake(4.52, 19.92)];
                [bezier3Path addCurveToPoint: CGPointMake(4.67, 19.85) controlPoint1: CGPointMake(4.57, 19.86) controlPoint2: CGPointMake(4.61, 19.85)];
                [bezier3Path addCurveToPoint: CGPointMake(4.81, 19.89) controlPoint1: CGPointMake(4.73, 19.85) controlPoint2: CGPointMake(4.78, 19.86)];
                [bezier3Path addCurveToPoint: CGPointMake(4.86, 20) controlPoint1: CGPointMake(4.84, 19.92) controlPoint2: CGPointMake(4.86, 19.95)];
                [bezier3Path addLineToPoint: CGPointMake(4.86, 20.64)];
                [bezier3Path addLineToPoint: CGPointMake(4.91, 20.64)];
                [bezier3Path addLineToPoint: CGPointMake(4.91, 20.64)];
                [bezier3Path closePath];
                bezier3Path.miterLimit = 4;

                [fillColor setFill];
                [bezier3Path fill];


                //// Bezier 4 Drawing
                UIBezierPath* bezier4Path = [UIBezierPath bezierPath];
                [bezier4Path moveToPoint: CGPointMake(7.02, 21.15)];
                [bezier4Path addCurveToPoint: CGPointMake(6.99, 21.42) controlPoint1: CGPointMake(7.02, 21.26) controlPoint2: CGPointMake(7.01, 21.35)];
                [bezier4Path addCurveToPoint: CGPointMake(6.87, 21.59) controlPoint1: CGPointMake(6.97, 21.49) controlPoint2: CGPointMake(6.93, 21.55)];
                [bezier4Path addCurveToPoint: CGPointMake(6.64, 21.68) controlPoint1: CGPointMake(6.82, 21.63) controlPoint2: CGPointMake(6.74, 21.66)];
                [bezier4Path addCurveToPoint: CGPointMake(6.28, 21.71) controlPoint1: CGPointMake(6.54, 21.7) controlPoint2: CGPointMake(6.42, 21.71)];
                [bezier4Path addLineToPoint: CGPointMake(6.25, 21.71)];
                [bezier4Path addCurveToPoint: CGPointMake(6.13, 21.71) controlPoint1: CGPointMake(6.21, 21.71) controlPoint2: CGPointMake(6.17, 21.71)];
                [bezier4Path addCurveToPoint: CGPointMake(6, 21.7) controlPoint1: CGPointMake(6.09, 21.71) controlPoint2: CGPointMake(6.04, 21.71)];
                [bezier4Path addCurveToPoint: CGPointMake(5.87, 21.68) controlPoint1: CGPointMake(5.96, 21.69) controlPoint2: CGPointMake(5.91, 21.69)];
                [bezier4Path addCurveToPoint: CGPointMake(5.75, 21.64) controlPoint1: CGPointMake(5.82, 21.67) controlPoint2: CGPointMake(5.79, 21.66)];
                [bezier4Path addCurveToPoint: CGPointMake(5.67, 21.57) controlPoint1: CGPointMake(5.71, 21.62) controlPoint2: CGPointMake(5.69, 21.6)];
                [bezier4Path addCurveToPoint: CGPointMake(5.64, 21.47) controlPoint1: CGPointMake(5.65, 21.54) controlPoint2: CGPointMake(5.64, 21.51)];
                [bezier4Path addLineToPoint: CGPointMake(5.64, 21.46)];
                [bezier4Path addCurveToPoint: CGPointMake(5.69, 21.35) controlPoint1: CGPointMake(5.64, 21.42) controlPoint2: CGPointMake(5.66, 21.38)];
                [bezier4Path addCurveToPoint: CGPointMake(5.8, 21.31) controlPoint1: CGPointMake(5.72, 21.32) controlPoint2: CGPointMake(5.76, 21.31)];
                [bezier4Path addLineToPoint: CGPointMake(5.81, 21.31)];
                [bezier4Path addCurveToPoint: CGPointMake(5.87, 21.31) controlPoint1: CGPointMake(5.83, 21.31) controlPoint2: CGPointMake(5.85, 21.31)];
                [bezier4Path addCurveToPoint: CGPointMake(5.91, 21.32) controlPoint1: CGPointMake(5.89, 21.32) controlPoint2: CGPointMake(5.9, 21.32)];
                [bezier4Path addCurveToPoint: CGPointMake(5.94, 21.34) controlPoint1: CGPointMake(5.92, 21.33) controlPoint2: CGPointMake(5.93, 21.33)];
                [bezier4Path addCurveToPoint: CGPointMake(5.96, 21.36) controlPoint1: CGPointMake(5.95, 21.35) controlPoint2: CGPointMake(5.95, 21.35)];
                [bezier4Path addLineToPoint: CGPointMake(5.96, 21.36)];
                [bezier4Path addCurveToPoint: CGPointMake(6, 21.38) controlPoint1: CGPointMake(5.97, 21.37) controlPoint2: CGPointMake(5.98, 21.38)];
                [bezier4Path addCurveToPoint: CGPointMake(6.06, 21.4) controlPoint1: CGPointMake(6.01, 21.39) controlPoint2: CGPointMake(6.03, 21.39)];
                [bezier4Path addCurveToPoint: CGPointMake(6.15, 21.41) controlPoint1: CGPointMake(6.08, 21.41) controlPoint2: CGPointMake(6.11, 21.41)];
                [bezier4Path addCurveToPoint: CGPointMake(6.3, 21.41) controlPoint1: CGPointMake(6.19, 21.41) controlPoint2: CGPointMake(6.24, 21.41)];
                [bezier4Path addLineToPoint: CGPointMake(6.3, 21.41)];
                [bezier4Path addCurveToPoint: CGPointMake(6.48, 21.39) controlPoint1: CGPointMake(6.37, 21.41) controlPoint2: CGPointMake(6.43, 21.41)];
                [bezier4Path addCurveToPoint: CGPointMake(6.59, 21.34) controlPoint1: CGPointMake(6.53, 21.38) controlPoint2: CGPointMake(6.56, 21.36)];
                [bezier4Path addCurveToPoint: CGPointMake(6.64, 21.25) controlPoint1: CGPointMake(6.61, 21.32) controlPoint2: CGPointMake(6.63, 21.29)];
                [bezier4Path addCurveToPoint: CGPointMake(6.66, 21.13) controlPoint1: CGPointMake(6.65, 21.22) controlPoint2: CGPointMake(6.66, 21.18)];
                [bezier4Path addCurveToPoint: CGPointMake(6.62, 20.95) controlPoint1: CGPointMake(6.66, 21.05) controlPoint2: CGPointMake(6.65, 20.99)];
                [bezier4Path addCurveToPoint: CGPointMake(6.5, 20.9) controlPoint1: CGPointMake(6.6, 20.92) controlPoint2: CGPointMake(6.56, 20.9)];
                [bezier4Path addLineToPoint: CGPointMake(6.12, 20.9)];
                [bezier4Path addCurveToPoint: CGPointMake(6.06, 20.89) controlPoint1: CGPointMake(6.1, 20.9) controlPoint2: CGPointMake(6.08, 20.9)];
                [bezier4Path addCurveToPoint: CGPointMake(6, 20.87) controlPoint1: CGPointMake(6.04, 20.89) controlPoint2: CGPointMake(6.02, 20.88)];
                [bezier4Path addCurveToPoint: CGPointMake(5.96, 20.83) controlPoint1: CGPointMake(5.98, 20.86) controlPoint2: CGPointMake(5.97, 20.84)];
                [bezier4Path addCurveToPoint: CGPointMake(5.95, 20.76) controlPoint1: CGPointMake(5.95, 20.81) controlPoint2: CGPointMake(5.95, 20.79)];
                [bezier4Path addCurveToPoint: CGPointMake(6, 20.64) controlPoint1: CGPointMake(5.95, 20.7) controlPoint2: CGPointMake(5.97, 20.67)];
                [bezier4Path addCurveToPoint: CGPointMake(6.12, 20.61) controlPoint1: CGPointMake(6.04, 20.62) controlPoint2: CGPointMake(6.08, 20.61)];
                [bezier4Path addLineToPoint: CGPointMake(6.48, 20.61)];
                [bezier4Path addCurveToPoint: CGPointMake(6.55, 20.6) controlPoint1: CGPointMake(6.51, 20.61) controlPoint2: CGPointMake(6.53, 20.61)];
                [bezier4Path addCurveToPoint: CGPointMake(6.6, 20.57) controlPoint1: CGPointMake(6.57, 20.59) controlPoint2: CGPointMake(6.59, 20.58)];
                [bezier4Path addCurveToPoint: CGPointMake(6.63, 20.51) controlPoint1: CGPointMake(6.61, 20.55) controlPoint2: CGPointMake(6.62, 20.53)];
                [bezier4Path addCurveToPoint: CGPointMake(6.64, 20.4) controlPoint1: CGPointMake(6.64, 20.48) controlPoint2: CGPointMake(6.64, 20.45)];
                [bezier4Path addCurveToPoint: CGPointMake(6.63, 20.28) controlPoint1: CGPointMake(6.64, 20.35) controlPoint2: CGPointMake(6.64, 20.31)];
                [bezier4Path addCurveToPoint: CGPointMake(6.59, 20.2) controlPoint1: CGPointMake(6.63, 20.25) controlPoint2: CGPointMake(6.61, 20.22)];
                [bezier4Path addCurveToPoint: CGPointMake(6.49, 20.16) controlPoint1: CGPointMake(6.57, 20.18) controlPoint2: CGPointMake(6.53, 20.16)];
                [bezier4Path addCurveToPoint: CGPointMake(6.31, 20.15) controlPoint1: CGPointMake(6.44, 20.15) controlPoint2: CGPointMake(6.38, 20.15)];
                [bezier4Path addLineToPoint: CGPointMake(6.3, 20.15)];
                [bezier4Path addCurveToPoint: CGPointMake(6.15, 20.16) controlPoint1: CGPointMake(6.25, 20.15) controlPoint2: CGPointMake(6.2, 20.15)];
                [bezier4Path addCurveToPoint: CGPointMake(6.02, 20.19) controlPoint1: CGPointMake(6.1, 20.17) controlPoint2: CGPointMake(6.05, 20.18)];
                [bezier4Path addCurveToPoint: CGPointMake(5.98, 20.22) controlPoint1: CGPointMake(6.01, 20.2) controlPoint2: CGPointMake(6, 20.21)];
                [bezier4Path addCurveToPoint: CGPointMake(5.94, 20.24) controlPoint1: CGPointMake(5.97, 20.23) controlPoint2: CGPointMake(5.96, 20.24)];
                [bezier4Path addCurveToPoint: CGPointMake(5.9, 20.25) controlPoint1: CGPointMake(5.93, 20.25) controlPoint2: CGPointMake(5.91, 20.25)];
                [bezier4Path addCurveToPoint: CGPointMake(5.85, 20.25) controlPoint1: CGPointMake(5.88, 20.25) controlPoint2: CGPointMake(5.87, 20.25)];
                [bezier4Path addLineToPoint: CGPointMake(5.84, 20.25)];
                [bezier4Path addCurveToPoint: CGPointMake(5.73, 20.21) controlPoint1: CGPointMake(5.8, 20.25) controlPoint2: CGPointMake(5.76, 20.24)];
                [bezier4Path addCurveToPoint: CGPointMake(5.68, 20.11) controlPoint1: CGPointMake(5.7, 20.18) controlPoint2: CGPointMake(5.68, 20.15)];
                [bezier4Path addLineToPoint: CGPointMake(5.68, 20.11)];
                [bezier4Path addCurveToPoint: CGPointMake(5.72, 20) controlPoint1: CGPointMake(5.68, 20.07) controlPoint2: CGPointMake(5.7, 20.03)];
                [bezier4Path addCurveToPoint: CGPointMake(5.83, 19.92) controlPoint1: CGPointMake(5.75, 19.97) controlPoint2: CGPointMake(5.78, 19.94)];
                [bezier4Path addCurveToPoint: CGPointMake(6.01, 19.87) controlPoint1: CGPointMake(5.87, 19.9) controlPoint2: CGPointMake(5.94, 19.88)];
                [bezier4Path addCurveToPoint: CGPointMake(6.29, 19.85) controlPoint1: CGPointMake(6.09, 19.86) controlPoint2: CGPointMake(6.18, 19.85)];
                [bezier4Path addCurveToPoint: CGPointMake(6.63, 19.87) controlPoint1: CGPointMake(6.42, 19.85) controlPoint2: CGPointMake(6.53, 19.86)];
                [bezier4Path addCurveToPoint: CGPointMake(6.85, 19.95) controlPoint1: CGPointMake(6.72, 19.88) controlPoint2: CGPointMake(6.8, 19.91)];
                [bezier4Path addCurveToPoint: CGPointMake(6.97, 20.11) controlPoint1: CGPointMake(6.9, 19.99) controlPoint2: CGPointMake(6.95, 20.04)];
                [bezier4Path addCurveToPoint: CGPointMake(7.01, 20.37) controlPoint1: CGPointMake(7, 20.18) controlPoint2: CGPointMake(7.01, 20.26)];
                [bezier4Path addCurveToPoint: CGPointMake(7, 20.51) controlPoint1: CGPointMake(7.01, 20.42) controlPoint2: CGPointMake(7.01, 20.47)];
                [bezier4Path addCurveToPoint: CGPointMake(6.99, 20.62) controlPoint1: CGPointMake(7.01, 20.55) controlPoint2: CGPointMake(7, 20.59)];
                [bezier4Path addCurveToPoint: CGPointMake(6.96, 20.7) controlPoint1: CGPointMake(6.98, 20.65) controlPoint2: CGPointMake(6.97, 20.68)];
                [bezier4Path addCurveToPoint: CGPointMake(6.91, 20.76) controlPoint1: CGPointMake(6.94, 20.72) controlPoint2: CGPointMake(6.93, 20.74)];
                [bezier4Path addCurveToPoint: CGPointMake(6.95, 20.8) controlPoint1: CGPointMake(6.93, 20.77) controlPoint2: CGPointMake(6.94, 20.79)];
                [bezier4Path addCurveToPoint: CGPointMake(6.98, 20.87) controlPoint1: CGPointMake(6.96, 20.82) controlPoint2: CGPointMake(6.97, 20.84)];
                [bezier4Path addCurveToPoint: CGPointMake(7.01, 20.98) controlPoint1: CGPointMake(6.99, 20.9) controlPoint2: CGPointMake(7, 20.94)];
                [bezier4Path addCurveToPoint: CGPointMake(7.02, 21.15) controlPoint1: CGPointMake(7.02, 21.03) controlPoint2: CGPointMake(7.02, 21.08)];
                [bezier4Path closePath];
                bezier4Path.miterLimit = 4;

                [fillColor setFill];
                [bezier4Path fill];


                //// Bezier 5 Drawing
                UIBezierPath* bezier5Path = [UIBezierPath bezierPath];
                [bezier5Path moveToPoint: CGPointMake(9.02, 21.2)];
                [bezier5Path addLineToPoint: CGPointMake(9.02, 21.2)];
                [bezier5Path addCurveToPoint: CGPointMake(8.98, 21.44) controlPoint1: CGPointMake(9.03, 21.3) controlPoint2: CGPointMake(9.01, 21.38)];
                [bezier5Path addCurveToPoint: CGPointMake(8.83, 21.6) controlPoint1: CGPointMake(8.94, 21.5) controlPoint2: CGPointMake(8.9, 21.56)];
                [bezier5Path addCurveToPoint: CGPointMake(8.61, 21.68) controlPoint1: CGPointMake(8.77, 21.64) controlPoint2: CGPointMake(8.7, 21.67)];
                [bezier5Path addCurveToPoint: CGPointMake(8.33, 21.7) controlPoint1: CGPointMake(8.53, 21.7) controlPoint2: CGPointMake(8.43, 21.7)];
                [bezier5Path addCurveToPoint: CGPointMake(8.04, 21.67) controlPoint1: CGPointMake(8.22, 21.7) controlPoint2: CGPointMake(8.13, 21.69)];
                [bezier5Path addCurveToPoint: CGPointMake(7.82, 21.58) controlPoint1: CGPointMake(7.95, 21.65) controlPoint2: CGPointMake(7.88, 21.62)];
                [bezier5Path addCurveToPoint: CGPointMake(7.68, 21.43) controlPoint1: CGPointMake(7.76, 21.54) controlPoint2: CGPointMake(7.72, 21.49)];
                [bezier5Path addCurveToPoint: CGPointMake(7.64, 21.21) controlPoint1: CGPointMake(7.65, 21.37) controlPoint2: CGPointMake(7.64, 21.3)];
                [bezier5Path addLineToPoint: CGPointMake(7.64, 20.32)];
                [bezier5Path addCurveToPoint: CGPointMake(7.82, 19.96) controlPoint1: CGPointMake(7.64, 20.16) controlPoint2: CGPointMake(7.7, 20.04)];
                [bezier5Path addCurveToPoint: CGPointMake(8.33, 19.84) controlPoint1: CGPointMake(7.94, 19.88) controlPoint2: CGPointMake(8.11, 19.84)];
                [bezier5Path addCurveToPoint: CGPointMake(8.61, 19.87) controlPoint1: CGPointMake(8.43, 19.84) controlPoint2: CGPointMake(8.53, 19.85)];
                [bezier5Path addCurveToPoint: CGPointMake(8.82, 19.96) controlPoint1: CGPointMake(8.69, 19.89) controlPoint2: CGPointMake(8.76, 19.92)];
                [bezier5Path addCurveToPoint: CGPointMake(8.96, 20.11) controlPoint1: CGPointMake(8.88, 20) controlPoint2: CGPointMake(8.93, 20.05)];
                [bezier5Path addCurveToPoint: CGPointMake(9, 20.32) controlPoint1: CGPointMake(8.99, 20.17) controlPoint2: CGPointMake(9, 20.24)];
                [bezier5Path addLineToPoint: CGPointMake(9, 21.2)];
                [bezier5Path addLineToPoint: CGPointMake(9.02, 21.2)];
                [bezier5Path closePath];
                [bezier5Path moveToPoint: CGPointMake(8.66, 20.35)];
                [bezier5Path addCurveToPoint: CGPointMake(8.58, 20.2) controlPoint1: CGPointMake(8.66, 20.29) controlPoint2: CGPointMake(8.63, 20.23)];
                [bezier5Path addCurveToPoint: CGPointMake(8.33, 20.14) controlPoint1: CGPointMake(8.52, 20.16) controlPoint2: CGPointMake(8.44, 20.14)];
                [bezier5Path addCurveToPoint: CGPointMake(8.08, 20.19) controlPoint1: CGPointMake(8.22, 20.14) controlPoint2: CGPointMake(8.14, 20.16)];
                [bezier5Path addCurveToPoint: CGPointMake(8, 20.34) controlPoint1: CGPointMake(8.03, 20.23) controlPoint2: CGPointMake(8, 20.28)];
                [bezier5Path addLineToPoint: CGPointMake(8, 21.21)];
                [bezier5Path addCurveToPoint: CGPointMake(8.08, 21.36) controlPoint1: CGPointMake(8, 21.28) controlPoint2: CGPointMake(8.03, 21.33)];
                [bezier5Path addCurveToPoint: CGPointMake(8.33, 21.4) controlPoint1: CGPointMake(8.13, 21.39) controlPoint2: CGPointMake(8.22, 21.4)];
                [bezier5Path addCurveToPoint: CGPointMake(8.57, 21.35) controlPoint1: CGPointMake(8.43, 21.4) controlPoint2: CGPointMake(8.51, 21.39)];
                [bezier5Path addCurveToPoint: CGPointMake(8.66, 21.2) controlPoint1: CGPointMake(8.63, 21.32) controlPoint2: CGPointMake(8.66, 21.27)];
                [bezier5Path addLineToPoint: CGPointMake(8.66, 20.35)];
                [bezier5Path closePath];
                bezier5Path.miterLimit = 4;

                [fillColor setFill];
                [bezier5Path fill];


                //// Bezier 6 Drawing
                UIBezierPath* bezier6Path = [UIBezierPath bezierPath];
                [bezier6Path moveToPoint: CGPointMake(10.73, 20.65)];
                [bezier6Path addCurveToPoint: CGPointMake(10.89, 20.73) controlPoint1: CGPointMake(10.79, 20.67) controlPoint2: CGPointMake(10.85, 20.69)];
                [bezier6Path addCurveToPoint: CGPointMake(10.98, 20.89) controlPoint1: CGPointMake(10.93, 20.77) controlPoint2: CGPointMake(10.96, 20.82)];
                [bezier6Path addCurveToPoint: CGPointMake(11.01, 21.15) controlPoint1: CGPointMake(11, 20.96) controlPoint2: CGPointMake(11.01, 21.05)];
                [bezier6Path addCurveToPoint: CGPointMake(10.98, 21.41) controlPoint1: CGPointMake(11.01, 21.26) controlPoint2: CGPointMake(11, 21.34)];
                [bezier6Path addCurveToPoint: CGPointMake(10.86, 21.58) controlPoint1: CGPointMake(10.96, 21.48) controlPoint2: CGPointMake(10.92, 21.54)];
                [bezier6Path addCurveToPoint: CGPointMake(10.63, 21.67) controlPoint1: CGPointMake(10.8, 21.62) controlPoint2: CGPointMake(10.73, 21.65)];
                [bezier6Path addCurveToPoint: CGPointMake(10.27, 21.7) controlPoint1: CGPointMake(10.54, 21.69) controlPoint2: CGPointMake(10.42, 21.7)];
                [bezier6Path addLineToPoint: CGPointMake(10.19, 21.7)];
                [bezier6Path addCurveToPoint: CGPointMake(10.01, 21.69) controlPoint1: CGPointMake(10.14, 21.7) controlPoint2: CGPointMake(10.08, 21.7)];
                [bezier6Path addCurveToPoint: CGPointMake(9.83, 21.66) controlPoint1: CGPointMake(9.95, 21.69) controlPoint2: CGPointMake(9.88, 21.68)];
                [bezier6Path addCurveToPoint: CGPointMake(9.69, 21.59) controlPoint1: CGPointMake(9.77, 21.64) controlPoint2: CGPointMake(9.73, 21.62)];
                [bezier6Path addCurveToPoint: CGPointMake(9.63, 21.45) controlPoint1: CGPointMake(9.65, 21.56) controlPoint2: CGPointMake(9.63, 21.51)];
                [bezier6Path addLineToPoint: CGPointMake(9.63, 21.44)];
                [bezier6Path addCurveToPoint: CGPointMake(9.68, 21.33) controlPoint1: CGPointMake(9.63, 21.4) controlPoint2: CGPointMake(9.65, 21.36)];
                [bezier6Path addCurveToPoint: CGPointMake(9.79, 21.29) controlPoint1: CGPointMake(9.71, 21.3) controlPoint2: CGPointMake(9.75, 21.29)];
                [bezier6Path addLineToPoint: CGPointMake(9.79, 21.29)];
                [bezier6Path addCurveToPoint: CGPointMake(9.87, 21.3) controlPoint1: CGPointMake(9.83, 21.29) controlPoint2: CGPointMake(9.85, 21.3)];
                [bezier6Path addCurveToPoint: CGPointMake(9.92, 21.32) controlPoint1: CGPointMake(9.89, 21.31) controlPoint2: CGPointMake(9.91, 21.31)];
                [bezier6Path addCurveToPoint: CGPointMake(9.96, 21.35) controlPoint1: CGPointMake(9.94, 21.33) controlPoint2: CGPointMake(9.95, 21.34)];
                [bezier6Path addCurveToPoint: CGPointMake(10.02, 21.37) controlPoint1: CGPointMake(9.98, 21.36) controlPoint2: CGPointMake(10, 21.37)];
                [bezier6Path addCurveToPoint: CGPointMake(10.13, 21.39) controlPoint1: CGPointMake(10.05, 21.38) controlPoint2: CGPointMake(10.08, 21.38)];
                [bezier6Path addCurveToPoint: CGPointMake(10.31, 21.4) controlPoint1: CGPointMake(10.17, 21.4) controlPoint2: CGPointMake(10.23, 21.4)];
                [bezier6Path addCurveToPoint: CGPointMake(10.49, 21.38) controlPoint1: CGPointMake(10.38, 21.4) controlPoint2: CGPointMake(10.44, 21.4)];
                [bezier6Path addCurveToPoint: CGPointMake(10.6, 21.33) controlPoint1: CGPointMake(10.54, 21.37) controlPoint2: CGPointMake(10.57, 21.35)];
                [bezier6Path addCurveToPoint: CGPointMake(10.66, 21.24) controlPoint1: CGPointMake(10.63, 21.31) controlPoint2: CGPointMake(10.65, 21.28)];
                [bezier6Path addCurveToPoint: CGPointMake(10.67, 21.12) controlPoint1: CGPointMake(10.67, 21.21) controlPoint2: CGPointMake(10.67, 21.17)];
                [bezier6Path addCurveToPoint: CGPointMake(10.64, 20.95) controlPoint1: CGPointMake(10.67, 21.04) controlPoint2: CGPointMake(10.66, 20.98)];
                [bezier6Path addCurveToPoint: CGPointMake(10.52, 20.9) controlPoint1: CGPointMake(10.62, 20.92) controlPoint2: CGPointMake(10.58, 20.9)];
                [bezier6Path addLineToPoint: CGPointMake(9.89, 20.9)];
                [bezier6Path addCurveToPoint: CGPointMake(9.76, 20.89) controlPoint1: CGPointMake(9.84, 20.9) controlPoint2: CGPointMake(9.79, 20.9)];
                [bezier6Path addCurveToPoint: CGPointMake(9.69, 20.86) controlPoint1: CGPointMake(9.73, 20.89) controlPoint2: CGPointMake(9.7, 20.87)];
                [bezier6Path addCurveToPoint: CGPointMake(9.66, 20.79) controlPoint1: CGPointMake(9.67, 20.84) controlPoint2: CGPointMake(9.66, 20.82)];
                [bezier6Path addCurveToPoint: CGPointMake(9.65, 20.68) controlPoint1: CGPointMake(9.65, 20.76) controlPoint2: CGPointMake(9.65, 20.73)];
                [bezier6Path addLineToPoint: CGPointMake(9.65, 20)];
                [bezier6Path addCurveToPoint: CGPointMake(9.69, 19.88) controlPoint1: CGPointMake(9.65, 19.95) controlPoint2: CGPointMake(9.66, 19.91)];
                [bezier6Path addCurveToPoint: CGPointMake(9.84, 19.84) controlPoint1: CGPointMake(9.72, 19.85) controlPoint2: CGPointMake(9.77, 19.84)];
                [bezier6Path addCurveToPoint: CGPointMake(9.95, 19.84) controlPoint1: CGPointMake(9.86, 19.84) controlPoint2: CGPointMake(9.9, 19.84)];
                [bezier6Path addCurveToPoint: CGPointMake(10.12, 19.84) controlPoint1: CGPointMake(10, 19.84) controlPoint2: CGPointMake(10.05, 19.84)];
                [bezier6Path addCurveToPoint: CGPointMake(10.31, 19.84) controlPoint1: CGPointMake(10.18, 19.84) controlPoint2: CGPointMake(10.24, 19.84)];
                [bezier6Path addCurveToPoint: CGPointMake(10.49, 19.84) controlPoint1: CGPointMake(10.38, 19.84) controlPoint2: CGPointMake(10.44, 19.84)];
                [bezier6Path addCurveToPoint: CGPointMake(10.64, 19.84) controlPoint1: CGPointMake(10.55, 19.84) controlPoint2: CGPointMake(10.59, 19.84)];
                [bezier6Path addCurveToPoint: CGPointMake(10.72, 19.84) controlPoint1: CGPointMake(10.68, 19.84) controlPoint2: CGPointMake(10.71, 19.84)];
                [bezier6Path addCurveToPoint: CGPointMake(10.79, 19.85) controlPoint1: CGPointMake(10.74, 19.84) controlPoint2: CGPointMake(10.76, 19.84)];
                [bezier6Path addCurveToPoint: CGPointMake(10.85, 19.87) controlPoint1: CGPointMake(10.81, 19.85) controlPoint2: CGPointMake(10.83, 19.86)];
                [bezier6Path addCurveToPoint: CGPointMake(10.9, 19.91) controlPoint1: CGPointMake(10.87, 19.88) controlPoint2: CGPointMake(10.89, 19.9)];
                [bezier6Path addCurveToPoint: CGPointMake(10.92, 19.99) controlPoint1: CGPointMake(10.91, 19.93) controlPoint2: CGPointMake(10.92, 19.95)];
                [bezier6Path addLineToPoint: CGPointMake(10.92, 19.99)];
                [bezier6Path addCurveToPoint: CGPointMake(10.9, 20.07) controlPoint1: CGPointMake(10.92, 20.03) controlPoint2: CGPointMake(10.91, 20.05)];
                [bezier6Path addCurveToPoint: CGPointMake(10.86, 20.11) controlPoint1: CGPointMake(10.89, 20.09) controlPoint2: CGPointMake(10.87, 20.1)];
                [bezier6Path addCurveToPoint: CGPointMake(10.79, 20.13) controlPoint1: CGPointMake(10.84, 20.12) controlPoint2: CGPointMake(10.82, 20.12)];
                [bezier6Path addCurveToPoint: CGPointMake(10.71, 20.13) controlPoint1: CGPointMake(10.77, 20.13) controlPoint2: CGPointMake(10.74, 20.13)];
                [bezier6Path addLineToPoint: CGPointMake(10, 20.13)];
                [bezier6Path addLineToPoint: CGPointMake(10, 20.59)];
                [bezier6Path addLineToPoint: CGPointMake(10.47, 20.59)];
                [bezier6Path addCurveToPoint: CGPointMake(10.73, 20.65) controlPoint1: CGPointMake(10.58, 20.62) controlPoint2: CGPointMake(10.66, 20.63)];
                [bezier6Path closePath];
                bezier6Path.miterLimit = 4;

                [fillColor setFill];
                [bezier6Path fill];


                //// Bezier 7 Drawing
                UIBezierPath* bezier7Path = [UIBezierPath bezierPath];
                [bezier7Path moveToPoint: CGPointMake(13.61, 20.57)];
                [bezier7Path addCurveToPoint: CGPointMake(13.9, 20.61) controlPoint1: CGPointMake(13.72, 20.57) controlPoint2: CGPointMake(13.82, 20.58)];
                [bezier7Path addCurveToPoint: CGPointMake(14.09, 20.72) controlPoint1: CGPointMake(13.98, 20.63) controlPoint2: CGPointMake(14.04, 20.67)];
                [bezier7Path addCurveToPoint: CGPointMake(14.19, 20.9) controlPoint1: CGPointMake(14.14, 20.77) controlPoint2: CGPointMake(14.17, 20.83)];
                [bezier7Path addCurveToPoint: CGPointMake(14.22, 21.15) controlPoint1: CGPointMake(14.21, 20.97) controlPoint2: CGPointMake(14.22, 21.06)];
                [bezier7Path addCurveToPoint: CGPointMake(14.19, 21.39) controlPoint1: CGPointMake(14.22, 21.24) controlPoint2: CGPointMake(14.21, 21.32)];
                [bezier7Path addCurveToPoint: CGPointMake(14.07, 21.57) controlPoint1: CGPointMake(14.17, 21.46) controlPoint2: CGPointMake(14.13, 21.52)];
                [bezier7Path addCurveToPoint: CGPointMake(13.86, 21.68) controlPoint1: CGPointMake(14.02, 21.62) controlPoint2: CGPointMake(13.95, 21.65)];
                [bezier7Path addCurveToPoint: CGPointMake(13.53, 21.72) controlPoint1: CGPointMake(13.77, 21.7) controlPoint2: CGPointMake(13.66, 21.72)];
                [bezier7Path addCurveToPoint: CGPointMake(13.26, 21.69) controlPoint1: CGPointMake(13.43, 21.72) controlPoint2: CGPointMake(13.34, 21.71)];
                [bezier7Path addCurveToPoint: CGPointMake(13.05, 21.6) controlPoint1: CGPointMake(13.18, 21.67) controlPoint2: CGPointMake(13.11, 21.64)];
                [bezier7Path addCurveToPoint: CGPointMake(12.91, 21.44) controlPoint1: CGPointMake(12.99, 21.56) controlPoint2: CGPointMake(12.94, 21.51)];
                [bezier7Path addCurveToPoint: CGPointMake(12.86, 21.2) controlPoint1: CGPointMake(12.88, 21.37) controlPoint2: CGPointMake(12.86, 21.3)];
                [bezier7Path addLineToPoint: CGPointMake(12.86, 20)];
                [bezier7Path addCurveToPoint: CGPointMake(12.87, 19.95) controlPoint1: CGPointMake(12.86, 19.98) controlPoint2: CGPointMake(12.86, 19.97)];
                [bezier7Path addCurveToPoint: CGPointMake(12.9, 19.9) controlPoint1: CGPointMake(12.88, 19.93) controlPoint2: CGPointMake(12.89, 19.91)];
                [bezier7Path addCurveToPoint: CGPointMake(12.96, 19.86) controlPoint1: CGPointMake(12.91, 19.89) controlPoint2: CGPointMake(12.93, 19.87)];
                [bezier7Path addCurveToPoint: CGPointMake(13.05, 19.85) controlPoint1: CGPointMake(12.98, 19.85) controlPoint2: CGPointMake(13.01, 19.85)];
                [bezier7Path addCurveToPoint: CGPointMake(13.18, 19.89) controlPoint1: CGPointMake(13.11, 19.85) controlPoint2: CGPointMake(13.15, 19.86)];
                [bezier7Path addCurveToPoint: CGPointMake(13.22, 20) controlPoint1: CGPointMake(13.21, 19.92) controlPoint2: CGPointMake(13.22, 19.95)];
                [bezier7Path addLineToPoint: CGPointMake(13.22, 20.59)];
                [bezier7Path addCurveToPoint: CGPointMake(13.44, 20.57) controlPoint1: CGPointMake(13.31, 20.58) controlPoint2: CGPointMake(13.38, 20.57)];
                [bezier7Path addCurveToPoint: CGPointMake(13.61, 20.57) controlPoint1: CGPointMake(13.51, 20.57) controlPoint2: CGPointMake(13.57, 20.57)];
                [bezier7Path closePath];
                [bezier7Path moveToPoint: CGPointMake(13.88, 21.13)];
                [bezier7Path addCurveToPoint: CGPointMake(13.87, 21) controlPoint1: CGPointMake(13.88, 21.07) controlPoint2: CGPointMake(13.88, 21.03)];
                [bezier7Path addCurveToPoint: CGPointMake(13.81, 20.92) controlPoint1: CGPointMake(13.86, 20.96) controlPoint2: CGPointMake(13.84, 20.94)];
                [bezier7Path addCurveToPoint: CGPointMake(13.71, 20.88) controlPoint1: CGPointMake(13.79, 20.9) controlPoint2: CGPointMake(13.75, 20.89)];
                [bezier7Path addCurveToPoint: CGPointMake(13.55, 20.87) controlPoint1: CGPointMake(13.67, 20.87) controlPoint2: CGPointMake(13.62, 20.87)];
                [bezier7Path addCurveToPoint: CGPointMake(13.43, 20.87) controlPoint1: CGPointMake(13.5, 20.87) controlPoint2: CGPointMake(13.45, 20.87)];
                [bezier7Path addCurveToPoint: CGPointMake(13.35, 20.87) controlPoint1: CGPointMake(13.4, 20.87) controlPoint2: CGPointMake(13.37, 20.87)];
                [bezier7Path addCurveToPoint: CGPointMake(13.29, 20.88) controlPoint1: CGPointMake(13.33, 20.87) controlPoint2: CGPointMake(13.31, 20.87)];
                [bezier7Path addCurveToPoint: CGPointMake(13.23, 20.89) controlPoint1: CGPointMake(13.27, 20.88) controlPoint2: CGPointMake(13.25, 20.89)];
                [bezier7Path addLineToPoint: CGPointMake(13.23, 21.12)];
                [bezier7Path addCurveToPoint: CGPointMake(13.25, 21.25) controlPoint1: CGPointMake(13.23, 21.17) controlPoint2: CGPointMake(13.23, 21.21)];
                [bezier7Path addCurveToPoint: CGPointMake(13.3, 21.34) controlPoint1: CGPointMake(13.26, 21.28) controlPoint2: CGPointMake(13.28, 21.31)];
                [bezier7Path addCurveToPoint: CGPointMake(13.4, 21.39) controlPoint1: CGPointMake(13.33, 21.37) controlPoint2: CGPointMake(13.36, 21.38)];
                [bezier7Path addCurveToPoint: CGPointMake(13.56, 21.41) controlPoint1: CGPointMake(13.44, 21.4) controlPoint2: CGPointMake(13.49, 21.41)];
                [bezier7Path addCurveToPoint: CGPointMake(13.71, 21.4) controlPoint1: CGPointMake(13.62, 21.41) controlPoint2: CGPointMake(13.67, 21.41)];
                [bezier7Path addCurveToPoint: CGPointMake(13.81, 21.36) controlPoint1: CGPointMake(13.75, 21.39) controlPoint2: CGPointMake(13.78, 21.38)];
                [bezier7Path addCurveToPoint: CGPointMake(13.87, 21.28) controlPoint1: CGPointMake(13.84, 21.34) controlPoint2: CGPointMake(13.86, 21.31)];
                [bezier7Path addCurveToPoint: CGPointMake(13.88, 21.13) controlPoint1: CGPointMake(13.87, 21.24) controlPoint2: CGPointMake(13.88, 21.19)];
                [bezier7Path closePath];
                bezier7Path.miterLimit = 4;

                [fillColor setFill];
                [bezier7Path fill];


                //// Bezier 8 Drawing
                UIBezierPath* bezier8Path = [UIBezierPath bezierPath];
                [bezier8Path moveToPoint: CGPointMake(16.15, 21.2)];
                [bezier8Path addLineToPoint: CGPointMake(16.15, 21.2)];
                [bezier8Path addCurveToPoint: CGPointMake(16.11, 21.44) controlPoint1: CGPointMake(16.15, 21.3) controlPoint2: CGPointMake(16.14, 21.38)];
                [bezier8Path addCurveToPoint: CGPointMake(15.97, 21.6) controlPoint1: CGPointMake(16.07, 21.5) controlPoint2: CGPointMake(16.03, 21.56)];
                [bezier8Path addCurveToPoint: CGPointMake(15.75, 21.68) controlPoint1: CGPointMake(15.91, 21.64) controlPoint2: CGPointMake(15.84, 21.67)];
                [bezier8Path addCurveToPoint: CGPointMake(15.47, 21.7) controlPoint1: CGPointMake(15.67, 21.7) controlPoint2: CGPointMake(15.57, 21.7)];
                [bezier8Path addCurveToPoint: CGPointMake(15.19, 21.67) controlPoint1: CGPointMake(15.37, 21.7) controlPoint2: CGPointMake(15.27, 21.69)];
                [bezier8Path addCurveToPoint: CGPointMake(14.98, 21.58) controlPoint1: CGPointMake(15.11, 21.65) controlPoint2: CGPointMake(15.03, 21.62)];
                [bezier8Path addCurveToPoint: CGPointMake(14.85, 21.43) controlPoint1: CGPointMake(14.92, 21.54) controlPoint2: CGPointMake(14.88, 21.49)];
                [bezier8Path addCurveToPoint: CGPointMake(14.8, 21.21) controlPoint1: CGPointMake(14.82, 21.37) controlPoint2: CGPointMake(14.8, 21.3)];
                [bezier8Path addLineToPoint: CGPointMake(14.8, 20.32)];
                [bezier8Path addCurveToPoint: CGPointMake(14.98, 19.96) controlPoint1: CGPointMake(14.8, 20.16) controlPoint2: CGPointMake(14.86, 20.04)];
                [bezier8Path addCurveToPoint: CGPointMake(15.49, 19.84) controlPoint1: CGPointMake(15.1, 19.88) controlPoint2: CGPointMake(15.27, 19.84)];
                [bezier8Path addCurveToPoint: CGPointMake(15.77, 19.87) controlPoint1: CGPointMake(15.59, 19.84) controlPoint2: CGPointMake(15.69, 19.85)];
                [bezier8Path addCurveToPoint: CGPointMake(15.99, 19.96) controlPoint1: CGPointMake(15.85, 19.89) controlPoint2: CGPointMake(15.93, 19.92)];
                [bezier8Path addCurveToPoint: CGPointMake(16.13, 20.11) controlPoint1: CGPointMake(16.05, 20) controlPoint2: CGPointMake(16.09, 20.05)];
                [bezier8Path addCurveToPoint: CGPointMake(16.18, 20.32) controlPoint1: CGPointMake(16.16, 20.17) controlPoint2: CGPointMake(16.18, 20.24)];
                [bezier8Path addLineToPoint: CGPointMake(16.18, 21.2)];
                [bezier8Path addLineToPoint: CGPointMake(16.15, 21.2)];
                [bezier8Path closePath];
                [bezier8Path moveToPoint: CGPointMake(15.79, 20.35)];
                [bezier8Path addCurveToPoint: CGPointMake(15.71, 20.2) controlPoint1: CGPointMake(15.79, 20.29) controlPoint2: CGPointMake(15.76, 20.23)];
                [bezier8Path addCurveToPoint: CGPointMake(15.46, 20.14) controlPoint1: CGPointMake(15.66, 20.16) controlPoint2: CGPointMake(15.57, 20.14)];
                [bezier8Path addCurveToPoint: CGPointMake(15.21, 20.19) controlPoint1: CGPointMake(15.35, 20.14) controlPoint2: CGPointMake(15.27, 20.16)];
                [bezier8Path addCurveToPoint: CGPointMake(15.13, 20.33) controlPoint1: CGPointMake(15.16, 20.23) controlPoint2: CGPointMake(15.13, 20.27)];
                [bezier8Path addLineToPoint: CGPointMake(15.13, 21.2)];
                [bezier8Path addCurveToPoint: CGPointMake(15.21, 21.35) controlPoint1: CGPointMake(15.13, 21.27) controlPoint2: CGPointMake(15.16, 21.32)];
                [bezier8Path addCurveToPoint: CGPointMake(15.45, 21.39) controlPoint1: CGPointMake(15.27, 21.38) controlPoint2: CGPointMake(15.35, 21.39)];
                [bezier8Path addCurveToPoint: CGPointMake(15.7, 21.34) controlPoint1: CGPointMake(15.56, 21.39) controlPoint2: CGPointMake(15.64, 21.38)];
                [bezier8Path addCurveToPoint: CGPointMake(15.79, 21.19) controlPoint1: CGPointMake(15.76, 21.31) controlPoint2: CGPointMake(15.79, 21.26)];
                [bezier8Path addLineToPoint: CGPointMake(15.79, 20.35)];
                [bezier8Path closePath];
                bezier8Path.miterLimit = 4;

                [fillColor setFill];
                [bezier8Path fill];


                //// Bezier 9 Drawing
                UIBezierPath* bezier9Path = [UIBezierPath bezierPath];
                [bezier9Path moveToPoint: CGPointMake(17.86, 20.65)];
                [bezier9Path addCurveToPoint: CGPointMake(18.02, 20.73) controlPoint1: CGPointMake(17.93, 20.67) controlPoint2: CGPointMake(17.98, 20.69)];
                [bezier9Path addCurveToPoint: CGPointMake(18.11, 20.89) controlPoint1: CGPointMake(18.06, 20.77) controlPoint2: CGPointMake(18.09, 20.82)];
                [bezier9Path addCurveToPoint: CGPointMake(18.14, 21.15) controlPoint1: CGPointMake(18.13, 20.96) controlPoint2: CGPointMake(18.14, 21.05)];
                [bezier9Path addCurveToPoint: CGPointMake(18.11, 21.41) controlPoint1: CGPointMake(18.14, 21.26) controlPoint2: CGPointMake(18.13, 21.34)];
                [bezier9Path addCurveToPoint: CGPointMake(17.99, 21.58) controlPoint1: CGPointMake(18.09, 21.48) controlPoint2: CGPointMake(18.05, 21.54)];
                [bezier9Path addCurveToPoint: CGPointMake(17.76, 21.67) controlPoint1: CGPointMake(17.94, 21.62) controlPoint2: CGPointMake(17.86, 21.65)];
                [bezier9Path addCurveToPoint: CGPointMake(17.4, 21.7) controlPoint1: CGPointMake(17.66, 21.69) controlPoint2: CGPointMake(17.54, 21.7)];
                [bezier9Path addLineToPoint: CGPointMake(17.32, 21.7)];
                [bezier9Path addCurveToPoint: CGPointMake(17.14, 21.69) controlPoint1: CGPointMake(17.26, 21.7) controlPoint2: CGPointMake(17.2, 21.7)];
                [bezier9Path addCurveToPoint: CGPointMake(16.96, 21.66) controlPoint1: CGPointMake(17.07, 21.69) controlPoint2: CGPointMake(17.01, 21.68)];
                [bezier9Path addCurveToPoint: CGPointMake(16.82, 21.59) controlPoint1: CGPointMake(16.9, 21.64) controlPoint2: CGPointMake(16.86, 21.62)];
                [bezier9Path addCurveToPoint: CGPointMake(16.76, 21.45) controlPoint1: CGPointMake(16.78, 21.56) controlPoint2: CGPointMake(16.76, 21.51)];
                [bezier9Path addLineToPoint: CGPointMake(16.76, 21.44)];
                [bezier9Path addCurveToPoint: CGPointMake(16.81, 21.33) controlPoint1: CGPointMake(16.76, 21.4) controlPoint2: CGPointMake(16.78, 21.36)];
                [bezier9Path addCurveToPoint: CGPointMake(16.92, 21.29) controlPoint1: CGPointMake(16.84, 21.3) controlPoint2: CGPointMake(16.88, 21.29)];
                [bezier9Path addLineToPoint: CGPointMake(16.93, 21.29)];
                [bezier9Path addCurveToPoint: CGPointMake(17.01, 21.3) controlPoint1: CGPointMake(16.96, 21.29) controlPoint2: CGPointMake(16.99, 21.3)];
                [bezier9Path addCurveToPoint: CGPointMake(17.06, 21.32) controlPoint1: CGPointMake(17.03, 21.31) controlPoint2: CGPointMake(17.05, 21.31)];
                [bezier9Path addCurveToPoint: CGPointMake(17.1, 21.35) controlPoint1: CGPointMake(17.07, 21.33) controlPoint2: CGPointMake(17.09, 21.34)];
                [bezier9Path addCurveToPoint: CGPointMake(17.16, 21.37) controlPoint1: CGPointMake(17.11, 21.36) controlPoint2: CGPointMake(17.14, 21.37)];
                [bezier9Path addCurveToPoint: CGPointMake(17.27, 21.39) controlPoint1: CGPointMake(17.19, 21.38) controlPoint2: CGPointMake(17.22, 21.38)];
                [bezier9Path addCurveToPoint: CGPointMake(17.44, 21.4) controlPoint1: CGPointMake(17.31, 21.4) controlPoint2: CGPointMake(17.37, 21.4)];
                [bezier9Path addCurveToPoint: CGPointMake(17.62, 21.38) controlPoint1: CGPointMake(17.51, 21.4) controlPoint2: CGPointMake(17.57, 21.4)];
                [bezier9Path addCurveToPoint: CGPointMake(17.73, 21.33) controlPoint1: CGPointMake(17.67, 21.37) controlPoint2: CGPointMake(17.7, 21.35)];
                [bezier9Path addCurveToPoint: CGPointMake(17.78, 21.24) controlPoint1: CGPointMake(17.75, 21.31) controlPoint2: CGPointMake(17.77, 21.28)];
                [bezier9Path addCurveToPoint: CGPointMake(17.79, 21.12) controlPoint1: CGPointMake(17.79, 21.21) controlPoint2: CGPointMake(17.79, 21.17)];
                [bezier9Path addCurveToPoint: CGPointMake(17.76, 20.95) controlPoint1: CGPointMake(17.79, 21.04) controlPoint2: CGPointMake(17.78, 20.98)];
                [bezier9Path addCurveToPoint: CGPointMake(17.64, 20.9) controlPoint1: CGPointMake(17.74, 20.92) controlPoint2: CGPointMake(17.7, 20.9)];
                [bezier9Path addLineToPoint: CGPointMake(17.03, 20.9)];
                [bezier9Path addCurveToPoint: CGPointMake(16.9, 20.89) controlPoint1: CGPointMake(16.97, 20.9) controlPoint2: CGPointMake(16.93, 20.9)];
                [bezier9Path addCurveToPoint: CGPointMake(16.82, 20.86) controlPoint1: CGPointMake(16.87, 20.89) controlPoint2: CGPointMake(16.84, 20.87)];
                [bezier9Path addCurveToPoint: CGPointMake(16.79, 20.79) controlPoint1: CGPointMake(16.8, 20.84) controlPoint2: CGPointMake(16.79, 20.82)];
                [bezier9Path addCurveToPoint: CGPointMake(16.78, 20.68) controlPoint1: CGPointMake(16.79, 20.76) controlPoint2: CGPointMake(16.78, 20.73)];
                [bezier9Path addLineToPoint: CGPointMake(16.78, 20)];
                [bezier9Path addCurveToPoint: CGPointMake(16.82, 19.88) controlPoint1: CGPointMake(16.78, 19.95) controlPoint2: CGPointMake(16.79, 19.91)];
                [bezier9Path addCurveToPoint: CGPointMake(16.98, 19.84) controlPoint1: CGPointMake(16.85, 19.85) controlPoint2: CGPointMake(16.9, 19.84)];
                [bezier9Path addCurveToPoint: CGPointMake(17.09, 19.84) controlPoint1: CGPointMake(17, 19.84) controlPoint2: CGPointMake(17.04, 19.84)];
                [bezier9Path addCurveToPoint: CGPointMake(17.26, 19.84) controlPoint1: CGPointMake(17.14, 19.84) controlPoint2: CGPointMake(17.2, 19.84)];
                [bezier9Path addCurveToPoint: CGPointMake(17.45, 19.84) controlPoint1: CGPointMake(17.32, 19.84) controlPoint2: CGPointMake(17.38, 19.84)];
                [bezier9Path addCurveToPoint: CGPointMake(17.63, 19.84) controlPoint1: CGPointMake(17.52, 19.84) controlPoint2: CGPointMake(17.58, 19.84)];
                [bezier9Path addCurveToPoint: CGPointMake(17.78, 19.84) controlPoint1: CGPointMake(17.69, 19.84) controlPoint2: CGPointMake(17.74, 19.84)];
                [bezier9Path addCurveToPoint: CGPointMake(17.86, 19.84) controlPoint1: CGPointMake(17.82, 19.84) controlPoint2: CGPointMake(17.85, 19.84)];
                [bezier9Path addCurveToPoint: CGPointMake(17.93, 19.85) controlPoint1: CGPointMake(17.88, 19.84) controlPoint2: CGPointMake(17.9, 19.84)];
                [bezier9Path addCurveToPoint: CGPointMake(18, 19.87) controlPoint1: CGPointMake(17.95, 19.85) controlPoint2: CGPointMake(17.98, 19.86)];
                [bezier9Path addCurveToPoint: CGPointMake(18.05, 19.91) controlPoint1: CGPointMake(18.02, 19.88) controlPoint2: CGPointMake(18.04, 19.9)];
                [bezier9Path addCurveToPoint: CGPointMake(18.07, 19.99) controlPoint1: CGPointMake(18.06, 19.93) controlPoint2: CGPointMake(18.07, 19.95)];
                [bezier9Path addLineToPoint: CGPointMake(18.07, 19.99)];
                [bezier9Path addCurveToPoint: CGPointMake(18.05, 20.07) controlPoint1: CGPointMake(18.07, 20.03) controlPoint2: CGPointMake(18.06, 20.05)];
                [bezier9Path addCurveToPoint: CGPointMake(18.01, 20.11) controlPoint1: CGPointMake(18.04, 20.09) controlPoint2: CGPointMake(18.02, 20.1)];
                [bezier9Path addCurveToPoint: CGPointMake(17.94, 20.13) controlPoint1: CGPointMake(17.99, 20.12) controlPoint2: CGPointMake(17.97, 20.12)];
                [bezier9Path addCurveToPoint: CGPointMake(17.86, 20.13) controlPoint1: CGPointMake(17.92, 20.13) controlPoint2: CGPointMake(17.89, 20.13)];
                [bezier9Path addLineToPoint: CGPointMake(17.15, 20.13)];
                [bezier9Path addLineToPoint: CGPointMake(17.15, 20.59)];
                [bezier9Path addLineToPoint: CGPointMake(17.63, 20.59)];
                [bezier9Path addCurveToPoint: CGPointMake(17.86, 20.65) controlPoint1: CGPointMake(17.71, 20.62) controlPoint2: CGPointMake(17.8, 20.63)];
                [bezier9Path closePath];
                bezier9Path.miterLimit = 4;

                [fillColor setFill];
                [bezier9Path fill];


                //// Bezier 10 Drawing
                UIBezierPath* bezier10Path = [UIBezierPath bezierPath];
                [bezier10Path moveToPoint: CGPointMake(19.44, 19.85)];
                [bezier10Path addCurveToPoint: CGPointMake(19.78, 19.88) controlPoint1: CGPointMake(19.57, 19.85) controlPoint2: CGPointMake(19.68, 19.86)];
                [bezier10Path addCurveToPoint: CGPointMake(20, 19.97) controlPoint1: CGPointMake(19.87, 19.9) controlPoint2: CGPointMake(19.95, 19.93)];
                [bezier10Path addCurveToPoint: CGPointMake(20.13, 20.13) controlPoint1: CGPointMake(20.06, 20.01) controlPoint2: CGPointMake(20.1, 20.07)];
                [bezier10Path addCurveToPoint: CGPointMake(20.17, 20.37) controlPoint1: CGPointMake(20.16, 20.2) controlPoint2: CGPointMake(20.17, 20.28)];
                [bezier10Path addLineToPoint: CGPointMake(20.17, 20.38)];
                [bezier10Path addCurveToPoint: CGPointMake(20.14, 20.64) controlPoint1: CGPointMake(20.17, 20.48) controlPoint2: CGPointMake(20.16, 20.57)];
                [bezier10Path addCurveToPoint: CGPointMake(20.04, 20.81) controlPoint1: CGPointMake(20.12, 20.71) controlPoint2: CGPointMake(20.09, 20.77)];
                [bezier10Path addCurveToPoint: CGPointMake(19.86, 20.9) controlPoint1: CGPointMake(19.99, 20.85) controlPoint2: CGPointMake(19.93, 20.88)];
                [bezier10Path addCurveToPoint: CGPointMake(19.58, 20.93) controlPoint1: CGPointMake(19.79, 20.92) controlPoint2: CGPointMake(19.69, 20.93)];
                [bezier10Path addCurveToPoint: CGPointMake(19.34, 20.94) controlPoint1: CGPointMake(19.48, 20.93) controlPoint2: CGPointMake(19.41, 20.93)];
                [bezier10Path addCurveToPoint: CGPointMake(19.19, 20.97) controlPoint1: CGPointMake(19.28, 20.94) controlPoint2: CGPointMake(19.23, 20.95)];
                [bezier10Path addCurveToPoint: CGPointMake(19.11, 21.06) controlPoint1: CGPointMake(19.15, 20.99) controlPoint2: CGPointMake(19.13, 21.02)];
                [bezier10Path addCurveToPoint: CGPointMake(19.09, 21.23) controlPoint1: CGPointMake(19.09, 21.1) controlPoint2: CGPointMake(19.09, 21.16)];
                [bezier10Path addLineToPoint: CGPointMake(19.09, 21.39)];
                [bezier10Path addLineToPoint: CGPointMake(19.98, 21.39)];
                [bezier10Path addCurveToPoint: CGPointMake(20.04, 21.4) controlPoint1: CGPointMake(20, 21.39) controlPoint2: CGPointMake(20.03, 21.39)];
                [bezier10Path addCurveToPoint: CGPointMake(20.1, 21.43) controlPoint1: CGPointMake(20.06, 21.41) controlPoint2: CGPointMake(20.08, 21.42)];
                [bezier10Path addCurveToPoint: CGPointMake(20.14, 21.48) controlPoint1: CGPointMake(20.12, 21.44) controlPoint2: CGPointMake(20.13, 21.46)];
                [bezier10Path addCurveToPoint: CGPointMake(20.16, 21.55) controlPoint1: CGPointMake(20.15, 21.5) controlPoint2: CGPointMake(20.16, 21.52)];
                [bezier10Path addCurveToPoint: CGPointMake(20.14, 21.62) controlPoint1: CGPointMake(20.16, 21.58) controlPoint2: CGPointMake(20.16, 21.6)];
                [bezier10Path addCurveToPoint: CGPointMake(20.1, 21.66) controlPoint1: CGPointMake(20.13, 21.64) controlPoint2: CGPointMake(20.12, 21.65)];
                [bezier10Path addCurveToPoint: CGPointMake(20.04, 21.69) controlPoint1: CGPointMake(20.08, 21.67) controlPoint2: CGPointMake(20.06, 21.68)];
                [bezier10Path addCurveToPoint: CGPointMake(19.97, 21.7) controlPoint1: CGPointMake(20.02, 21.7) controlPoint2: CGPointMake(19.99, 21.7)];
                [bezier10Path addLineToPoint: CGPointMake(18.93, 21.7)];
                [bezier10Path addCurveToPoint: CGPointMake(18.78, 21.66) controlPoint1: CGPointMake(18.85, 21.7) controlPoint2: CGPointMake(18.8, 21.69)];
                [bezier10Path addCurveToPoint: CGPointMake(18.73, 21.54) controlPoint1: CGPointMake(18.75, 21.63) controlPoint2: CGPointMake(18.73, 21.6)];
                [bezier10Path addLineToPoint: CGPointMake(18.73, 21.17)];
                [bezier10Path addCurveToPoint: CGPointMake(18.77, 20.92) controlPoint1: CGPointMake(18.73, 21.07) controlPoint2: CGPointMake(18.74, 20.99)];
                [bezier10Path addCurveToPoint: CGPointMake(18.88, 20.76) controlPoint1: CGPointMake(18.8, 20.85) controlPoint2: CGPointMake(18.83, 20.8)];
                [bezier10Path addCurveToPoint: CGPointMake(19.06, 20.67) controlPoint1: CGPointMake(18.93, 20.72) controlPoint2: CGPointMake(18.99, 20.69)];
                [bezier10Path addCurveToPoint: CGPointMake(19.3, 20.64) controlPoint1: CGPointMake(19.13, 20.65) controlPoint2: CGPointMake(19.21, 20.64)];
                [bezier10Path addLineToPoint: CGPointMake(19.56, 20.63)];
                [bezier10Path addCurveToPoint: CGPointMake(19.68, 20.62) controlPoint1: CGPointMake(19.61, 20.63) controlPoint2: CGPointMake(19.65, 20.63)];
                [bezier10Path addCurveToPoint: CGPointMake(19.76, 20.58) controlPoint1: CGPointMake(19.71, 20.61) controlPoint2: CGPointMake(19.74, 20.6)];
                [bezier10Path addCurveToPoint: CGPointMake(19.8, 20.51) controlPoint1: CGPointMake(19.78, 20.56) controlPoint2: CGPointMake(19.8, 20.54)];
                [bezier10Path addCurveToPoint: CGPointMake(19.81, 20.4) controlPoint1: CGPointMake(19.81, 20.48) controlPoint2: CGPointMake(19.81, 20.44)];
                [bezier10Path addLineToPoint: CGPointMake(19.81, 20.39)];
                [bezier10Path addCurveToPoint: CGPointMake(19.79, 20.27) controlPoint1: CGPointMake(19.81, 20.34) controlPoint2: CGPointMake(19.8, 20.3)];
                [bezier10Path addCurveToPoint: CGPointMake(19.73, 20.19) controlPoint1: CGPointMake(19.78, 20.24) controlPoint2: CGPointMake(19.76, 20.21)];
                [bezier10Path addCurveToPoint: CGPointMake(19.61, 20.15) controlPoint1: CGPointMake(19.7, 20.17) controlPoint2: CGPointMake(19.66, 20.16)];
                [bezier10Path addCurveToPoint: CGPointMake(19.42, 20.14) controlPoint1: CGPointMake(19.56, 20.14) controlPoint2: CGPointMake(19.49, 20.14)];
                [bezier10Path addCurveToPoint: CGPointMake(19.25, 20.15) controlPoint1: CGPointMake(19.36, 20.14) controlPoint2: CGPointMake(19.3, 20.14)];
                [bezier10Path addCurveToPoint: CGPointMake(19.12, 20.18) controlPoint1: CGPointMake(19.2, 20.16) controlPoint2: CGPointMake(19.16, 20.17)];
                [bezier10Path addCurveToPoint: CGPointMake(19.03, 20.21) controlPoint1: CGPointMake(19.08, 20.19) controlPoint2: CGPointMake(19.05, 20.2)];
                [bezier10Path addCurveToPoint: CGPointMake(18.94, 20.23) controlPoint1: CGPointMake(19.01, 20.22) controlPoint2: CGPointMake(18.97, 20.23)];
                [bezier10Path addLineToPoint: CGPointMake(18.93, 20.23)];
                [bezier10Path addCurveToPoint: CGPointMake(18.82, 20.18) controlPoint1: CGPointMake(18.89, 20.23) controlPoint2: CGPointMake(18.85, 20.21)];
                [bezier10Path addCurveToPoint: CGPointMake(18.78, 20.07) controlPoint1: CGPointMake(18.79, 20.15) controlPoint2: CGPointMake(18.78, 20.11)];
                [bezier10Path addLineToPoint: CGPointMake(18.78, 20.06)];
                [bezier10Path addCurveToPoint: CGPointMake(18.84, 19.96) controlPoint1: CGPointMake(18.78, 20.02) controlPoint2: CGPointMake(18.8, 19.98)];
                [bezier10Path addCurveToPoint: CGPointMake(18.98, 19.89) controlPoint1: CGPointMake(18.88, 19.93) controlPoint2: CGPointMake(18.92, 19.91)];
                [bezier10Path addCurveToPoint: CGPointMake(19.19, 19.85) controlPoint1: CGPointMake(19.04, 19.87) controlPoint2: CGPointMake(19.11, 19.86)];
                [bezier10Path addCurveToPoint: CGPointMake(19.44, 19.85) controlPoint1: CGPointMake(19.27, 19.85) controlPoint2: CGPointMake(19.35, 19.85)];
                [bezier10Path closePath];
                bezier10Path.miterLimit = 4;

                [fillColor setFill];
                [bezier10Path fill];


                //// Bezier 11 Drawing
                UIBezierPath* bezier11Path = [UIBezierPath bezierPath];
                [bezier11Path moveToPoint: CGPointMake(23.4, 21.2)];
                [bezier11Path addCurveToPoint: CGPointMake(23.38, 21.41) controlPoint1: CGPointMake(23.4, 21.28) controlPoint2: CGPointMake(23.39, 21.35)];
                [bezier11Path addCurveToPoint: CGPointMake(23.28, 21.57) controlPoint1: CGPointMake(23.36, 21.47) controlPoint2: CGPointMake(23.33, 21.53)];
                [bezier11Path addCurveToPoint: CGPointMake(23.06, 21.67) controlPoint1: CGPointMake(23.23, 21.61) controlPoint2: CGPointMake(23.16, 21.65)];
                [bezier11Path addCurveToPoint: CGPointMake(22.69, 21.7) controlPoint1: CGPointMake(22.97, 21.69) controlPoint2: CGPointMake(22.84, 21.7)];
                [bezier11Path addCurveToPoint: CGPointMake(22.34, 21.66) controlPoint1: CGPointMake(22.54, 21.7) controlPoint2: CGPointMake(22.43, 21.69)];
                [bezier11Path addCurveToPoint: CGPointMake(22.13, 21.56) controlPoint1: CGPointMake(22.25, 21.63) controlPoint2: CGPointMake(22.18, 21.6)];
                [bezier11Path addCurveToPoint: CGPointMake(22.03, 21.4) controlPoint1: CGPointMake(22.08, 21.52) controlPoint2: CGPointMake(22.05, 21.46)];
                [bezier11Path addCurveToPoint: CGPointMake(22, 21.2) controlPoint1: CGPointMake(22.01, 21.34) controlPoint2: CGPointMake(22, 21.27)];
                [bezier11Path addCurveToPoint: CGPointMake(22, 21.05) controlPoint1: CGPointMake(22, 21.14) controlPoint2: CGPointMake(22, 21.09)];
                [bezier11Path addCurveToPoint: CGPointMake(22.03, 20.95) controlPoint1: CGPointMake(22, 21.01) controlPoint2: CGPointMake(22.01, 20.98)];
                [bezier11Path addCurveToPoint: CGPointMake(22.11, 20.87) controlPoint1: CGPointMake(22.05, 20.92) controlPoint2: CGPointMake(22.07, 20.9)];
                [bezier11Path addCurveToPoint: CGPointMake(22.27, 20.79) controlPoint1: CGPointMake(22.15, 20.85) controlPoint2: CGPointMake(22.2, 20.82)];
                [bezier11Path addCurveToPoint: CGPointMake(22.11, 20.73) controlPoint1: CGPointMake(22.2, 20.77) controlPoint2: CGPointMake(22.15, 20.75)];
                [bezier11Path addCurveToPoint: CGPointMake(22.03, 20.66) controlPoint1: CGPointMake(22.08, 20.71) controlPoint2: CGPointMake(22.05, 20.69)];
                [bezier11Path addCurveToPoint: CGPointMake(22, 20.55) controlPoint1: CGPointMake(22.01, 20.63) controlPoint2: CGPointMake(22, 20.59)];
                [bezier11Path addCurveToPoint: CGPointMake(21.99, 20.37) controlPoint1: CGPointMake(21.99, 20.51) controlPoint2: CGPointMake(21.99, 20.44)];
                [bezier11Path addCurveToPoint: CGPointMake(22.03, 20.12) controlPoint1: CGPointMake(21.99, 20.27) controlPoint2: CGPointMake(22, 20.19)];
                [bezier11Path addCurveToPoint: CGPointMake(22.15, 19.96) controlPoint1: CGPointMake(22.05, 20.06) controlPoint2: CGPointMake(22.09, 20)];
                [bezier11Path addCurveToPoint: CGPointMake(22.36, 19.88) controlPoint1: CGPointMake(22.2, 19.92) controlPoint2: CGPointMake(22.27, 19.89)];
                [bezier11Path addCurveToPoint: CGPointMake(22.68, 19.85) controlPoint1: CGPointMake(22.45, 19.86) controlPoint2: CGPointMake(22.55, 19.85)];
                [bezier11Path addCurveToPoint: CGPointMake(23.01, 19.88) controlPoint1: CGPointMake(22.81, 19.85) controlPoint2: CGPointMake(22.92, 19.86)];
                [bezier11Path addCurveToPoint: CGPointMake(23.23, 19.96) controlPoint1: CGPointMake(23.1, 19.9) controlPoint2: CGPointMake(23.17, 19.93)];
                [bezier11Path addCurveToPoint: CGPointMake(23.35, 20.11) controlPoint1: CGPointMake(23.28, 20) controlPoint2: CGPointMake(23.33, 20.05)];
                [bezier11Path addCurveToPoint: CGPointMake(23.39, 20.35) controlPoint1: CGPointMake(23.38, 20.18) controlPoint2: CGPointMake(23.39, 20.25)];
                [bezier11Path addCurveToPoint: CGPointMake(23.39, 20.53) controlPoint1: CGPointMake(23.39, 20.43) controlPoint2: CGPointMake(23.39, 20.49)];
                [bezier11Path addCurveToPoint: CGPointMake(23.36, 20.64) controlPoint1: CGPointMake(23.39, 20.58) controlPoint2: CGPointMake(23.38, 20.61)];
                [bezier11Path addCurveToPoint: CGPointMake(23.28, 20.71) controlPoint1: CGPointMake(23.34, 20.67) controlPoint2: CGPointMake(23.32, 20.69)];
                [bezier11Path addCurveToPoint: CGPointMake(23.14, 20.77) controlPoint1: CGPointMake(23.25, 20.73) controlPoint2: CGPointMake(23.2, 20.75)];
                [bezier11Path addCurveToPoint: CGPointMake(23.29, 20.84) controlPoint1: CGPointMake(23.2, 20.8) controlPoint2: CGPointMake(23.25, 20.82)];
                [bezier11Path addCurveToPoint: CGPointMake(23.37, 20.91) controlPoint1: CGPointMake(23.32, 20.86) controlPoint2: CGPointMake(23.35, 20.89)];
                [bezier11Path addCurveToPoint: CGPointMake(23.4, 21.01) controlPoint1: CGPointMake(23.39, 20.94) controlPoint2: CGPointMake(23.39, 20.97)];
                [bezier11Path addCurveToPoint: CGPointMake(23.4, 21.2) controlPoint1: CGPointMake(23.4, 21.07) controlPoint2: CGPointMake(23.4, 21.13)];
                [bezier11Path closePath];
                [bezier11Path moveToPoint: CGPointMake(23.05, 21.17)];
                [bezier11Path addCurveToPoint: CGPointMake(23.04, 21.15) controlPoint1: CGPointMake(23.05, 21.17) controlPoint2: CGPointMake(23.04, 21.16)];
                [bezier11Path addCurveToPoint: CGPointMake(23, 21.08) controlPoint1: CGPointMake(23.04, 21.13) controlPoint2: CGPointMake(23.02, 21.11)];
                [bezier11Path addCurveToPoint: CGPointMake(22.9, 21) controlPoint1: CGPointMake(22.98, 21.05) controlPoint2: CGPointMake(22.94, 21.03)];
                [bezier11Path addCurveToPoint: CGPointMake(22.71, 20.92) controlPoint1: CGPointMake(22.86, 20.97) controlPoint2: CGPointMake(22.79, 20.94)];
                [bezier11Path addCurveToPoint: CGPointMake(22.52, 21.01) controlPoint1: CGPointMake(22.63, 20.95) controlPoint2: CGPointMake(22.57, 20.98)];
                [bezier11Path addCurveToPoint: CGPointMake(22.42, 21.1) controlPoint1: CGPointMake(22.48, 21.04) controlPoint2: CGPointMake(22.44, 21.07)];
                [bezier11Path addCurveToPoint: CGPointMake(22.38, 21.17) controlPoint1: CGPointMake(22.4, 21.13) controlPoint2: CGPointMake(22.38, 21.15)];
                [bezier11Path addCurveToPoint: CGPointMake(22.37, 21.21) controlPoint1: CGPointMake(22.38, 21.19) controlPoint2: CGPointMake(22.37, 21.2)];
                [bezier11Path addLineToPoint: CGPointMake(22.37, 21.21)];
                [bezier11Path addCurveToPoint: CGPointMake(22.38, 21.3) controlPoint1: CGPointMake(22.37, 21.25) controlPoint2: CGPointMake(22.38, 21.28)];
                [bezier11Path addCurveToPoint: CGPointMake(22.43, 21.36) controlPoint1: CGPointMake(22.39, 21.33) controlPoint2: CGPointMake(22.41, 21.35)];
                [bezier11Path addCurveToPoint: CGPointMake(22.54, 21.39) controlPoint1: CGPointMake(22.46, 21.37) controlPoint2: CGPointMake(22.5, 21.39)];
                [bezier11Path addCurveToPoint: CGPointMake(22.71, 21.4) controlPoint1: CGPointMake(22.58, 21.4) controlPoint2: CGPointMake(22.64, 21.4)];
                [bezier11Path addCurveToPoint: CGPointMake(22.87, 21.39) controlPoint1: CGPointMake(22.77, 21.4) controlPoint2: CGPointMake(22.82, 21.4)];
                [bezier11Path addCurveToPoint: CGPointMake(22.97, 21.36) controlPoint1: CGPointMake(22.91, 21.38) controlPoint2: CGPointMake(22.94, 21.37)];
                [bezier11Path addCurveToPoint: CGPointMake(23.02, 21.3) controlPoint1: CGPointMake(22.99, 21.35) controlPoint2: CGPointMake(23.01, 21.32)];
                [bezier11Path addCurveToPoint: CGPointMake(23.04, 21.21) controlPoint1: CGPointMake(23.03, 21.28) controlPoint2: CGPointMake(23.04, 21.25)];
                [bezier11Path addLineToPoint: CGPointMake(23.04, 21.17)];
                [bezier11Path addLineToPoint: CGPointMake(23.05, 21.17)];
                [bezier11Path closePath];
                [bezier11Path moveToPoint: CGPointMake(22.71, 20.63)];
                [bezier11Path addCurveToPoint: CGPointMake(22.9, 20.58) controlPoint1: CGPointMake(22.79, 20.61) controlPoint2: CGPointMake(22.85, 20.59)];
                [bezier11Path addCurveToPoint: CGPointMake(23, 20.53) controlPoint1: CGPointMake(22.95, 20.57) controlPoint2: CGPointMake(22.98, 20.55)];
                [bezier11Path addCurveToPoint: CGPointMake(23.04, 20.45) controlPoint1: CGPointMake(23.02, 20.51) controlPoint2: CGPointMake(23.03, 20.48)];
                [bezier11Path addCurveToPoint: CGPointMake(23.04, 20.32) controlPoint1: CGPointMake(23.04, 20.42) controlPoint2: CGPointMake(23.04, 20.37)];
                [bezier11Path addCurveToPoint: CGPointMake(23.02, 20.22) controlPoint1: CGPointMake(23.04, 20.28) controlPoint2: CGPointMake(23.03, 20.25)];
                [bezier11Path addCurveToPoint: CGPointMake(22.96, 20.17) controlPoint1: CGPointMake(23.01, 20.2) controlPoint2: CGPointMake(22.98, 20.18)];
                [bezier11Path addCurveToPoint: CGPointMake(22.85, 20.15) controlPoint1: CGPointMake(22.93, 20.16) controlPoint2: CGPointMake(22.89, 20.15)];
                [bezier11Path addCurveToPoint: CGPointMake(22.71, 20.15) controlPoint1: CGPointMake(22.81, 20.15) controlPoint2: CGPointMake(22.76, 20.15)];
                [bezier11Path addCurveToPoint: CGPointMake(22.56, 20.16) controlPoint1: CGPointMake(22.65, 20.15) controlPoint2: CGPointMake(22.6, 20.15)];
                [bezier11Path addCurveToPoint: CGPointMake(22.46, 20.19) controlPoint1: CGPointMake(22.52, 20.16) controlPoint2: CGPointMake(22.49, 20.17)];
                [bezier11Path addCurveToPoint: CGPointMake(22.4, 20.26) controlPoint1: CGPointMake(22.43, 20.2) controlPoint2: CGPointMake(22.42, 20.23)];
                [bezier11Path addCurveToPoint: CGPointMake(22.38, 20.38) controlPoint1: CGPointMake(22.39, 20.29) controlPoint2: CGPointMake(22.38, 20.33)];
                [bezier11Path addCurveToPoint: CGPointMake(22.39, 20.49) controlPoint1: CGPointMake(22.38, 20.43) controlPoint2: CGPointMake(22.38, 20.46)];
                [bezier11Path addCurveToPoint: CGPointMake(22.43, 20.56) controlPoint1: CGPointMake(22.39, 20.52) controlPoint2: CGPointMake(22.4, 20.54)];
                [bezier11Path addCurveToPoint: CGPointMake(22.53, 20.61) controlPoint1: CGPointMake(22.45, 20.58) controlPoint2: CGPointMake(22.49, 20.59)];
                [bezier11Path addCurveToPoint: CGPointMake(22.71, 20.63) controlPoint1: CGPointMake(22.56, 20.6) controlPoint2: CGPointMake(22.63, 20.61)];
                [bezier11Path closePath];
                bezier11Path.miterLimit = 4;

                [fillColor setFill];
                [bezier11Path fill];


                //// Bezier 12 Drawing
                UIBezierPath* bezier12Path = [UIBezierPath bezierPath];
                [bezier12Path moveToPoint: CGPointMake(25.41, 21.2)];
                [bezier12Path addLineToPoint: CGPointMake(25.41, 21.2)];
                [bezier12Path addCurveToPoint: CGPointMake(25.36, 21.44) controlPoint1: CGPointMake(25.41, 21.3) controlPoint2: CGPointMake(25.39, 21.38)];
                [bezier12Path addCurveToPoint: CGPointMake(25.22, 21.6) controlPoint1: CGPointMake(25.33, 21.5) controlPoint2: CGPointMake(25.28, 21.56)];
                [bezier12Path addCurveToPoint: CGPointMake(25, 21.68) controlPoint1: CGPointMake(25.16, 21.64) controlPoint2: CGPointMake(25.09, 21.67)];
                [bezier12Path addCurveToPoint: CGPointMake(24.72, 21.7) controlPoint1: CGPointMake(24.92, 21.7) controlPoint2: CGPointMake(24.82, 21.7)];
                [bezier12Path addCurveToPoint: CGPointMake(24.43, 21.67) controlPoint1: CGPointMake(24.61, 21.7) controlPoint2: CGPointMake(24.52, 21.69)];
                [bezier12Path addCurveToPoint: CGPointMake(24.22, 21.58) controlPoint1: CGPointMake(24.35, 21.65) controlPoint2: CGPointMake(24.28, 21.62)];
                [bezier12Path addCurveToPoint: CGPointMake(24.08, 21.43) controlPoint1: CGPointMake(24.16, 21.54) controlPoint2: CGPointMake(24.11, 21.49)];
                [bezier12Path addCurveToPoint: CGPointMake(24.04, 21.21) controlPoint1: CGPointMake(24.05, 21.37) controlPoint2: CGPointMake(24.04, 21.3)];
                [bezier12Path addLineToPoint: CGPointMake(24.04, 20.32)];
                [bezier12Path addCurveToPoint: CGPointMake(24.22, 19.96) controlPoint1: CGPointMake(24.04, 20.16) controlPoint2: CGPointMake(24.1, 20.04)];
                [bezier12Path addCurveToPoint: CGPointMake(24.73, 19.84) controlPoint1: CGPointMake(24.34, 19.88) controlPoint2: CGPointMake(24.51, 19.84)];
                [bezier12Path addCurveToPoint: CGPointMake(25.01, 19.87) controlPoint1: CGPointMake(24.83, 19.84) controlPoint2: CGPointMake(24.92, 19.85)];
                [bezier12Path addCurveToPoint: CGPointMake(25.22, 19.96) controlPoint1: CGPointMake(25.09, 19.89) controlPoint2: CGPointMake(25.17, 19.92)];
                [bezier12Path addCurveToPoint: CGPointMake(25.36, 20.11) controlPoint1: CGPointMake(25.28, 20) controlPoint2: CGPointMake(25.32, 20.05)];
                [bezier12Path addCurveToPoint: CGPointMake(25.41, 20.32) controlPoint1: CGPointMake(25.39, 20.17) controlPoint2: CGPointMake(25.41, 20.24)];
                [bezier12Path addLineToPoint: CGPointMake(25.41, 21.2)];
                [bezier12Path closePath];
                [bezier12Path moveToPoint: CGPointMake(25.05, 20.35)];
                [bezier12Path addCurveToPoint: CGPointMake(24.97, 20.2) controlPoint1: CGPointMake(25.05, 20.29) controlPoint2: CGPointMake(25.02, 20.23)];
                [bezier12Path addCurveToPoint: CGPointMake(24.72, 20.14) controlPoint1: CGPointMake(24.92, 20.16) controlPoint2: CGPointMake(24.83, 20.14)];
                [bezier12Path addCurveToPoint: CGPointMake(24.47, 20.19) controlPoint1: CGPointMake(24.61, 20.14) controlPoint2: CGPointMake(24.53, 20.16)];
                [bezier12Path addCurveToPoint: CGPointMake(24.39, 20.33) controlPoint1: CGPointMake(24.42, 20.23) controlPoint2: CGPointMake(24.39, 20.27)];
                [bezier12Path addLineToPoint: CGPointMake(24.39, 21.2)];
                [bezier12Path addCurveToPoint: CGPointMake(24.47, 21.35) controlPoint1: CGPointMake(24.39, 21.27) controlPoint2: CGPointMake(24.42, 21.32)];
                [bezier12Path addCurveToPoint: CGPointMake(24.71, 21.39) controlPoint1: CGPointMake(24.52, 21.38) controlPoint2: CGPointMake(24.6, 21.39)];
                [bezier12Path addCurveToPoint: CGPointMake(24.95, 21.34) controlPoint1: CGPointMake(24.81, 21.39) controlPoint2: CGPointMake(24.9, 21.38)];
                [bezier12Path addCurveToPoint: CGPointMake(25.04, 21.19) controlPoint1: CGPointMake(25.01, 21.31) controlPoint2: CGPointMake(25.04, 21.26)];
                [bezier12Path addLineToPoint: CGPointMake(25.04, 20.35)];
                [bezier12Path addLineToPoint: CGPointMake(25.05, 20.35)];
                [bezier12Path closePath];
                bezier12Path.miterLimit = 4;

                [fillColor setFill];
                [bezier12Path fill];


                //// Bezier 13 Drawing
                UIBezierPath* bezier13Path = [UIBezierPath bezierPath];
                [bezier13Path moveToPoint: CGPointMake(27.26, 20.64)];
                [bezier13Path addCurveToPoint: CGPointMake(27.38, 20.67) controlPoint1: CGPointMake(27.31, 20.64) controlPoint2: CGPointMake(27.35, 20.65)];
                [bezier13Path addCurveToPoint: CGPointMake(27.43, 20.78) controlPoint1: CGPointMake(27.41, 20.69) controlPoint2: CGPointMake(27.43, 20.73)];
                [bezier13Path addCurveToPoint: CGPointMake(27.38, 20.9) controlPoint1: CGPointMake(27.43, 20.84) controlPoint2: CGPointMake(27.41, 20.88)];
                [bezier13Path addCurveToPoint: CGPointMake(27.26, 20.94) controlPoint1: CGPointMake(27.34, 20.92) controlPoint2: CGPointMake(27.3, 20.93)];
                [bezier13Path addLineToPoint: CGPointMake(27.2, 20.94)];
                [bezier13Path addLineToPoint: CGPointMake(27.2, 21.55)];
                [bezier13Path addCurveToPoint: CGPointMake(27.19, 21.6) controlPoint1: CGPointMake(27.2, 21.57) controlPoint2: CGPointMake(27.19, 21.58)];
                [bezier13Path addCurveToPoint: CGPointMake(27.16, 21.65) controlPoint1: CGPointMake(27.18, 21.62) controlPoint2: CGPointMake(27.17, 21.63)];
                [bezier13Path addCurveToPoint: CGPointMake(27.1, 21.69) controlPoint1: CGPointMake(27.15, 21.66) controlPoint2: CGPointMake(27.13, 21.68)];
                [bezier13Path addCurveToPoint: CGPointMake(27.02, 21.7) controlPoint1: CGPointMake(27.08, 21.7) controlPoint2: CGPointMake(27.05, 21.7)];
                [bezier13Path addCurveToPoint: CGPointMake(26.94, 21.69) controlPoint1: CGPointMake(26.99, 21.7) controlPoint2: CGPointMake(26.96, 21.7)];
                [bezier13Path addCurveToPoint: CGPointMake(26.88, 21.65) controlPoint1: CGPointMake(26.92, 21.68) controlPoint2: CGPointMake(26.9, 21.67)];
                [bezier13Path addCurveToPoint: CGPointMake(26.85, 21.6) controlPoint1: CGPointMake(26.87, 21.64) controlPoint2: CGPointMake(26.86, 21.62)];
                [bezier13Path addCurveToPoint: CGPointMake(26.84, 21.55) controlPoint1: CGPointMake(26.84, 21.58) controlPoint2: CGPointMake(26.84, 21.57)];
                [bezier13Path addLineToPoint: CGPointMake(26.84, 20.94)];
                [bezier13Path addLineToPoint: CGPointMake(26.14, 20.94)];
                [bezier13Path addCurveToPoint: CGPointMake(26.05, 20.92) controlPoint1: CGPointMake(26.1, 20.94) controlPoint2: CGPointMake(26.07, 20.93)];
                [bezier13Path addCurveToPoint: CGPointMake(26.03, 20.85) controlPoint1: CGPointMake(26.04, 20.91) controlPoint2: CGPointMake(26.03, 20.88)];
                [bezier13Path addLineToPoint: CGPointMake(26.03, 20.02)];
                [bezier13Path addCurveToPoint: CGPointMake(26.04, 19.97) controlPoint1: CGPointMake(26.03, 20) controlPoint2: CGPointMake(26.03, 19.98)];
                [bezier13Path addCurveToPoint: CGPointMake(26.07, 19.92) controlPoint1: CGPointMake(26.05, 19.95) controlPoint2: CGPointMake(26.06, 19.93)];
                [bezier13Path addCurveToPoint: CGPointMake(26.12, 19.88) controlPoint1: CGPointMake(26.08, 19.91) controlPoint2: CGPointMake(26.1, 19.89)];
                [bezier13Path addCurveToPoint: CGPointMake(26.2, 19.86) controlPoint1: CGPointMake(26.14, 19.87) controlPoint2: CGPointMake(26.17, 19.86)];
                [bezier13Path addCurveToPoint: CGPointMake(26.34, 19.9) controlPoint1: CGPointMake(26.26, 19.86) controlPoint2: CGPointMake(26.31, 19.87)];
                [bezier13Path addCurveToPoint: CGPointMake(26.39, 20.02) controlPoint1: CGPointMake(26.37, 19.93) controlPoint2: CGPointMake(26.39, 19.97)];
                [bezier13Path addLineToPoint: CGPointMake(26.39, 20.66)];
                [bezier13Path addLineToPoint: CGPointMake(26.84, 20.66)];
                [bezier13Path addLineToPoint: CGPointMake(26.84, 20)];
                [bezier13Path addCurveToPoint: CGPointMake(26.88, 19.89) controlPoint1: CGPointMake(26.84, 19.95) controlPoint2: CGPointMake(26.86, 19.92)];
                [bezier13Path addCurveToPoint: CGPointMake(27.01, 19.85) controlPoint1: CGPointMake(26.91, 19.86) controlPoint2: CGPointMake(26.95, 19.85)];
                [bezier13Path addCurveToPoint: CGPointMake(27.14, 19.89) controlPoint1: CGPointMake(27.07, 19.85) controlPoint2: CGPointMake(27.11, 19.86)];
                [bezier13Path addCurveToPoint: CGPointMake(27.19, 20) controlPoint1: CGPointMake(27.17, 19.92) controlPoint2: CGPointMake(27.19, 19.95)];
                [bezier13Path addLineToPoint: CGPointMake(27.19, 20.64)];
                [bezier13Path addLineToPoint: CGPointMake(27.26, 20.64)];
                [bezier13Path addLineToPoint: CGPointMake(27.26, 20.64)];
                [bezier13Path closePath];
                bezier13Path.miterLimit = 4;

                [fillColor setFill];
                [bezier13Path fill];


                //// Bezier 14 Drawing
                UIBezierPath* bezier14Path = [UIBezierPath bezierPath];
                [bezier14Path moveToPoint: CGPointMake(29.26, 20.64)];
                [bezier14Path addCurveToPoint: CGPointMake(29.38, 20.67) controlPoint1: CGPointMake(29.31, 20.64) controlPoint2: CGPointMake(29.35, 20.65)];
                [bezier14Path addCurveToPoint: CGPointMake(29.44, 20.78) controlPoint1: CGPointMake(29.41, 20.69) controlPoint2: CGPointMake(29.43, 20.73)];
                [bezier14Path addCurveToPoint: CGPointMake(29.39, 20.9) controlPoint1: CGPointMake(29.44, 20.84) controlPoint2: CGPointMake(29.42, 20.88)];
                [bezier14Path addCurveToPoint: CGPointMake(29.27, 20.94) controlPoint1: CGPointMake(29.35, 20.92) controlPoint2: CGPointMake(29.32, 20.93)];
                [bezier14Path addLineToPoint: CGPointMake(29.21, 20.94)];
                [bezier14Path addLineToPoint: CGPointMake(29.21, 21.55)];
                [bezier14Path addCurveToPoint: CGPointMake(29.2, 21.6) controlPoint1: CGPointMake(29.21, 21.57) controlPoint2: CGPointMake(29.21, 21.58)];
                [bezier14Path addCurveToPoint: CGPointMake(29.17, 21.65) controlPoint1: CGPointMake(29.2, 21.62) controlPoint2: CGPointMake(29.18, 21.63)];
                [bezier14Path addCurveToPoint: CGPointMake(29.11, 21.69) controlPoint1: CGPointMake(29.16, 21.66) controlPoint2: CGPointMake(29.14, 21.68)];
                [bezier14Path addCurveToPoint: CGPointMake(29.03, 21.7) controlPoint1: CGPointMake(29.09, 21.7) controlPoint2: CGPointMake(29.06, 21.7)];
                [bezier14Path addCurveToPoint: CGPointMake(28.95, 21.69) controlPoint1: CGPointMake(29, 21.7) controlPoint2: CGPointMake(28.97, 21.7)];
                [bezier14Path addCurveToPoint: CGPointMake(28.89, 21.65) controlPoint1: CGPointMake(28.93, 21.68) controlPoint2: CGPointMake(28.91, 21.67)];
                [bezier14Path addCurveToPoint: CGPointMake(28.86, 21.6) controlPoint1: CGPointMake(28.88, 21.64) controlPoint2: CGPointMake(28.86, 21.62)];
                [bezier14Path addCurveToPoint: CGPointMake(28.85, 21.55) controlPoint1: CGPointMake(28.85, 21.58) controlPoint2: CGPointMake(28.85, 21.57)];
                [bezier14Path addLineToPoint: CGPointMake(28.85, 20.94)];
                [bezier14Path addLineToPoint: CGPointMake(28.15, 20.94)];
                [bezier14Path addCurveToPoint: CGPointMake(28.06, 20.92) controlPoint1: CGPointMake(28.1, 20.94) controlPoint2: CGPointMake(28.08, 20.93)];
                [bezier14Path addCurveToPoint: CGPointMake(28.04, 20.85) controlPoint1: CGPointMake(28.04, 20.91) controlPoint2: CGPointMake(28.04, 20.88)];
                [bezier14Path addLineToPoint: CGPointMake(28.04, 20.02)];
                [bezier14Path addCurveToPoint: CGPointMake(28.05, 19.97) controlPoint1: CGPointMake(28.04, 20) controlPoint2: CGPointMake(28.04, 19.98)];
                [bezier14Path addCurveToPoint: CGPointMake(28.08, 19.92) controlPoint1: CGPointMake(28.06, 19.95) controlPoint2: CGPointMake(28.07, 19.93)];
                [bezier14Path addCurveToPoint: CGPointMake(28.13, 19.88) controlPoint1: CGPointMake(28.09, 19.91) controlPoint2: CGPointMake(28.11, 19.89)];
                [bezier14Path addCurveToPoint: CGPointMake(28.21, 19.86) controlPoint1: CGPointMake(28.15, 19.87) controlPoint2: CGPointMake(28.18, 19.86)];
                [bezier14Path addCurveToPoint: CGPointMake(28.34, 19.9) controlPoint1: CGPointMake(28.27, 19.86) controlPoint2: CGPointMake(28.32, 19.87)];
                [bezier14Path addCurveToPoint: CGPointMake(28.39, 20.02) controlPoint1: CGPointMake(28.37, 19.93) controlPoint2: CGPointMake(28.39, 19.97)];
                [bezier14Path addLineToPoint: CGPointMake(28.39, 20.66)];
                [bezier14Path addLineToPoint: CGPointMake(28.84, 20.66)];
                [bezier14Path addLineToPoint: CGPointMake(28.84, 20)];
                [bezier14Path addCurveToPoint: CGPointMake(28.88, 19.89) controlPoint1: CGPointMake(28.84, 19.95) controlPoint2: CGPointMake(28.85, 19.92)];
                [bezier14Path addCurveToPoint: CGPointMake(29.01, 19.85) controlPoint1: CGPointMake(28.91, 19.86) controlPoint2: CGPointMake(28.95, 19.85)];
                [bezier14Path addCurveToPoint: CGPointMake(29.14, 19.89) controlPoint1: CGPointMake(29.07, 19.85) controlPoint2: CGPointMake(29.11, 19.86)];
                [bezier14Path addCurveToPoint: CGPointMake(29.19, 20) controlPoint1: CGPointMake(29.17, 19.92) controlPoint2: CGPointMake(29.19, 19.95)];
                [bezier14Path addLineToPoint: CGPointMake(29.19, 20.64)];
                [bezier14Path addLineToPoint: CGPointMake(29.26, 20.64)];
                [bezier14Path addLineToPoint: CGPointMake(29.26, 20.64)];
                [bezier14Path closePath];
                bezier14Path.miterLimit = 4;

                [fillColor setFill];
                [bezier14Path fill];


                //// Bezier 15 Drawing
                UIBezierPath* bezier15Path = [UIBezierPath bezierPath];
                [bezier15Path moveToPoint: CGPointMake(32.03, 20.57)];
                [bezier15Path addCurveToPoint: CGPointMake(32.32, 20.61) controlPoint1: CGPointMake(32.15, 20.57) controlPoint2: CGPointMake(32.25, 20.58)];
                [bezier15Path addCurveToPoint: CGPointMake(32.51, 20.72) controlPoint1: CGPointMake(32.4, 20.63) controlPoint2: CGPointMake(32.46, 20.67)];
                [bezier15Path addCurveToPoint: CGPointMake(32.61, 20.9) controlPoint1: CGPointMake(32.56, 20.77) controlPoint2: CGPointMake(32.59, 20.83)];
                [bezier15Path addCurveToPoint: CGPointMake(32.64, 21.15) controlPoint1: CGPointMake(32.63, 20.97) controlPoint2: CGPointMake(32.64, 21.06)];
                [bezier15Path addCurveToPoint: CGPointMake(32.61, 21.39) controlPoint1: CGPointMake(32.64, 21.24) controlPoint2: CGPointMake(32.63, 21.32)];
                [bezier15Path addCurveToPoint: CGPointMake(32.49, 21.57) controlPoint1: CGPointMake(32.58, 21.46) controlPoint2: CGPointMake(32.55, 21.52)];
                [bezier15Path addCurveToPoint: CGPointMake(32.28, 21.68) controlPoint1: CGPointMake(32.44, 21.62) controlPoint2: CGPointMake(32.36, 21.65)];
                [bezier15Path addCurveToPoint: CGPointMake(31.95, 21.72) controlPoint1: CGPointMake(32.19, 21.7) controlPoint2: CGPointMake(32.08, 21.72)];
                [bezier15Path addCurveToPoint: CGPointMake(31.68, 21.69) controlPoint1: CGPointMake(31.85, 21.72) controlPoint2: CGPointMake(31.76, 21.71)];
                [bezier15Path addCurveToPoint: CGPointMake(31.46, 21.6) controlPoint1: CGPointMake(31.6, 21.67) controlPoint2: CGPointMake(31.53, 21.64)];
                [bezier15Path addCurveToPoint: CGPointMake(31.32, 21.44) controlPoint1: CGPointMake(31.4, 21.56) controlPoint2: CGPointMake(31.35, 21.51)];
                [bezier15Path addCurveToPoint: CGPointMake(31.27, 21.2) controlPoint1: CGPointMake(31.29, 21.37) controlPoint2: CGPointMake(31.27, 21.3)];
                [bezier15Path addLineToPoint: CGPointMake(31.27, 20)];
                [bezier15Path addCurveToPoint: CGPointMake(31.28, 19.95) controlPoint1: CGPointMake(31.27, 19.98) controlPoint2: CGPointMake(31.27, 19.97)];
                [bezier15Path addCurveToPoint: CGPointMake(31.31, 19.9) controlPoint1: CGPointMake(31.29, 19.93) controlPoint2: CGPointMake(31.3, 19.91)];
                [bezier15Path addCurveToPoint: CGPointMake(31.36, 19.86) controlPoint1: CGPointMake(31.33, 19.89) controlPoint2: CGPointMake(31.34, 19.87)];
                [bezier15Path addCurveToPoint: CGPointMake(31.45, 19.85) controlPoint1: CGPointMake(31.38, 19.85) controlPoint2: CGPointMake(31.41, 19.85)];
                [bezier15Path addCurveToPoint: CGPointMake(31.58, 19.89) controlPoint1: CGPointMake(31.51, 19.85) controlPoint2: CGPointMake(31.56, 19.86)];
                [bezier15Path addCurveToPoint: CGPointMake(31.62, 20) controlPoint1: CGPointMake(31.61, 19.92) controlPoint2: CGPointMake(31.62, 19.95)];
                [bezier15Path addLineToPoint: CGPointMake(31.62, 20.59)];
                [bezier15Path addCurveToPoint: CGPointMake(31.84, 20.57) controlPoint1: CGPointMake(31.71, 20.58) controlPoint2: CGPointMake(31.78, 20.57)];
                [bezier15Path addCurveToPoint: CGPointMake(32.03, 20.57) controlPoint1: CGPointMake(31.93, 20.57) controlPoint2: CGPointMake(31.98, 20.57)];
                [bezier15Path closePath];
                [bezier15Path moveToPoint: CGPointMake(32.3, 21.13)];
                [bezier15Path addCurveToPoint: CGPointMake(32.28, 21) controlPoint1: CGPointMake(32.3, 21.07) controlPoint2: CGPointMake(32.29, 21.03)];
                [bezier15Path addCurveToPoint: CGPointMake(32.23, 20.92) controlPoint1: CGPointMake(32.27, 20.96) controlPoint2: CGPointMake(32.25, 20.94)];
                [bezier15Path addCurveToPoint: CGPointMake(32.13, 20.88) controlPoint1: CGPointMake(32.2, 20.9) controlPoint2: CGPointMake(32.17, 20.89)];
                [bezier15Path addCurveToPoint: CGPointMake(31.97, 20.87) controlPoint1: CGPointMake(32.09, 20.87) controlPoint2: CGPointMake(32.03, 20.87)];
                [bezier15Path addCurveToPoint: CGPointMake(31.84, 20.87) controlPoint1: CGPointMake(31.92, 20.87) controlPoint2: CGPointMake(31.88, 20.87)];
                [bezier15Path addCurveToPoint: CGPointMake(31.76, 20.87) controlPoint1: CGPointMake(31.8, 20.87) controlPoint2: CGPointMake(31.78, 20.87)];
                [bezier15Path addCurveToPoint: CGPointMake(31.7, 20.88) controlPoint1: CGPointMake(31.74, 20.87) controlPoint2: CGPointMake(31.72, 20.87)];
                [bezier15Path addCurveToPoint: CGPointMake(31.64, 20.89) controlPoint1: CGPointMake(31.68, 20.88) controlPoint2: CGPointMake(31.66, 20.89)];
                [bezier15Path addLineToPoint: CGPointMake(31.64, 21.12)];
                [bezier15Path addCurveToPoint: CGPointMake(31.66, 21.25) controlPoint1: CGPointMake(31.64, 21.17) controlPoint2: CGPointMake(31.65, 21.21)];
                [bezier15Path addCurveToPoint: CGPointMake(31.71, 21.34) controlPoint1: CGPointMake(31.67, 21.28) controlPoint2: CGPointMake(31.69, 21.31)];
                [bezier15Path addCurveToPoint: CGPointMake(31.81, 21.39) controlPoint1: CGPointMake(31.73, 21.37) controlPoint2: CGPointMake(31.77, 21.38)];
                [bezier15Path addCurveToPoint: CGPointMake(31.97, 21.41) controlPoint1: CGPointMake(31.85, 21.4) controlPoint2: CGPointMake(31.9, 21.41)];
                [bezier15Path addCurveToPoint: CGPointMake(32.12, 21.4) controlPoint1: CGPointMake(32.03, 21.41) controlPoint2: CGPointMake(32.08, 21.41)];
                [bezier15Path addCurveToPoint: CGPointMake(32.22, 21.36) controlPoint1: CGPointMake(32.16, 21.39) controlPoint2: CGPointMake(32.2, 21.38)];
                [bezier15Path addCurveToPoint: CGPointMake(32.28, 21.28) controlPoint1: CGPointMake(32.25, 21.34) controlPoint2: CGPointMake(32.27, 21.31)];
                [bezier15Path addCurveToPoint: CGPointMake(32.3, 21.13) controlPoint1: CGPointMake(32.29, 21.24) controlPoint2: CGPointMake(32.3, 21.19)];
                [bezier15Path closePath];
                bezier15Path.miterLimit = 4;

                [fillColor setFill];
                [bezier15Path fill];


                //// Bezier 16 Drawing
                UIBezierPath* bezier16Path = [UIBezierPath bezierPath];
                [bezier16Path moveToPoint: CGPointMake(34.41, 20.64)];
                [bezier16Path addCurveToPoint: CGPointMake(34.53, 20.67) controlPoint1: CGPointMake(34.46, 20.64) controlPoint2: CGPointMake(34.5, 20.65)];
                [bezier16Path addCurveToPoint: CGPointMake(34.58, 20.78) controlPoint1: CGPointMake(34.56, 20.69) controlPoint2: CGPointMake(34.58, 20.73)];
                [bezier16Path addCurveToPoint: CGPointMake(34.53, 20.9) controlPoint1: CGPointMake(34.58, 20.84) controlPoint2: CGPointMake(34.56, 20.88)];
                [bezier16Path addCurveToPoint: CGPointMake(34.41, 20.94) controlPoint1: CGPointMake(34.49, 20.92) controlPoint2: CGPointMake(34.46, 20.93)];
                [bezier16Path addLineToPoint: CGPointMake(34.35, 20.94)];
                [bezier16Path addLineToPoint: CGPointMake(34.35, 21.55)];
                [bezier16Path addCurveToPoint: CGPointMake(34.34, 21.6) controlPoint1: CGPointMake(34.35, 21.57) controlPoint2: CGPointMake(34.34, 21.58)];
                [bezier16Path addCurveToPoint: CGPointMake(34.31, 21.65) controlPoint1: CGPointMake(34.33, 21.62) controlPoint2: CGPointMake(34.32, 21.63)];
                [bezier16Path addCurveToPoint: CGPointMake(34.25, 21.69) controlPoint1: CGPointMake(34.29, 21.66) controlPoint2: CGPointMake(34.28, 21.68)];
                [bezier16Path addCurveToPoint: CGPointMake(34.17, 21.7) controlPoint1: CGPointMake(34.23, 21.7) controlPoint2: CGPointMake(34.2, 21.7)];
                [bezier16Path addCurveToPoint: CGPointMake(34.09, 21.69) controlPoint1: CGPointMake(34.14, 21.7) controlPoint2: CGPointMake(34.1, 21.7)];
                [bezier16Path addCurveToPoint: CGPointMake(34.03, 21.65) controlPoint1: CGPointMake(34.07, 21.68) controlPoint2: CGPointMake(34.05, 21.67)];
                [bezier16Path addCurveToPoint: CGPointMake(34, 21.6) controlPoint1: CGPointMake(34.02, 21.64) controlPoint2: CGPointMake(34.01, 21.62)];
                [bezier16Path addCurveToPoint: CGPointMake(34, 21.55) controlPoint1: CGPointMake(34, 21.59) controlPoint2: CGPointMake(34, 21.57)];
                [bezier16Path addLineToPoint: CGPointMake(34, 20.94)];
                [bezier16Path addLineToPoint: CGPointMake(33.3, 20.94)];
                [bezier16Path addCurveToPoint: CGPointMake(33.21, 20.92) controlPoint1: CGPointMake(33.25, 20.94) controlPoint2: CGPointMake(33.23, 20.93)];
                [bezier16Path addCurveToPoint: CGPointMake(33.19, 20.85) controlPoint1: CGPointMake(33.2, 20.91) controlPoint2: CGPointMake(33.19, 20.88)];
                [bezier16Path addLineToPoint: CGPointMake(33.19, 20.02)];
                [bezier16Path addCurveToPoint: CGPointMake(33.2, 19.97) controlPoint1: CGPointMake(33.19, 20) controlPoint2: CGPointMake(33.2, 19.98)];
                [bezier16Path addCurveToPoint: CGPointMake(33.23, 19.92) controlPoint1: CGPointMake(33.21, 19.95) controlPoint2: CGPointMake(33.22, 19.93)];
                [bezier16Path addCurveToPoint: CGPointMake(33.28, 19.88) controlPoint1: CGPointMake(33.24, 19.91) controlPoint2: CGPointMake(33.26, 19.89)];
                [bezier16Path addCurveToPoint: CGPointMake(33.36, 19.86) controlPoint1: CGPointMake(33.31, 19.87) controlPoint2: CGPointMake(33.33, 19.86)];
                [bezier16Path addCurveToPoint: CGPointMake(33.5, 19.9) controlPoint1: CGPointMake(33.42, 19.86) controlPoint2: CGPointMake(33.47, 19.87)];
                [bezier16Path addCurveToPoint: CGPointMake(33.55, 20.02) controlPoint1: CGPointMake(33.53, 19.93) controlPoint2: CGPointMake(33.55, 19.97)];
                [bezier16Path addLineToPoint: CGPointMake(33.55, 20.66)];
                [bezier16Path addLineToPoint: CGPointMake(34, 20.66)];
                [bezier16Path addLineToPoint: CGPointMake(34, 20)];
                [bezier16Path addCurveToPoint: CGPointMake(34.04, 19.89) controlPoint1: CGPointMake(34, 19.95) controlPoint2: CGPointMake(34.01, 19.92)];
                [bezier16Path addCurveToPoint: CGPointMake(34.17, 19.85) controlPoint1: CGPointMake(34.07, 19.86) controlPoint2: CGPointMake(34.12, 19.85)];
                [bezier16Path addCurveToPoint: CGPointMake(34.3, 19.89) controlPoint1: CGPointMake(34.23, 19.85) controlPoint2: CGPointMake(34.27, 19.86)];
                [bezier16Path addCurveToPoint: CGPointMake(34.35, 20) controlPoint1: CGPointMake(34.33, 19.92) controlPoint2: CGPointMake(34.35, 19.95)];
                [bezier16Path addLineToPoint: CGPointMake(34.35, 20.64)];
                [bezier16Path addLineToPoint: CGPointMake(34.41, 20.64)];
                [bezier16Path addLineToPoint: CGPointMake(34.41, 20.64)];
                [bezier16Path closePath];
                bezier16Path.miterLimit = 4;

                [fillColor setFill];
                [bezier16Path fill];


                //// Bezier 17 Drawing
                UIBezierPath* bezier17Path = [UIBezierPath bezierPath];
                [bezier17Path moveToPoint: CGPointMake(36.57, 21.2)];
                [bezier17Path addLineToPoint: CGPointMake(36.57, 21.2)];
                [bezier17Path addCurveToPoint: CGPointMake(36.52, 21.44) controlPoint1: CGPointMake(36.57, 21.3) controlPoint2: CGPointMake(36.56, 21.38)];
                [bezier17Path addCurveToPoint: CGPointMake(36.38, 21.6) controlPoint1: CGPointMake(36.49, 21.5) controlPoint2: CGPointMake(36.44, 21.56)];
                [bezier17Path addCurveToPoint: CGPointMake(36.16, 21.68) controlPoint1: CGPointMake(36.32, 21.64) controlPoint2: CGPointMake(36.25, 21.67)];
                [bezier17Path addCurveToPoint: CGPointMake(35.88, 21.7) controlPoint1: CGPointMake(36.07, 21.7) controlPoint2: CGPointMake(35.98, 21.7)];
                [bezier17Path addCurveToPoint: CGPointMake(35.6, 21.67) controlPoint1: CGPointMake(35.78, 21.7) controlPoint2: CGPointMake(35.68, 21.69)];
                [bezier17Path addCurveToPoint: CGPointMake(35.38, 21.58) controlPoint1: CGPointMake(35.51, 21.65) controlPoint2: CGPointMake(35.44, 21.62)];
                [bezier17Path addCurveToPoint: CGPointMake(35.24, 21.43) controlPoint1: CGPointMake(35.32, 21.54) controlPoint2: CGPointMake(35.28, 21.49)];
                [bezier17Path addCurveToPoint: CGPointMake(35.2, 21.21) controlPoint1: CGPointMake(35.21, 21.37) controlPoint2: CGPointMake(35.2, 21.3)];
                [bezier17Path addLineToPoint: CGPointMake(35.2, 20.32)];
                [bezier17Path addCurveToPoint: CGPointMake(35.38, 19.96) controlPoint1: CGPointMake(35.2, 20.16) controlPoint2: CGPointMake(35.26, 20.04)];
                [bezier17Path addCurveToPoint: CGPointMake(35.89, 19.84) controlPoint1: CGPointMake(35.5, 19.88) controlPoint2: CGPointMake(35.67, 19.84)];
                [bezier17Path addCurveToPoint: CGPointMake(36.17, 19.87) controlPoint1: CGPointMake(35.99, 19.84) controlPoint2: CGPointMake(36.09, 19.85)];
                [bezier17Path addCurveToPoint: CGPointMake(36.38, 19.96) controlPoint1: CGPointMake(36.25, 19.89) controlPoint2: CGPointMake(36.33, 19.92)];
                [bezier17Path addCurveToPoint: CGPointMake(36.52, 20.11) controlPoint1: CGPointMake(36.44, 20) controlPoint2: CGPointMake(36.48, 20.05)];
                [bezier17Path addCurveToPoint: CGPointMake(36.57, 20.32) controlPoint1: CGPointMake(36.55, 20.17) controlPoint2: CGPointMake(36.57, 20.24)];
                [bezier17Path addLineToPoint: CGPointMake(36.57, 21.2)];
                [bezier17Path closePath];
                [bezier17Path moveToPoint: CGPointMake(36.21, 20.35)];
                [bezier17Path addCurveToPoint: CGPointMake(36.13, 20.2) controlPoint1: CGPointMake(36.21, 20.29) controlPoint2: CGPointMake(36.19, 20.23)];
                [bezier17Path addCurveToPoint: CGPointMake(35.88, 20.14) controlPoint1: CGPointMake(36.08, 20.16) controlPoint2: CGPointMake(35.99, 20.14)];
                [bezier17Path addCurveToPoint: CGPointMake(35.63, 20.19) controlPoint1: CGPointMake(35.77, 20.14) controlPoint2: CGPointMake(35.69, 20.16)];
                [bezier17Path addCurveToPoint: CGPointMake(35.55, 20.33) controlPoint1: CGPointMake(35.58, 20.23) controlPoint2: CGPointMake(35.55, 20.27)];
                [bezier17Path addLineToPoint: CGPointMake(35.55, 21.2)];
                [bezier17Path addCurveToPoint: CGPointMake(35.63, 21.35) controlPoint1: CGPointMake(35.55, 21.27) controlPoint2: CGPointMake(35.58, 21.32)];
                [bezier17Path addCurveToPoint: CGPointMake(35.87, 21.39) controlPoint1: CGPointMake(35.68, 21.38) controlPoint2: CGPointMake(35.76, 21.39)];
                [bezier17Path addCurveToPoint: CGPointMake(36.12, 21.34) controlPoint1: CGPointMake(35.97, 21.39) controlPoint2: CGPointMake(36.06, 21.38)];
                [bezier17Path addCurveToPoint: CGPointMake(36.21, 21.19) controlPoint1: CGPointMake(36.18, 21.31) controlPoint2: CGPointMake(36.21, 21.26)];
                [bezier17Path addLineToPoint: CGPointMake(36.21, 20.35)];
                [bezier17Path closePath];
                bezier17Path.miterLimit = 4;

                [fillColor setFill];
                [bezier17Path fill];


                //// Bezier 18 Drawing
                UIBezierPath* bezier18Path = [UIBezierPath bezierPath];
                [bezier18Path moveToPoint: CGPointMake(38.53, 21.15)];
                [bezier18Path addCurveToPoint: CGPointMake(38.5, 21.42) controlPoint1: CGPointMake(38.53, 21.26) controlPoint2: CGPointMake(38.52, 21.35)];
                [bezier18Path addCurveToPoint: CGPointMake(38.38, 21.59) controlPoint1: CGPointMake(38.48, 21.49) controlPoint2: CGPointMake(38.44, 21.55)];
                [bezier18Path addCurveToPoint: CGPointMake(38.15, 21.68) controlPoint1: CGPointMake(38.33, 21.63) controlPoint2: CGPointMake(38.25, 21.66)];
                [bezier18Path addCurveToPoint: CGPointMake(37.78, 21.71) controlPoint1: CGPointMake(38.05, 21.7) controlPoint2: CGPointMake(37.93, 21.71)];
                [bezier18Path addLineToPoint: CGPointMake(37.76, 21.71)];
                [bezier18Path addCurveToPoint: CGPointMake(37.64, 21.71) controlPoint1: CGPointMake(37.72, 21.71) controlPoint2: CGPointMake(37.68, 21.71)];
                [bezier18Path addCurveToPoint: CGPointMake(37.5, 21.7) controlPoint1: CGPointMake(37.59, 21.71) controlPoint2: CGPointMake(37.55, 21.71)];
                [bezier18Path addCurveToPoint: CGPointMake(37.37, 21.68) controlPoint1: CGPointMake(37.45, 21.69) controlPoint2: CGPointMake(37.41, 21.69)];
                [bezier18Path addCurveToPoint: CGPointMake(37.25, 21.64) controlPoint1: CGPointMake(37.32, 21.67) controlPoint2: CGPointMake(37.29, 21.66)];
                [bezier18Path addCurveToPoint: CGPointMake(37.17, 21.57) controlPoint1: CGPointMake(37.21, 21.62) controlPoint2: CGPointMake(37.19, 21.6)];
                [bezier18Path addCurveToPoint: CGPointMake(37.14, 21.47) controlPoint1: CGPointMake(37.15, 21.54) controlPoint2: CGPointMake(37.14, 21.51)];
                [bezier18Path addLineToPoint: CGPointMake(37.14, 21.46)];
                [bezier18Path addCurveToPoint: CGPointMake(37.19, 21.35) controlPoint1: CGPointMake(37.14, 21.42) controlPoint2: CGPointMake(37.16, 21.38)];
                [bezier18Path addCurveToPoint: CGPointMake(37.3, 21.31) controlPoint1: CGPointMake(37.22, 21.32) controlPoint2: CGPointMake(37.26, 21.31)];
                [bezier18Path addLineToPoint: CGPointMake(37.3, 21.31)];
                [bezier18Path addCurveToPoint: CGPointMake(37.36, 21.31) controlPoint1: CGPointMake(37.32, 21.31) controlPoint2: CGPointMake(37.34, 21.31)];
                [bezier18Path addCurveToPoint: CGPointMake(37.4, 21.32) controlPoint1: CGPointMake(37.38, 21.32) controlPoint2: CGPointMake(37.39, 21.32)];
                [bezier18Path addCurveToPoint: CGPointMake(37.43, 21.34) controlPoint1: CGPointMake(37.41, 21.33) controlPoint2: CGPointMake(37.42, 21.33)];
                [bezier18Path addCurveToPoint: CGPointMake(37.45, 21.36) controlPoint1: CGPointMake(37.44, 21.35) controlPoint2: CGPointMake(37.45, 21.35)];
                [bezier18Path addLineToPoint: CGPointMake(37.45, 21.36)];
                [bezier18Path addCurveToPoint: CGPointMake(37.49, 21.38) controlPoint1: CGPointMake(37.46, 21.37) controlPoint2: CGPointMake(37.48, 21.38)];
                [bezier18Path addCurveToPoint: CGPointMake(37.55, 21.4) controlPoint1: CGPointMake(37.5, 21.39) controlPoint2: CGPointMake(37.52, 21.39)];
                [bezier18Path addCurveToPoint: CGPointMake(37.64, 21.41) controlPoint1: CGPointMake(37.58, 21.41) controlPoint2: CGPointMake(37.61, 21.41)];
                [bezier18Path addCurveToPoint: CGPointMake(37.79, 21.41) controlPoint1: CGPointMake(37.68, 21.41) controlPoint2: CGPointMake(37.73, 21.41)];
                [bezier18Path addLineToPoint: CGPointMake(37.81, 21.41)];
                [bezier18Path addCurveToPoint: CGPointMake(37.99, 21.39) controlPoint1: CGPointMake(37.88, 21.41) controlPoint2: CGPointMake(37.94, 21.41)];
                [bezier18Path addCurveToPoint: CGPointMake(38.1, 21.34) controlPoint1: CGPointMake(38.04, 21.38) controlPoint2: CGPointMake(38.07, 21.36)];
                [bezier18Path addCurveToPoint: CGPointMake(38.16, 21.25) controlPoint1: CGPointMake(38.13, 21.32) controlPoint2: CGPointMake(38.14, 21.29)];
                [bezier18Path addCurveToPoint: CGPointMake(38.17, 21.13) controlPoint1: CGPointMake(38.17, 21.22) controlPoint2: CGPointMake(38.17, 21.18)];
                [bezier18Path addCurveToPoint: CGPointMake(38.14, 20.95) controlPoint1: CGPointMake(38.17, 21.05) controlPoint2: CGPointMake(38.16, 20.99)];
                [bezier18Path addCurveToPoint: CGPointMake(38.02, 20.9) controlPoint1: CGPointMake(38.12, 20.92) controlPoint2: CGPointMake(38.08, 20.9)];
                [bezier18Path addLineToPoint: CGPointMake(37.64, 20.9)];
                [bezier18Path addCurveToPoint: CGPointMake(37.57, 20.89) controlPoint1: CGPointMake(37.62, 20.9) controlPoint2: CGPointMake(37.6, 20.9)];
                [bezier18Path addCurveToPoint: CGPointMake(37.52, 20.87) controlPoint1: CGPointMake(37.55, 20.89) controlPoint2: CGPointMake(37.53, 20.88)];
                [bezier18Path addCurveToPoint: CGPointMake(37.48, 20.83) controlPoint1: CGPointMake(37.5, 20.86) controlPoint2: CGPointMake(37.49, 20.84)];
                [bezier18Path addCurveToPoint: CGPointMake(37.47, 20.76) controlPoint1: CGPointMake(37.47, 20.81) controlPoint2: CGPointMake(37.47, 20.79)];
                [bezier18Path addCurveToPoint: CGPointMake(37.52, 20.64) controlPoint1: CGPointMake(37.47, 20.7) controlPoint2: CGPointMake(37.49, 20.67)];
                [bezier18Path addCurveToPoint: CGPointMake(37.64, 20.61) controlPoint1: CGPointMake(37.56, 20.62) controlPoint2: CGPointMake(37.59, 20.61)];
                [bezier18Path addLineToPoint: CGPointMake(38, 20.61)];
                [bezier18Path addCurveToPoint: CGPointMake(38.07, 20.6) controlPoint1: CGPointMake(38.03, 20.61) controlPoint2: CGPointMake(38.05, 20.61)];
                [bezier18Path addCurveToPoint: CGPointMake(38.12, 20.57) controlPoint1: CGPointMake(38.09, 20.59) controlPoint2: CGPointMake(38.11, 20.58)];
                [bezier18Path addCurveToPoint: CGPointMake(38.15, 20.51) controlPoint1: CGPointMake(38.13, 20.55) controlPoint2: CGPointMake(38.14, 20.53)];
                [bezier18Path addCurveToPoint: CGPointMake(38.16, 20.4) controlPoint1: CGPointMake(38.16, 20.48) controlPoint2: CGPointMake(38.16, 20.45)];
                [bezier18Path addCurveToPoint: CGPointMake(38.15, 20.28) controlPoint1: CGPointMake(38.16, 20.35) controlPoint2: CGPointMake(38.16, 20.31)];
                [bezier18Path addCurveToPoint: CGPointMake(38.11, 20.2) controlPoint1: CGPointMake(38.14, 20.25) controlPoint2: CGPointMake(38.13, 20.22)];
                [bezier18Path addCurveToPoint: CGPointMake(38.01, 20.16) controlPoint1: CGPointMake(38.09, 20.18) controlPoint2: CGPointMake(38.05, 20.16)];
                [bezier18Path addCurveToPoint: CGPointMake(37.83, 20.15) controlPoint1: CGPointMake(37.97, 20.15) controlPoint2: CGPointMake(37.9, 20.15)];
                [bezier18Path addLineToPoint: CGPointMake(37.81, 20.15)];
                [bezier18Path addCurveToPoint: CGPointMake(37.66, 20.16) controlPoint1: CGPointMake(37.76, 20.15) controlPoint2: CGPointMake(37.71, 20.15)];
                [bezier18Path addCurveToPoint: CGPointMake(37.53, 20.19) controlPoint1: CGPointMake(37.61, 20.17) controlPoint2: CGPointMake(37.56, 20.18)];
                [bezier18Path addCurveToPoint: CGPointMake(37.49, 20.21) controlPoint1: CGPointMake(37.51, 20.2) controlPoint2: CGPointMake(37.5, 20.2)];
                [bezier18Path addCurveToPoint: CGPointMake(37.45, 20.23) controlPoint1: CGPointMake(37.48, 20.22) controlPoint2: CGPointMake(37.46, 20.23)];
                [bezier18Path addCurveToPoint: CGPointMake(37.41, 20.24) controlPoint1: CGPointMake(37.44, 20.24) controlPoint2: CGPointMake(37.42, 20.24)];
                [bezier18Path addCurveToPoint: CGPointMake(37.36, 20.24) controlPoint1: CGPointMake(37.39, 20.24) controlPoint2: CGPointMake(37.38, 20.24)];
                [bezier18Path addLineToPoint: CGPointMake(37.35, 20.24)];
                [bezier18Path addCurveToPoint: CGPointMake(37.24, 20.2) controlPoint1: CGPointMake(37.3, 20.24) controlPoint2: CGPointMake(37.27, 20.23)];
                [bezier18Path addCurveToPoint: CGPointMake(37.2, 20.1) controlPoint1: CGPointMake(37.21, 20.17) controlPoint2: CGPointMake(37.2, 20.14)];
                [bezier18Path addLineToPoint: CGPointMake(37.2, 20.1)];
                [bezier18Path addCurveToPoint: CGPointMake(37.24, 19.99) controlPoint1: CGPointMake(37.2, 20.06) controlPoint2: CGPointMake(37.22, 20.02)];
                [bezier18Path addCurveToPoint: CGPointMake(37.35, 19.91) controlPoint1: CGPointMake(37.27, 19.96) controlPoint2: CGPointMake(37.3, 19.93)];
                [bezier18Path addCurveToPoint: CGPointMake(37.54, 19.86) controlPoint1: CGPointMake(37.4, 19.89) controlPoint2: CGPointMake(37.46, 19.87)];
                [bezier18Path addCurveToPoint: CGPointMake(37.82, 19.84) controlPoint1: CGPointMake(37.62, 19.85) controlPoint2: CGPointMake(37.71, 19.84)];
                [bezier18Path addCurveToPoint: CGPointMake(38.16, 19.86) controlPoint1: CGPointMake(37.95, 19.84) controlPoint2: CGPointMake(38.07, 19.85)];
                [bezier18Path addCurveToPoint: CGPointMake(38.38, 19.94) controlPoint1: CGPointMake(38.25, 19.87) controlPoint2: CGPointMake(38.32, 19.9)];
                [bezier18Path addCurveToPoint: CGPointMake(38.5, 20.1) controlPoint1: CGPointMake(38.43, 19.98) controlPoint2: CGPointMake(38.48, 20.03)];
                [bezier18Path addCurveToPoint: CGPointMake(38.54, 20.36) controlPoint1: CGPointMake(38.52, 20.17) controlPoint2: CGPointMake(38.54, 20.25)];
                [bezier18Path addCurveToPoint: CGPointMake(38.53, 20.5) controlPoint1: CGPointMake(38.54, 20.41) controlPoint2: CGPointMake(38.54, 20.46)];
                [bezier18Path addCurveToPoint: CGPointMake(38.51, 20.61) controlPoint1: CGPointMake(38.52, 20.54) controlPoint2: CGPointMake(38.52, 20.58)];
                [bezier18Path addCurveToPoint: CGPointMake(38.48, 20.69) controlPoint1: CGPointMake(38.5, 20.64) controlPoint2: CGPointMake(38.49, 20.67)];
                [bezier18Path addCurveToPoint: CGPointMake(38.43, 20.75) controlPoint1: CGPointMake(38.47, 20.71) controlPoint2: CGPointMake(38.45, 20.73)];
                [bezier18Path addCurveToPoint: CGPointMake(38.47, 20.79) controlPoint1: CGPointMake(38.44, 20.76) controlPoint2: CGPointMake(38.46, 20.78)];
                [bezier18Path addCurveToPoint: CGPointMake(38.5, 20.86) controlPoint1: CGPointMake(38.48, 20.81) controlPoint2: CGPointMake(38.5, 20.83)];
                [bezier18Path addCurveToPoint: CGPointMake(38.53, 20.97) controlPoint1: CGPointMake(38.51, 20.89) controlPoint2: CGPointMake(38.52, 20.93)];
                [bezier18Path addCurveToPoint: CGPointMake(38.53, 21.15) controlPoint1: CGPointMake(38.52, 21.03) controlPoint2: CGPointMake(38.53, 21.08)];
                [bezier18Path closePath];
                bezier18Path.miterLimit = 4;

                [fillColor setFill];
                [bezier18Path fill];
            }
        }


        //// Group 5
        {
            //// Bezier 19 Drawing
            UIBezierPath* bezier19Path = [UIBezierPath bezierPath];
            [bezier19Path moveToPoint: CGPointMake(10.17, 2.66)];
            [bezier19Path addCurveToPoint: CGPointMake(3.65, 9.18) controlPoint1: CGPointMake(6.57, 2.66) controlPoint2: CGPointMake(3.65, 5.58)];
            [bezier19Path addCurveToPoint: CGPointMake(10.17, 15.7) controlPoint1: CGPointMake(3.65, 12.78) controlPoint2: CGPointMake(6.57, 15.7)];
            [bezier19Path addCurveToPoint: CGPointMake(16.69, 9.18) controlPoint1: CGPointMake(13.77, 15.7) controlPoint2: CGPointMake(16.69, 12.78)];
            [bezier19Path addCurveToPoint: CGPointMake(10.17, 2.66) controlPoint1: CGPointMake(16.68, 5.58) controlPoint2: CGPointMake(13.77, 2.66)];
            [bezier19Path closePath];
            [bezier19Path moveToPoint: CGPointMake(10.17, 14.81)];
            [bezier19Path addCurveToPoint: CGPointMake(4.54, 9.18) controlPoint1: CGPointMake(7.07, 14.81) controlPoint2: CGPointMake(4.54, 12.28)];
            [bezier19Path addCurveToPoint: CGPointMake(10.17, 3.55) controlPoint1: CGPointMake(4.54, 6.08) controlPoint2: CGPointMake(7.07, 3.55)];
            [bezier19Path addCurveToPoint: CGPointMake(15.8, 9.18) controlPoint1: CGPointMake(13.28, 3.55) controlPoint2: CGPointMake(15.8, 6.08)];
            [bezier19Path addCurveToPoint: CGPointMake(10.17, 14.81) controlPoint1: CGPointMake(15.8, 12.28) controlPoint2: CGPointMake(13.27, 14.81)];
            [bezier19Path closePath];
            bezier19Path.miterLimit = 4;

            [fillColor14 setFill];
            [bezier19Path fill];


            //// Group 6
            {
                //// Group 7
                {
                    //// Bezier 20 Drawing
                    UIBezierPath* bezier20Path = [UIBezierPath bezierPath];
                    [bezier20Path moveToPoint: CGPointMake(9.35, 9.92)];
                    [bezier20Path addCurveToPoint: CGPointMake(10.89, 7.78) controlPoint1: CGPointMake(9.35, 8.66) controlPoint2: CGPointMake(10.89, 8.51)];
                    [bezier20Path addCurveToPoint: CGPointMake(10.06, 7.18) controlPoint1: CGPointMake(10.89, 7.45) controlPoint2: CGPointMake(10.65, 7.18)];
                    [bezier20Path addCurveToPoint: CGPointMake(8.76, 7.84) controlPoint1: CGPointMake(9.53, 7.18) controlPoint2: CGPointMake(9.09, 7.44)];
                    [bezier20Path addLineToPoint: CGPointMake(7.91, 6.87)];
                    [bezier20Path addCurveToPoint: CGPointMake(10.23, 5.84) controlPoint1: CGPointMake(8.47, 6.21) controlPoint2: CGPointMake(9.32, 5.84)];
                    [bezier20Path addCurveToPoint: CGPointMake(12.43, 7.51) controlPoint1: CGPointMake(11.6, 5.84) controlPoint2: CGPointMake(12.43, 6.53)];
                    [bezier20Path addCurveToPoint: CGPointMake(10.66, 10.06) controlPoint1: CGPointMake(12.43, 9.06) controlPoint2: CGPointMake(10.66, 9.17)];
                    [bezier20Path addCurveToPoint: CGPointMake(10.85, 10.51) controlPoint1: CGPointMake(10.66, 10.23) controlPoint2: CGPointMake(10.75, 10.41)];
                    [bezier20Path addLineToPoint: CGPointMake(9.7, 10.85)];
                    [bezier20Path addCurveToPoint: CGPointMake(9.35, 9.92) controlPoint1: CGPointMake(9.48, 10.61) controlPoint2: CGPointMake(9.35, 10.29)];
                    [bezier20Path closePath];
                    [bezier20Path moveToPoint: CGPointMake(9.35, 12.27)];
                    [bezier20Path addCurveToPoint: CGPointMake(10.21, 11.41) controlPoint1: CGPointMake(9.35, 11.8) controlPoint2: CGPointMake(9.74, 11.41)];
                    [bezier20Path addCurveToPoint: CGPointMake(11.07, 12.27) controlPoint1: CGPointMake(10.67, 11.41) controlPoint2: CGPointMake(11.07, 11.8)];
                    [bezier20Path addCurveToPoint: CGPointMake(10.21, 13.13) controlPoint1: CGPointMake(11.07, 12.74) controlPoint2: CGPointMake(10.68, 13.13)];
                    [bezier20Path addCurveToPoint: CGPointMake(9.35, 12.27) controlPoint1: CGPointMake(9.74, 13.13) controlPoint2: CGPointMake(9.35, 12.73)];
                    [bezier20Path closePath];
                    bezier20Path.miterLimit = 4;

                    [fillColor14 setFill];
                    [bezier20Path fill];
                }
            }
        }
    }
}

- (void)drawCardVisa {
    //// Color Declarations
    UIColor* fillColor = [UIColor colorWithRed: 0.651 green: 0.651 blue: 0.651 alpha: 1];
    UIColor* fillColor2 = [UIColor colorWithRed: 0.951 green: 0.956 blue: 0.956 alpha: 1];
    UIColor* fillColor11 = [UIColor colorWithRed: 0.978 green: 0.636 blue: 0.15 alpha: 1];
    UIColor* fillColor15 = [UIColor colorWithRed: 0.031 green: 0.264 blue: 0.559 alpha: 1];

    //// ic_card_visa Group
    {
        //// Group 2
        {
            //// Bezier Drawing
            UIBezierPath* bezierPath = [UIBezierPath bezierPath];
            [bezierPath moveToPoint: CGPointMake(39.97, 0)];
            [bezierPath addLineToPoint: CGPointMake(2.04, 0)];
            [bezierPath addCurveToPoint: CGPointMake(0, 2.02) controlPoint1: CGPointMake(0.91, 0) controlPoint2: CGPointMake(0, 0.91)];
            [bezierPath addLineToPoint: CGPointMake(0, 3.04)];
            [bezierPath addLineToPoint: CGPointMake(0, 23.96)];
            [bezierPath addLineToPoint: CGPointMake(0, 24.98)];
            [bezierPath addCurveToPoint: CGPointMake(2.04, 27) controlPoint1: CGPointMake(0, 26.09) controlPoint2: CGPointMake(0.91, 27)];
            [bezierPath addLineToPoint: CGPointMake(39.97, 27)];
            [bezierPath addCurveToPoint: CGPointMake(42, 24.98) controlPoint1: CGPointMake(41.09, 27) controlPoint2: CGPointMake(42, 26.09)];
            [bezierPath addLineToPoint: CGPointMake(42, 2.02)];
            [bezierPath addCurveToPoint: CGPointMake(39.97, 0) controlPoint1: CGPointMake(42, 0.91) controlPoint2: CGPointMake(41.09, 0)];
            [bezierPath closePath];
            bezierPath.miterLimit = 4;

            [fillColor setFill];
            [bezierPath fill];


            //// Rectangle Drawing
            UIBezierPath* rectanglePath = [UIBezierPath bezierPathWithRoundedRect: CGRectMake(0.5, 0.5, 41, 25.5) cornerRadius: 1.6];
            [fillColor2 setFill];
            [rectanglePath fill];
        }


        //// Group 3
        {
            //// Bezier 2 Drawing
            UIBezierPath* bezier2Path = [UIBezierPath bezierPath];
            [bezier2Path moveToPoint: CGPointMake(11.72, 12.41)];
            [bezier2Path addLineToPoint: CGPointMake(13.08, 4.01)];
            [bezier2Path addLineToPoint: CGPointMake(15.25, 4.01)];
            [bezier2Path addLineToPoint: CGPointMake(13.89, 12.41)];
            [bezier2Path addLineToPoint: CGPointMake(11.72, 12.41)];
            [bezier2Path closePath];
            bezier2Path.miterLimit = 4;

            [fillColor15 setFill];
            [bezier2Path fill];


            //// Group 4
            {
                //// Bezier 3 Drawing
                UIBezierPath* bezier3Path = [UIBezierPath bezierPath];
                [bezier3Path moveToPoint: CGPointMake(21.75, 4.22)];
                [bezier3Path addCurveToPoint: CGPointMake(19.81, 3.87) controlPoint1: CGPointMake(21.32, 4.05) controlPoint2: CGPointMake(20.65, 3.87)];
                [bezier3Path addCurveToPoint: CGPointMake(16.15, 6.64) controlPoint1: CGPointMake(17.67, 3.87) controlPoint2: CGPointMake(16.16, 5.01)];
                [bezier3Path addCurveToPoint: CGPointMake(18.05, 8.92) controlPoint1: CGPointMake(16.14, 7.84) controlPoint2: CGPointMake(17.22, 8.52)];
                [bezier3Path addCurveToPoint: CGPointMake(19.17, 9.96) controlPoint1: CGPointMake(18.9, 9.33) controlPoint2: CGPointMake(19.18, 9.59)];
                [bezier3Path addCurveToPoint: CGPointMake(17.87, 10.78) controlPoint1: CGPointMake(19.17, 10.52) controlPoint2: CGPointMake(18.49, 10.78)];
                [bezier3Path addCurveToPoint: CGPointMake(15.83, 10.34) controlPoint1: CGPointMake(17, 10.78) controlPoint2: CGPointMake(16.54, 10.65)];
                [bezier3Path addLineToPoint: CGPointMake(15.55, 10.2)];
                [bezier3Path addLineToPoint: CGPointMake(15.25, 12.08)];
                [bezier3Path addCurveToPoint: CGPointMake(17.66, 12.53) controlPoint1: CGPointMake(15.76, 12.32) controlPoint2: CGPointMake(16.69, 12.52)];
                [bezier3Path addCurveToPoint: CGPointMake(21.44, 9.66) controlPoint1: CGPointMake(19.94, 12.53) controlPoint2: CGPointMake(21.42, 11.4)];
                [bezier3Path addCurveToPoint: CGPointMake(19.62, 7.38) controlPoint1: CGPointMake(21.45, 8.7) controlPoint2: CGPointMake(20.87, 7.98)];
                [bezier3Path addCurveToPoint: CGPointMake(18.4, 6.35) controlPoint1: CGPointMake(18.86, 7) controlPoint2: CGPointMake(18.4, 6.74)];
                [bezier3Path addCurveToPoint: CGPointMake(19.64, 5.63) controlPoint1: CGPointMake(18.4, 6) controlPoint2: CGPointMake(18.8, 5.63)];
                [bezier3Path addCurveToPoint: CGPointMake(21.27, 5.95) controlPoint1: CGPointMake(20.35, 5.62) controlPoint2: CGPointMake(20.87, 5.78)];
                [bezier3Path addLineToPoint: CGPointMake(21.46, 6.05)];
                [bezier3Path addLineToPoint: CGPointMake(21.75, 4.22)];
                [bezier3Path closePath];
                bezier3Path.miterLimit = 4;

                [fillColor15 setFill];
                [bezier3Path fill];


                //// Bezier 4 Drawing
                UIBezierPath* bezier4Path = [UIBezierPath bezierPath];
                [bezier4Path moveToPoint: CGPointMake(24.64, 9.43)];
                [bezier4Path addCurveToPoint: CGPointMake(25.5, 7.08) controlPoint1: CGPointMake(24.82, 8.95) controlPoint2: CGPointMake(25.5, 7.08)];
                [bezier4Path addCurveToPoint: CGPointMake(25.79, 6.28) controlPoint1: CGPointMake(25.48, 7.1) controlPoint2: CGPointMake(25.68, 6.59)];
                [bezier4Path addLineToPoint: CGPointMake(25.94, 7)];
                [bezier4Path addCurveToPoint: CGPointMake(26.44, 9.42) controlPoint1: CGPointMake(25.94, 7) controlPoint2: CGPointMake(26.35, 9)];
                [bezier4Path addLineToPoint: CGPointMake(24.64, 9.42)];
                [bezier4Path addLineToPoint: CGPointMake(24.64, 9.43)];
                [bezier4Path closePath];
                [bezier4Path moveToPoint: CGPointMake(27.31, 4.02)];
                [bezier4Path addLineToPoint: CGPointMake(25.63, 4.02)];
                [bezier4Path addCurveToPoint: CGPointMake(24.5, 4.72) controlPoint1: CGPointMake(25.12, 4.02) controlPoint2: CGPointMake(24.73, 4.17)];
                [bezier4Path addLineToPoint: CGPointMake(21.28, 12.41)];
                [bezier4Path addLineToPoint: CGPointMake(23.56, 12.41)];
                [bezier4Path addCurveToPoint: CGPointMake(24.02, 11.15) controlPoint1: CGPointMake(23.56, 12.41) controlPoint2: CGPointMake(23.93, 11.37)];
                [bezier4Path addCurveToPoint: CGPointMake(26.8, 11.16) controlPoint1: CGPointMake(24.27, 11.15) controlPoint2: CGPointMake(26.48, 11.16)];
                [bezier4Path addCurveToPoint: CGPointMake(27.06, 12.42) controlPoint1: CGPointMake(26.86, 11.45) controlPoint2: CGPointMake(27.06, 12.42)];
                [bezier4Path addLineToPoint: CGPointMake(29.07, 12.42)];
                [bezier4Path addLineToPoint: CGPointMake(27.31, 4.02)];
                [bezier4Path closePath];
                bezier4Path.miterLimit = 4;

                [fillColor15 setFill];
                [bezier4Path fill];


                //// Bezier 5 Drawing
                UIBezierPath* bezier5Path = [UIBezierPath bezierPath];
                [bezier5Path moveToPoint: CGPointMake(9.91, 4.02)];
                [bezier5Path addLineToPoint: CGPointMake(7.78, 9.75)];
                [bezier5Path addLineToPoint: CGPointMake(7.56, 8.58)];
                [bezier5Path addCurveToPoint: CGPointMake(4.56, 5.06) controlPoint1: CGPointMake(7.17, 7.24) controlPoint2: CGPointMake(5.94, 5.79)];
                [bezier5Path addLineToPoint: CGPointMake(6.5, 12.4)];
                [bezier5Path addLineToPoint: CGPointMake(8.79, 12.4)];
                [bezier5Path addLineToPoint: CGPointMake(12.21, 4.02)];
                [bezier5Path addLineToPoint: CGPointMake(9.91, 4.02)];
                [bezier5Path closePath];
                bezier5Path.miterLimit = 4;

                [fillColor15 setFill];
                [bezier5Path fill];


                //// Bezier 6 Drawing
                UIBezierPath* bezier6Path = [UIBezierPath bezierPath];
                [bezier6Path moveToPoint: CGPointMake(5.81, 4.02)];
                [bezier6Path addLineToPoint: CGPointMake(2.32, 4.02)];
                [bezier6Path addLineToPoint: CGPointMake(2.29, 4.19)];
                [bezier6Path addCurveToPoint: CGPointMake(7.56, 8.58) controlPoint1: CGPointMake(5.01, 4.88) controlPoint2: CGPointMake(6.81, 6.56)];
                [bezier6Path addLineToPoint: CGPointMake(6.8, 4.73)];
                [bezier6Path addCurveToPoint: CGPointMake(5.81, 4.02) controlPoint1: CGPointMake(6.67, 4.2) controlPoint2: CGPointMake(6.29, 4.04)];
                [bezier6Path closePath];
                bezier6Path.miterLimit = 4;

                [fillColor11 setFill];
                [bezier6Path fill];
            }
        }


        //// Bezier 7 Drawing
        UIBezierPath* bezier7Path = [UIBezierPath bezierPath];
        [bezier7Path moveToPoint: CGPointMake(32.87, 8.24)];
        [bezier7Path addCurveToPoint: CGPointMake(32.26, 7.62) controlPoint1: CGPointMake(32.53, 8.24) controlPoint2: CGPointMake(32.26, 7.96)];
        [bezier7Path addLineToPoint: CGPointMake(32.26, 4.62)];
        [bezier7Path addCurveToPoint: CGPointMake(32.87, 4.01) controlPoint1: CGPointMake(32.26, 4.28) controlPoint2: CGPointMake(32.54, 4.01)];
        [bezier7Path addLineToPoint: CGPointMake(37.96, 4.01)];
        [bezier7Path addCurveToPoint: CGPointMake(38.57, 4.62) controlPoint1: CGPointMake(38.3, 4.01) controlPoint2: CGPointMake(38.57, 4.29)];
        [bezier7Path addLineToPoint: CGPointMake(38.57, 7.63)];
        [bezier7Path addCurveToPoint: CGPointMake(37.96, 8.25) controlPoint1: CGPointMake(38.57, 7.97) controlPoint2: CGPointMake(38.29, 8.25)];
        [bezier7Path addLineToPoint: CGPointMake(32.87, 8.25)];
        [bezier7Path addLineToPoint: CGPointMake(32.87, 8.24)];
        [bezier7Path closePath];
        [bezier7Path moveToPoint: CGPointMake(32.87, 4.32)];
        [bezier7Path addCurveToPoint: CGPointMake(32.57, 4.62) controlPoint1: CGPointMake(32.71, 4.32) controlPoint2: CGPointMake(32.57, 4.45)];
        [bezier7Path addLineToPoint: CGPointMake(32.57, 7.63)];
        [bezier7Path addCurveToPoint: CGPointMake(32.87, 7.93) controlPoint1: CGPointMake(32.57, 7.79) controlPoint2: CGPointMake(32.7, 7.93)];
        [bezier7Path addLineToPoint: CGPointMake(37.96, 7.93)];
        [bezier7Path addCurveToPoint: CGPointMake(38.25, 7.63) controlPoint1: CGPointMake(38.12, 7.93) controlPoint2: CGPointMake(38.25, 7.8)];
        [bezier7Path addLineToPoint: CGPointMake(38.25, 4.62)];
        [bezier7Path addCurveToPoint: CGPointMake(37.96, 4.32) controlPoint1: CGPointMake(38.25, 4.46) controlPoint2: CGPointMake(38.12, 4.32)];
        [bezier7Path addLineToPoint: CGPointMake(32.87, 4.32)];
        [bezier7Path closePath];
        bezier7Path.miterLimit = 4;

        [fillColor setFill];
        [bezier7Path fill];


        //// Group 5
        {
            //// Group 6
            {
                //// Bezier 8 Drawing
                UIBezierPath* bezier8Path = [UIBezierPath bezierPath];
                [bezier8Path moveToPoint: CGPointMake(4.97, 20.64)];
                [bezier8Path addCurveToPoint: CGPointMake(5.09, 20.67) controlPoint1: CGPointMake(5.02, 20.64) controlPoint2: CGPointMake(5.06, 20.65)];
                [bezier8Path addCurveToPoint: CGPointMake(5.14, 20.78) controlPoint1: CGPointMake(5.12, 20.69) controlPoint2: CGPointMake(5.14, 20.73)];
                [bezier8Path addCurveToPoint: CGPointMake(5.09, 20.9) controlPoint1: CGPointMake(5.14, 20.84) controlPoint2: CGPointMake(5.12, 20.88)];
                [bezier8Path addCurveToPoint: CGPointMake(4.97, 20.94) controlPoint1: CGPointMake(5.06, 20.92) controlPoint2: CGPointMake(5.02, 20.93)];
                [bezier8Path addLineToPoint: CGPointMake(4.91, 20.94)];
                [bezier8Path addLineToPoint: CGPointMake(4.91, 21.55)];
                [bezier8Path addCurveToPoint: CGPointMake(4.9, 21.6) controlPoint1: CGPointMake(4.91, 21.57) controlPoint2: CGPointMake(4.91, 21.58)];
                [bezier8Path addCurveToPoint: CGPointMake(4.87, 21.65) controlPoint1: CGPointMake(4.89, 21.62) controlPoint2: CGPointMake(4.89, 21.63)];
                [bezier8Path addCurveToPoint: CGPointMake(4.81, 21.69) controlPoint1: CGPointMake(4.85, 21.66) controlPoint2: CGPointMake(4.84, 21.68)];
                [bezier8Path addCurveToPoint: CGPointMake(4.73, 21.7) controlPoint1: CGPointMake(4.79, 21.7) controlPoint2: CGPointMake(4.76, 21.7)];
                [bezier8Path addCurveToPoint: CGPointMake(4.65, 21.69) controlPoint1: CGPointMake(4.7, 21.7) controlPoint2: CGPointMake(4.67, 21.7)];
                [bezier8Path addCurveToPoint: CGPointMake(4.6, 21.65) controlPoint1: CGPointMake(4.63, 21.68) controlPoint2: CGPointMake(4.61, 21.67)];
                [bezier8Path addCurveToPoint: CGPointMake(4.57, 21.6) controlPoint1: CGPointMake(4.58, 21.64) controlPoint2: CGPointMake(4.57, 21.62)];
                [bezier8Path addCurveToPoint: CGPointMake(4.56, 21.55) controlPoint1: CGPointMake(4.56, 21.58) controlPoint2: CGPointMake(4.56, 21.57)];
                [bezier8Path addLineToPoint: CGPointMake(4.56, 20.94)];
                [bezier8Path addLineToPoint: CGPointMake(3.86, 20.94)];
                [bezier8Path addCurveToPoint: CGPointMake(3.77, 20.92) controlPoint1: CGPointMake(3.82, 20.94) controlPoint2: CGPointMake(3.79, 20.93)];
                [bezier8Path addCurveToPoint: CGPointMake(3.75, 20.85) controlPoint1: CGPointMake(3.76, 20.91) controlPoint2: CGPointMake(3.75, 20.88)];
                [bezier8Path addLineToPoint: CGPointMake(3.75, 20.02)];
                [bezier8Path addCurveToPoint: CGPointMake(3.76, 19.97) controlPoint1: CGPointMake(3.75, 20) controlPoint2: CGPointMake(3.75, 19.98)];
                [bezier8Path addCurveToPoint: CGPointMake(3.79, 19.92) controlPoint1: CGPointMake(3.76, 19.95) controlPoint2: CGPointMake(3.78, 19.93)];
                [bezier8Path addCurveToPoint: CGPointMake(3.85, 19.88) controlPoint1: CGPointMake(3.8, 19.91) controlPoint2: CGPointMake(3.82, 19.89)];
                [bezier8Path addCurveToPoint: CGPointMake(3.93, 19.86) controlPoint1: CGPointMake(3.87, 19.87) controlPoint2: CGPointMake(3.9, 19.86)];
                [bezier8Path addCurveToPoint: CGPointMake(4.07, 19.9) controlPoint1: CGPointMake(3.99, 19.86) controlPoint2: CGPointMake(4.04, 19.87)];
                [bezier8Path addCurveToPoint: CGPointMake(4.11, 20.02) controlPoint1: CGPointMake(4.1, 19.93) controlPoint2: CGPointMake(4.11, 19.97)];
                [bezier8Path addLineToPoint: CGPointMake(4.11, 20.66)];
                [bezier8Path addLineToPoint: CGPointMake(4.56, 20.66)];
                [bezier8Path addLineToPoint: CGPointMake(4.56, 20)];
                [bezier8Path addCurveToPoint: CGPointMake(4.6, 19.89) controlPoint1: CGPointMake(4.56, 19.95) controlPoint2: CGPointMake(4.57, 19.92)];
                [bezier8Path addCurveToPoint: CGPointMake(4.73, 19.85) controlPoint1: CGPointMake(4.63, 19.86) controlPoint2: CGPointMake(4.67, 19.85)];
                [bezier8Path addCurveToPoint: CGPointMake(4.87, 19.89) controlPoint1: CGPointMake(4.79, 19.85) controlPoint2: CGPointMake(4.84, 19.86)];
                [bezier8Path addCurveToPoint: CGPointMake(4.91, 20) controlPoint1: CGPointMake(4.9, 19.92) controlPoint2: CGPointMake(4.91, 19.96)];
                [bezier8Path addLineToPoint: CGPointMake(4.91, 20.64)];
                [bezier8Path addLineToPoint: CGPointMake(4.96, 20.64)];
                [bezier8Path addLineToPoint: CGPointMake(4.97, 20.64)];
                [bezier8Path closePath];
                bezier8Path.miterLimit = 4;

                [fillColor setFill];
                [bezier8Path fill];


                //// Bezier 9 Drawing
                UIBezierPath* bezier9Path = [UIBezierPath bezierPath];
                [bezier9Path moveToPoint: CGPointMake(7.08, 21.15)];
                [bezier9Path addCurveToPoint: CGPointMake(7.05, 21.42) controlPoint1: CGPointMake(7.08, 21.26) controlPoint2: CGPointMake(7.07, 21.35)];
                [bezier9Path addCurveToPoint: CGPointMake(6.93, 21.59) controlPoint1: CGPointMake(7.03, 21.49) controlPoint2: CGPointMake(6.99, 21.55)];
                [bezier9Path addCurveToPoint: CGPointMake(6.7, 21.68) controlPoint1: CGPointMake(6.88, 21.63) controlPoint2: CGPointMake(6.8, 21.66)];
                [bezier9Path addCurveToPoint: CGPointMake(6.34, 21.71) controlPoint1: CGPointMake(6.6, 21.7) controlPoint2: CGPointMake(6.48, 21.71)];
                [bezier9Path addLineToPoint: CGPointMake(6.31, 21.71)];
                [bezier9Path addCurveToPoint: CGPointMake(6.19, 21.71) controlPoint1: CGPointMake(6.27, 21.71) controlPoint2: CGPointMake(6.23, 21.71)];
                [bezier9Path addCurveToPoint: CGPointMake(6.06, 21.7) controlPoint1: CGPointMake(6.14, 21.71) controlPoint2: CGPointMake(6.1, 21.71)];
                [bezier9Path addCurveToPoint: CGPointMake(5.93, 21.68) controlPoint1: CGPointMake(6.02, 21.69) controlPoint2: CGPointMake(5.97, 21.69)];
                [bezier9Path addCurveToPoint: CGPointMake(5.81, 21.64) controlPoint1: CGPointMake(5.88, 21.67) controlPoint2: CGPointMake(5.85, 21.66)];
                [bezier9Path addCurveToPoint: CGPointMake(5.73, 21.57) controlPoint1: CGPointMake(5.77, 21.62) controlPoint2: CGPointMake(5.75, 21.6)];
                [bezier9Path addCurveToPoint: CGPointMake(5.7, 21.47) controlPoint1: CGPointMake(5.71, 21.54) controlPoint2: CGPointMake(5.7, 21.51)];
                [bezier9Path addLineToPoint: CGPointMake(5.7, 21.46)];
                [bezier9Path addCurveToPoint: CGPointMake(5.75, 21.35) controlPoint1: CGPointMake(5.7, 21.42) controlPoint2: CGPointMake(5.72, 21.38)];
                [bezier9Path addCurveToPoint: CGPointMake(5.86, 21.31) controlPoint1: CGPointMake(5.78, 21.32) controlPoint2: CGPointMake(5.82, 21.31)];
                [bezier9Path addLineToPoint: CGPointMake(5.86, 21.31)];
                [bezier9Path addCurveToPoint: CGPointMake(5.92, 21.31) controlPoint1: CGPointMake(5.89, 21.31) controlPoint2: CGPointMake(5.91, 21.31)];
                [bezier9Path addCurveToPoint: CGPointMake(5.96, 21.32) controlPoint1: CGPointMake(5.94, 21.32) controlPoint2: CGPointMake(5.95, 21.32)];
                [bezier9Path addCurveToPoint: CGPointMake(5.99, 21.34) controlPoint1: CGPointMake(5.97, 21.33) controlPoint2: CGPointMake(5.98, 21.33)];
                [bezier9Path addCurveToPoint: CGPointMake(6.01, 21.36) controlPoint1: CGPointMake(6, 21.35) controlPoint2: CGPointMake(6, 21.35)];
                [bezier9Path addLineToPoint: CGPointMake(6.01, 21.36)];
                [bezier9Path addCurveToPoint: CGPointMake(6.05, 21.38) controlPoint1: CGPointMake(6.02, 21.37) controlPoint2: CGPointMake(6.03, 21.38)];
                [bezier9Path addCurveToPoint: CGPointMake(6.11, 21.4) controlPoint1: CGPointMake(6.06, 21.39) controlPoint2: CGPointMake(6.08, 21.39)];
                [bezier9Path addCurveToPoint: CGPointMake(6.21, 21.41) controlPoint1: CGPointMake(6.14, 21.41) controlPoint2: CGPointMake(6.17, 21.41)];
                [bezier9Path addCurveToPoint: CGPointMake(6.36, 21.41) controlPoint1: CGPointMake(6.25, 21.41) controlPoint2: CGPointMake(6.3, 21.41)];
                [bezier9Path addLineToPoint: CGPointMake(6.39, 21.41)];
                [bezier9Path addCurveToPoint: CGPointMake(6.57, 21.39) controlPoint1: CGPointMake(6.46, 21.41) controlPoint2: CGPointMake(6.52, 21.41)];
                [bezier9Path addCurveToPoint: CGPointMake(6.68, 21.34) controlPoint1: CGPointMake(6.62, 21.38) controlPoint2: CGPointMake(6.65, 21.36)];
                [bezier9Path addCurveToPoint: CGPointMake(6.73, 21.25) controlPoint1: CGPointMake(6.7, 21.32) controlPoint2: CGPointMake(6.72, 21.29)];
                [bezier9Path addCurveToPoint: CGPointMake(6.75, 21.13) controlPoint1: CGPointMake(6.74, 21.22) controlPoint2: CGPointMake(6.75, 21.18)];
                [bezier9Path addCurveToPoint: CGPointMake(6.71, 20.95) controlPoint1: CGPointMake(6.75, 21.05) controlPoint2: CGPointMake(6.74, 20.99)];
                [bezier9Path addCurveToPoint: CGPointMake(6.59, 20.9) controlPoint1: CGPointMake(6.69, 20.92) controlPoint2: CGPointMake(6.65, 20.9)];
                [bezier9Path addLineToPoint: CGPointMake(6.21, 20.9)];
                [bezier9Path addCurveToPoint: CGPointMake(6.15, 20.89) controlPoint1: CGPointMake(6.19, 20.9) controlPoint2: CGPointMake(6.17, 20.9)];
                [bezier9Path addCurveToPoint: CGPointMake(6.09, 20.87) controlPoint1: CGPointMake(6.13, 20.89) controlPoint2: CGPointMake(6.11, 20.88)];
                [bezier9Path addCurveToPoint: CGPointMake(6.05, 20.83) controlPoint1: CGPointMake(6.07, 20.86) controlPoint2: CGPointMake(6.06, 20.84)];
                [bezier9Path addCurveToPoint: CGPointMake(6.04, 20.76) controlPoint1: CGPointMake(6.04, 20.81) controlPoint2: CGPointMake(6.04, 20.79)];
                [bezier9Path addCurveToPoint: CGPointMake(6.09, 20.64) controlPoint1: CGPointMake(6.04, 20.7) controlPoint2: CGPointMake(6.06, 20.67)];
                [bezier9Path addCurveToPoint: CGPointMake(6.21, 20.61) controlPoint1: CGPointMake(6.13, 20.62) controlPoint2: CGPointMake(6.17, 20.61)];
                [bezier9Path addLineToPoint: CGPointMake(6.57, 20.61)];
                [bezier9Path addCurveToPoint: CGPointMake(6.64, 20.6) controlPoint1: CGPointMake(6.6, 20.61) controlPoint2: CGPointMake(6.62, 20.61)];
                [bezier9Path addCurveToPoint: CGPointMake(6.69, 20.57) controlPoint1: CGPointMake(6.66, 20.59) controlPoint2: CGPointMake(6.68, 20.58)];
                [bezier9Path addCurveToPoint: CGPointMake(6.72, 20.51) controlPoint1: CGPointMake(6.7, 20.55) controlPoint2: CGPointMake(6.71, 20.53)];
                [bezier9Path addCurveToPoint: CGPointMake(6.73, 20.4) controlPoint1: CGPointMake(6.73, 20.48) controlPoint2: CGPointMake(6.73, 20.45)];
                [bezier9Path addCurveToPoint: CGPointMake(6.72, 20.28) controlPoint1: CGPointMake(6.73, 20.35) controlPoint2: CGPointMake(6.73, 20.31)];
                [bezier9Path addCurveToPoint: CGPointMake(6.68, 20.2) controlPoint1: CGPointMake(6.72, 20.25) controlPoint2: CGPointMake(6.7, 20.22)];
                [bezier9Path addCurveToPoint: CGPointMake(6.58, 20.16) controlPoint1: CGPointMake(6.66, 20.18) controlPoint2: CGPointMake(6.62, 20.16)];
                [bezier9Path addCurveToPoint: CGPointMake(6.4, 20.15) controlPoint1: CGPointMake(6.54, 20.15) controlPoint2: CGPointMake(6.47, 20.15)];
                [bezier9Path addLineToPoint: CGPointMake(6.36, 20.15)];
                [bezier9Path addCurveToPoint: CGPointMake(6.21, 20.16) controlPoint1: CGPointMake(6.31, 20.15) controlPoint2: CGPointMake(6.26, 20.15)];
                [bezier9Path addCurveToPoint: CGPointMake(6.08, 20.19) controlPoint1: CGPointMake(6.16, 20.17) controlPoint2: CGPointMake(6.11, 20.18)];
                [bezier9Path addCurveToPoint: CGPointMake(6.04, 20.21) controlPoint1: CGPointMake(6.06, 20.2) controlPoint2: CGPointMake(6.05, 20.2)];
                [bezier9Path addCurveToPoint: CGPointMake(6, 20.24) controlPoint1: CGPointMake(6.03, 20.22) controlPoint2: CGPointMake(6.02, 20.23)];
                [bezier9Path addCurveToPoint: CGPointMake(5.96, 20.25) controlPoint1: CGPointMake(5.99, 20.25) controlPoint2: CGPointMake(5.97, 20.25)];
                [bezier9Path addCurveToPoint: CGPointMake(5.91, 20.25) controlPoint1: CGPointMake(5.94, 20.25) controlPoint2: CGPointMake(5.93, 20.25)];
                [bezier9Path addLineToPoint: CGPointMake(5.9, 20.25)];
                [bezier9Path addCurveToPoint: CGPointMake(5.79, 20.21) controlPoint1: CGPointMake(5.86, 20.25) controlPoint2: CGPointMake(5.82, 20.24)];
                [bezier9Path addCurveToPoint: CGPointMake(5.74, 20.11) controlPoint1: CGPointMake(5.76, 20.18) controlPoint2: CGPointMake(5.74, 20.15)];
                [bezier9Path addLineToPoint: CGPointMake(5.74, 20.11)];
                [bezier9Path addCurveToPoint: CGPointMake(5.78, 20) controlPoint1: CGPointMake(5.74, 20.07) controlPoint2: CGPointMake(5.76, 20.03)];
                [bezier9Path addCurveToPoint: CGPointMake(5.89, 19.92) controlPoint1: CGPointMake(5.81, 19.97) controlPoint2: CGPointMake(5.84, 19.94)];
                [bezier9Path addCurveToPoint: CGPointMake(6.08, 19.87) controlPoint1: CGPointMake(5.94, 19.9) controlPoint2: CGPointMake(6, 19.88)];
                [bezier9Path addCurveToPoint: CGPointMake(6.36, 19.85) controlPoint1: CGPointMake(6.16, 19.86) controlPoint2: CGPointMake(6.25, 19.85)];
                [bezier9Path addCurveToPoint: CGPointMake(6.7, 19.87) controlPoint1: CGPointMake(6.49, 19.85) controlPoint2: CGPointMake(6.6, 19.86)];
                [bezier9Path addCurveToPoint: CGPointMake(6.92, 19.95) controlPoint1: CGPointMake(6.79, 19.88) controlPoint2: CGPointMake(6.86, 19.91)];
                [bezier9Path addCurveToPoint: CGPointMake(7.04, 20.11) controlPoint1: CGPointMake(6.97, 19.99) controlPoint2: CGPointMake(7.02, 20.04)];
                [bezier9Path addCurveToPoint: CGPointMake(7.08, 20.37) controlPoint1: CGPointMake(7.06, 20.18) controlPoint2: CGPointMake(7.08, 20.26)];
                [bezier9Path addCurveToPoint: CGPointMake(7.07, 20.51) controlPoint1: CGPointMake(7.08, 20.42) controlPoint2: CGPointMake(7.08, 20.47)];
                [bezier9Path addCurveToPoint: CGPointMake(7.05, 20.62) controlPoint1: CGPointMake(7.06, 20.55) controlPoint2: CGPointMake(7.06, 20.59)];
                [bezier9Path addCurveToPoint: CGPointMake(7.02, 20.7) controlPoint1: CGPointMake(7.04, 20.65) controlPoint2: CGPointMake(7.03, 20.68)];
                [bezier9Path addCurveToPoint: CGPointMake(6.97, 20.75) controlPoint1: CGPointMake(7, 20.72) controlPoint2: CGPointMake(6.98, 20.74)];
                [bezier9Path addCurveToPoint: CGPointMake(7.01, 20.79) controlPoint1: CGPointMake(6.99, 20.76) controlPoint2: CGPointMake(7, 20.78)];
                [bezier9Path addCurveToPoint: CGPointMake(7.04, 20.86) controlPoint1: CGPointMake(7.02, 20.81) controlPoint2: CGPointMake(7.03, 20.83)];
                [bezier9Path addCurveToPoint: CGPointMake(7.07, 20.97) controlPoint1: CGPointMake(7.05, 20.89) controlPoint2: CGPointMake(7.06, 20.93)];
                [bezier9Path addCurveToPoint: CGPointMake(7.08, 21.15) controlPoint1: CGPointMake(7.07, 21.03) controlPoint2: CGPointMake(7.08, 21.08)];
                [bezier9Path closePath];
                bezier9Path.miterLimit = 4;

                [fillColor setFill];
                [bezier9Path fill];


                //// Bezier 10 Drawing
                UIBezierPath* bezier10Path = [UIBezierPath bezierPath];
                [bezier10Path moveToPoint: CGPointMake(9.07, 21.2)];
                [bezier10Path addLineToPoint: CGPointMake(9.07, 21.2)];
                [bezier10Path addCurveToPoint: CGPointMake(9.03, 21.44) controlPoint1: CGPointMake(9.08, 21.3) controlPoint2: CGPointMake(9.06, 21.38)];
                [bezier10Path addCurveToPoint: CGPointMake(8.89, 21.59) controlPoint1: CGPointMake(9, 21.5) controlPoint2: CGPointMake(8.95, 21.55)];
                [bezier10Path addCurveToPoint: CGPointMake(8.67, 21.67) controlPoint1: CGPointMake(8.83, 21.63) controlPoint2: CGPointMake(8.76, 21.66)];
                [bezier10Path addCurveToPoint: CGPointMake(8.39, 21.69) controlPoint1: CGPointMake(8.59, 21.69) controlPoint2: CGPointMake(8.49, 21.69)];
                [bezier10Path addCurveToPoint: CGPointMake(8.1, 21.66) controlPoint1: CGPointMake(8.28, 21.69) controlPoint2: CGPointMake(8.19, 21.68)];
                [bezier10Path addCurveToPoint: CGPointMake(7.88, 21.57) controlPoint1: CGPointMake(8.02, 21.64) controlPoint2: CGPointMake(7.94, 21.61)];
                [bezier10Path addCurveToPoint: CGPointMake(7.75, 21.42) controlPoint1: CGPointMake(7.82, 21.53) controlPoint2: CGPointMake(7.78, 21.48)];
                [bezier10Path addCurveToPoint: CGPointMake(7.7, 21.21) controlPoint1: CGPointMake(7.72, 21.37) controlPoint2: CGPointMake(7.7, 21.3)];
                [bezier10Path addLineToPoint: CGPointMake(7.7, 20.32)];
                [bezier10Path addCurveToPoint: CGPointMake(7.88, 19.96) controlPoint1: CGPointMake(7.7, 20.16) controlPoint2: CGPointMake(7.76, 20.04)];
                [bezier10Path addCurveToPoint: CGPointMake(8.39, 19.84) controlPoint1: CGPointMake(8, 19.88) controlPoint2: CGPointMake(8.17, 19.84)];
                [bezier10Path addCurveToPoint: CGPointMake(8.67, 19.87) controlPoint1: CGPointMake(8.49, 19.84) controlPoint2: CGPointMake(8.59, 19.85)];
                [bezier10Path addCurveToPoint: CGPointMake(8.88, 19.96) controlPoint1: CGPointMake(8.75, 19.89) controlPoint2: CGPointMake(8.83, 19.92)];
                [bezier10Path addCurveToPoint: CGPointMake(9.02, 20.11) controlPoint1: CGPointMake(8.94, 20) controlPoint2: CGPointMake(8.99, 20.05)];
                [bezier10Path addCurveToPoint: CGPointMake(9.06, 20.32) controlPoint1: CGPointMake(9.05, 20.17) controlPoint2: CGPointMake(9.06, 20.24)];
                [bezier10Path addLineToPoint: CGPointMake(9.06, 21.2)];
                [bezier10Path addLineToPoint: CGPointMake(9.07, 21.2)];
                [bezier10Path closePath];
                [bezier10Path moveToPoint: CGPointMake(8.72, 20.35)];
                [bezier10Path addCurveToPoint: CGPointMake(8.64, 20.2) controlPoint1: CGPointMake(8.72, 20.29) controlPoint2: CGPointMake(8.69, 20.23)];
                [bezier10Path addCurveToPoint: CGPointMake(8.39, 20.14) controlPoint1: CGPointMake(8.59, 20.16) controlPoint2: CGPointMake(8.51, 20.14)];
                [bezier10Path addCurveToPoint: CGPointMake(8.14, 20.19) controlPoint1: CGPointMake(8.28, 20.14) controlPoint2: CGPointMake(8.2, 20.16)];
                [bezier10Path addCurveToPoint: CGPointMake(8.06, 20.33) controlPoint1: CGPointMake(8.09, 20.23) controlPoint2: CGPointMake(8.06, 20.27)];
                [bezier10Path addLineToPoint: CGPointMake(8.06, 21.2)];
                [bezier10Path addCurveToPoint: CGPointMake(8.14, 21.35) controlPoint1: CGPointMake(8.06, 21.27) controlPoint2: CGPointMake(8.09, 21.32)];
                [bezier10Path addCurveToPoint: CGPointMake(8.38, 21.39) controlPoint1: CGPointMake(8.19, 21.38) controlPoint2: CGPointMake(8.27, 21.39)];
                [bezier10Path addCurveToPoint: CGPointMake(8.62, 21.34) controlPoint1: CGPointMake(8.48, 21.39) controlPoint2: CGPointMake(8.56, 21.38)];
                [bezier10Path addCurveToPoint: CGPointMake(8.71, 21.19) controlPoint1: CGPointMake(8.68, 21.31) controlPoint2: CGPointMake(8.71, 21.26)];
                [bezier10Path addLineToPoint: CGPointMake(8.71, 20.35)];
                [bezier10Path addLineToPoint: CGPointMake(8.72, 20.35)];
                [bezier10Path closePath];
                bezier10Path.miterLimit = 4;

                [fillColor setFill];
                [bezier10Path fill];


                //// Bezier 11 Drawing
                UIBezierPath* bezier11Path = [UIBezierPath bezierPath];
                [bezier11Path moveToPoint: CGPointMake(10.79, 20.65)];
                [bezier11Path addCurveToPoint: CGPointMake(10.95, 20.73) controlPoint1: CGPointMake(10.85, 20.67) controlPoint2: CGPointMake(10.91, 20.69)];
                [bezier11Path addCurveToPoint: CGPointMake(11.04, 20.89) controlPoint1: CGPointMake(10.99, 20.77) controlPoint2: CGPointMake(11.02, 20.82)];
                [bezier11Path addCurveToPoint: CGPointMake(11.07, 21.15) controlPoint1: CGPointMake(11.06, 20.96) controlPoint2: CGPointMake(11.07, 21.05)];
                [bezier11Path addCurveToPoint: CGPointMake(11.04, 21.41) controlPoint1: CGPointMake(11.07, 21.26) controlPoint2: CGPointMake(11.06, 21.34)];
                [bezier11Path addCurveToPoint: CGPointMake(10.92, 21.58) controlPoint1: CGPointMake(11.02, 21.48) controlPoint2: CGPointMake(10.98, 21.54)];
                [bezier11Path addCurveToPoint: CGPointMake(10.69, 21.67) controlPoint1: CGPointMake(10.86, 21.62) controlPoint2: CGPointMake(10.79, 21.65)];
                [bezier11Path addCurveToPoint: CGPointMake(10.33, 21.7) controlPoint1: CGPointMake(10.59, 21.69) controlPoint2: CGPointMake(10.47, 21.7)];
                [bezier11Path addLineToPoint: CGPointMake(10.25, 21.7)];
                [bezier11Path addCurveToPoint: CGPointMake(10.07, 21.69) controlPoint1: CGPointMake(10.2, 21.7) controlPoint2: CGPointMake(10.14, 21.7)];
                [bezier11Path addCurveToPoint: CGPointMake(9.89, 21.66) controlPoint1: CGPointMake(10.01, 21.69) controlPoint2: CGPointMake(9.94, 21.68)];
                [bezier11Path addCurveToPoint: CGPointMake(9.75, 21.59) controlPoint1: CGPointMake(9.83, 21.64) controlPoint2: CGPointMake(9.79, 21.62)];
                [bezier11Path addCurveToPoint: CGPointMake(9.69, 21.45) controlPoint1: CGPointMake(9.71, 21.56) controlPoint2: CGPointMake(9.69, 21.51)];
                [bezier11Path addLineToPoint: CGPointMake(9.69, 21.44)];
                [bezier11Path addCurveToPoint: CGPointMake(9.74, 21.33) controlPoint1: CGPointMake(9.69, 21.4) controlPoint2: CGPointMake(9.71, 21.36)];
                [bezier11Path addCurveToPoint: CGPointMake(9.85, 21.29) controlPoint1: CGPointMake(9.77, 21.3) controlPoint2: CGPointMake(9.81, 21.29)];
                [bezier11Path addLineToPoint: CGPointMake(9.85, 21.29)];
                [bezier11Path addCurveToPoint: CGPointMake(9.93, 21.3) controlPoint1: CGPointMake(9.89, 21.29) controlPoint2: CGPointMake(9.91, 21.3)];
                [bezier11Path addCurveToPoint: CGPointMake(9.98, 21.32) controlPoint1: CGPointMake(9.95, 21.31) controlPoint2: CGPointMake(9.97, 21.31)];
                [bezier11Path addCurveToPoint: CGPointMake(10.02, 21.35) controlPoint1: CGPointMake(9.99, 21.33) controlPoint2: CGPointMake(10.01, 21.34)];
                [bezier11Path addCurveToPoint: CGPointMake(10.08, 21.37) controlPoint1: CGPointMake(10.04, 21.36) controlPoint2: CGPointMake(10.06, 21.37)];
                [bezier11Path addCurveToPoint: CGPointMake(10.19, 21.39) controlPoint1: CGPointMake(10.11, 21.38) controlPoint2: CGPointMake(10.14, 21.38)];
                [bezier11Path addCurveToPoint: CGPointMake(10.37, 21.4) controlPoint1: CGPointMake(10.23, 21.4) controlPoint2: CGPointMake(10.29, 21.4)];
                [bezier11Path addCurveToPoint: CGPointMake(10.55, 21.38) controlPoint1: CGPointMake(10.44, 21.4) controlPoint2: CGPointMake(10.5, 21.4)];
                [bezier11Path addCurveToPoint: CGPointMake(10.66, 21.33) controlPoint1: CGPointMake(10.6, 21.37) controlPoint2: CGPointMake(10.63, 21.35)];
                [bezier11Path addCurveToPoint: CGPointMake(10.72, 21.24) controlPoint1: CGPointMake(10.69, 21.31) controlPoint2: CGPointMake(10.71, 21.28)];
                [bezier11Path addCurveToPoint: CGPointMake(10.73, 21.12) controlPoint1: CGPointMake(10.73, 21.21) controlPoint2: CGPointMake(10.73, 21.17)];
                [bezier11Path addCurveToPoint: CGPointMake(10.7, 20.95) controlPoint1: CGPointMake(10.73, 21.04) controlPoint2: CGPointMake(10.72, 20.98)];
                [bezier11Path addCurveToPoint: CGPointMake(10.58, 20.9) controlPoint1: CGPointMake(10.68, 20.92) controlPoint2: CGPointMake(10.64, 20.9)];
                [bezier11Path addLineToPoint: CGPointMake(9.95, 20.9)];
                [bezier11Path addCurveToPoint: CGPointMake(9.82, 20.89) controlPoint1: CGPointMake(9.9, 20.9) controlPoint2: CGPointMake(9.85, 20.9)];
                [bezier11Path addCurveToPoint: CGPointMake(9.75, 20.86) controlPoint1: CGPointMake(9.79, 20.89) controlPoint2: CGPointMake(9.76, 20.87)];
                [bezier11Path addCurveToPoint: CGPointMake(9.72, 20.79) controlPoint1: CGPointMake(9.73, 20.84) controlPoint2: CGPointMake(9.72, 20.82)];
                [bezier11Path addCurveToPoint: CGPointMake(9.71, 20.68) controlPoint1: CGPointMake(9.71, 20.76) controlPoint2: CGPointMake(9.71, 20.73)];
                [bezier11Path addLineToPoint: CGPointMake(9.71, 20)];
                [bezier11Path addCurveToPoint: CGPointMake(9.75, 19.88) controlPoint1: CGPointMake(9.71, 19.95) controlPoint2: CGPointMake(9.72, 19.91)];
                [bezier11Path addCurveToPoint: CGPointMake(9.9, 19.84) controlPoint1: CGPointMake(9.78, 19.85) controlPoint2: CGPointMake(9.83, 19.84)];
                [bezier11Path addCurveToPoint: CGPointMake(10.01, 19.84) controlPoint1: CGPointMake(9.92, 19.84) controlPoint2: CGPointMake(9.96, 19.84)];
                [bezier11Path addCurveToPoint: CGPointMake(10.18, 19.84) controlPoint1: CGPointMake(10.06, 19.84) controlPoint2: CGPointMake(10.11, 19.84)];
                [bezier11Path addCurveToPoint: CGPointMake(10.37, 19.84) controlPoint1: CGPointMake(10.24, 19.84) controlPoint2: CGPointMake(10.3, 19.84)];
                [bezier11Path addCurveToPoint: CGPointMake(10.56, 19.84) controlPoint1: CGPointMake(10.44, 19.84) controlPoint2: CGPointMake(10.5, 19.84)];
                [bezier11Path addCurveToPoint: CGPointMake(10.71, 19.84) controlPoint1: CGPointMake(10.62, 19.84) controlPoint2: CGPointMake(10.67, 19.84)];
                [bezier11Path addCurveToPoint: CGPointMake(10.79, 19.84) controlPoint1: CGPointMake(10.75, 19.84) controlPoint2: CGPointMake(10.78, 19.84)];
                [bezier11Path addCurveToPoint: CGPointMake(10.86, 19.85) controlPoint1: CGPointMake(10.81, 19.84) controlPoint2: CGPointMake(10.83, 19.84)];
                [bezier11Path addCurveToPoint: CGPointMake(10.92, 19.87) controlPoint1: CGPointMake(10.88, 19.85) controlPoint2: CGPointMake(10.9, 19.86)];
                [bezier11Path addCurveToPoint: CGPointMake(10.97, 19.91) controlPoint1: CGPointMake(10.94, 19.88) controlPoint2: CGPointMake(10.96, 19.9)];
                [bezier11Path addCurveToPoint: CGPointMake(10.99, 19.99) controlPoint1: CGPointMake(10.98, 19.93) controlPoint2: CGPointMake(10.99, 19.95)];
                [bezier11Path addLineToPoint: CGPointMake(10.99, 19.99)];
                [bezier11Path addCurveToPoint: CGPointMake(10.97, 20.07) controlPoint1: CGPointMake(10.99, 20.03) controlPoint2: CGPointMake(10.98, 20.05)];
                [bezier11Path addCurveToPoint: CGPointMake(10.93, 20.11) controlPoint1: CGPointMake(10.96, 20.09) controlPoint2: CGPointMake(10.95, 20.1)];
                [bezier11Path addCurveToPoint: CGPointMake(10.86, 20.13) controlPoint1: CGPointMake(10.91, 20.12) controlPoint2: CGPointMake(10.89, 20.12)];
                [bezier11Path addCurveToPoint: CGPointMake(10.78, 20.13) controlPoint1: CGPointMake(10.84, 20.13) controlPoint2: CGPointMake(10.81, 20.13)];
                [bezier11Path addLineToPoint: CGPointMake(10.07, 20.13)];
                [bezier11Path addLineToPoint: CGPointMake(10.07, 20.59)];
                [bezier11Path addLineToPoint: CGPointMake(10.55, 20.59)];
                [bezier11Path addCurveToPoint: CGPointMake(10.79, 20.65) controlPoint1: CGPointMake(10.63, 20.62) controlPoint2: CGPointMake(10.72, 20.63)];
                [bezier11Path closePath];
                bezier11Path.miterLimit = 4;

                [fillColor setFill];
                [bezier11Path fill];


                //// Bezier 12 Drawing
                UIBezierPath* bezier12Path = [UIBezierPath bezierPath];
                [bezier12Path moveToPoint: CGPointMake(13.67, 20.57)];
                [bezier12Path addCurveToPoint: CGPointMake(13.96, 20.61) controlPoint1: CGPointMake(13.78, 20.57) controlPoint2: CGPointMake(13.88, 20.58)];
                [bezier12Path addCurveToPoint: CGPointMake(14.15, 20.72) controlPoint1: CGPointMake(14.04, 20.63) controlPoint2: CGPointMake(14.1, 20.67)];
                [bezier12Path addCurveToPoint: CGPointMake(14.25, 20.9) controlPoint1: CGPointMake(14.2, 20.77) controlPoint2: CGPointMake(14.23, 20.83)];
                [bezier12Path addCurveToPoint: CGPointMake(14.29, 21.15) controlPoint1: CGPointMake(14.27, 20.97) controlPoint2: CGPointMake(14.29, 21.06)];
                [bezier12Path addCurveToPoint: CGPointMake(14.25, 21.39) controlPoint1: CGPointMake(14.29, 21.24) controlPoint2: CGPointMake(14.27, 21.32)];
                [bezier12Path addCurveToPoint: CGPointMake(14.13, 21.57) controlPoint1: CGPointMake(14.22, 21.46) controlPoint2: CGPointMake(14.19, 21.52)];
                [bezier12Path addCurveToPoint: CGPointMake(13.92, 21.68) controlPoint1: CGPointMake(14.08, 21.62) controlPoint2: CGPointMake(14.01, 21.65)];
                [bezier12Path addCurveToPoint: CGPointMake(13.59, 21.72) controlPoint1: CGPointMake(13.83, 21.7) controlPoint2: CGPointMake(13.72, 21.72)];
                [bezier12Path addCurveToPoint: CGPointMake(13.32, 21.69) controlPoint1: CGPointMake(13.49, 21.72) controlPoint2: CGPointMake(13.4, 21.71)];
                [bezier12Path addCurveToPoint: CGPointMake(13.11, 21.6) controlPoint1: CGPointMake(13.24, 21.67) controlPoint2: CGPointMake(13.17, 21.64)];
                [bezier12Path addCurveToPoint: CGPointMake(12.97, 21.44) controlPoint1: CGPointMake(13.05, 21.56) controlPoint2: CGPointMake(13, 21.51)];
                [bezier12Path addCurveToPoint: CGPointMake(12.92, 21.2) controlPoint1: CGPointMake(12.94, 21.37) controlPoint2: CGPointMake(12.92, 21.3)];
                [bezier12Path addLineToPoint: CGPointMake(12.92, 20)];
                [bezier12Path addCurveToPoint: CGPointMake(12.93, 19.95) controlPoint1: CGPointMake(12.92, 19.98) controlPoint2: CGPointMake(12.92, 19.97)];
                [bezier12Path addCurveToPoint: CGPointMake(12.96, 19.9) controlPoint1: CGPointMake(12.94, 19.93) controlPoint2: CGPointMake(12.95, 19.91)];
                [bezier12Path addCurveToPoint: CGPointMake(13.02, 19.86) controlPoint1: CGPointMake(12.97, 19.89) controlPoint2: CGPointMake(12.99, 19.87)];
                [bezier12Path addCurveToPoint: CGPointMake(13.11, 19.85) controlPoint1: CGPointMake(13.04, 19.85) controlPoint2: CGPointMake(13.07, 19.85)];
                [bezier12Path addCurveToPoint: CGPointMake(13.24, 19.89) controlPoint1: CGPointMake(13.17, 19.85) controlPoint2: CGPointMake(13.21, 19.86)];
                [bezier12Path addCurveToPoint: CGPointMake(13.28, 20) controlPoint1: CGPointMake(13.27, 19.92) controlPoint2: CGPointMake(13.28, 19.95)];
                [bezier12Path addLineToPoint: CGPointMake(13.28, 20.59)];
                [bezier12Path addCurveToPoint: CGPointMake(13.5, 20.57) controlPoint1: CGPointMake(13.37, 20.58) controlPoint2: CGPointMake(13.44, 20.57)];
                [bezier12Path addCurveToPoint: CGPointMake(13.67, 20.57) controlPoint1: CGPointMake(13.57, 20.57) controlPoint2: CGPointMake(13.62, 20.57)];
                [bezier12Path closePath];
                [bezier12Path moveToPoint: CGPointMake(13.93, 21.13)];
                [bezier12Path addCurveToPoint: CGPointMake(13.92, 21) controlPoint1: CGPointMake(13.93, 21.07) controlPoint2: CGPointMake(13.93, 21.03)];
                [bezier12Path addCurveToPoint: CGPointMake(13.86, 20.92) controlPoint1: CGPointMake(13.91, 20.96) controlPoint2: CGPointMake(13.89, 20.94)];
                [bezier12Path addCurveToPoint: CGPointMake(13.76, 20.88) controlPoint1: CGPointMake(13.84, 20.9) controlPoint2: CGPointMake(13.8, 20.89)];
                [bezier12Path addCurveToPoint: CGPointMake(13.6, 20.87) controlPoint1: CGPointMake(13.72, 20.87) controlPoint2: CGPointMake(13.67, 20.87)];
                [bezier12Path addCurveToPoint: CGPointMake(13.48, 20.87) controlPoint1: CGPointMake(13.55, 20.87) controlPoint2: CGPointMake(13.5, 20.87)];
                [bezier12Path addCurveToPoint: CGPointMake(13.4, 20.87) controlPoint1: CGPointMake(13.45, 20.87) controlPoint2: CGPointMake(13.42, 20.87)];
                [bezier12Path addCurveToPoint: CGPointMake(13.34, 20.88) controlPoint1: CGPointMake(13.38, 20.87) controlPoint2: CGPointMake(13.36, 20.87)];
                [bezier12Path addCurveToPoint: CGPointMake(13.28, 20.89) controlPoint1: CGPointMake(13.32, 20.88) controlPoint2: CGPointMake(13.3, 20.89)];
                [bezier12Path addLineToPoint: CGPointMake(13.28, 21.12)];
                [bezier12Path addCurveToPoint: CGPointMake(13.3, 21.25) controlPoint1: CGPointMake(13.28, 21.17) controlPoint2: CGPointMake(13.29, 21.21)];
                [bezier12Path addCurveToPoint: CGPointMake(13.35, 21.34) controlPoint1: CGPointMake(13.31, 21.28) controlPoint2: CGPointMake(13.33, 21.31)];
                [bezier12Path addCurveToPoint: CGPointMake(13.45, 21.39) controlPoint1: CGPointMake(13.38, 21.37) controlPoint2: CGPointMake(13.41, 21.38)];
                [bezier12Path addCurveToPoint: CGPointMake(13.61, 21.41) controlPoint1: CGPointMake(13.49, 21.4) controlPoint2: CGPointMake(13.55, 21.41)];
                [bezier12Path addCurveToPoint: CGPointMake(13.76, 21.4) controlPoint1: CGPointMake(13.67, 21.41) controlPoint2: CGPointMake(13.72, 21.41)];
                [bezier12Path addCurveToPoint: CGPointMake(13.86, 21.36) controlPoint1: CGPointMake(13.8, 21.39) controlPoint2: CGPointMake(13.83, 21.38)];
                [bezier12Path addCurveToPoint: CGPointMake(13.92, 21.28) controlPoint1: CGPointMake(13.89, 21.34) controlPoint2: CGPointMake(13.91, 21.31)];
                [bezier12Path addCurveToPoint: CGPointMake(13.93, 21.13) controlPoint1: CGPointMake(13.93, 21.24) controlPoint2: CGPointMake(13.93, 21.19)];
                [bezier12Path closePath];
                bezier12Path.miterLimit = 4;

                [fillColor setFill];
                [bezier12Path fill];


                //// Bezier 13 Drawing
                UIBezierPath* bezier13Path = [UIBezierPath bezierPath];
                [bezier13Path moveToPoint: CGPointMake(16.21, 21.2)];
                [bezier13Path addLineToPoint: CGPointMake(16.21, 21.2)];
                [bezier13Path addCurveToPoint: CGPointMake(16.16, 21.44) controlPoint1: CGPointMake(16.21, 21.3) controlPoint2: CGPointMake(16.2, 21.38)];
                [bezier13Path addCurveToPoint: CGPointMake(16.02, 21.6) controlPoint1: CGPointMake(16.13, 21.5) controlPoint2: CGPointMake(16.08, 21.56)];
                [bezier13Path addCurveToPoint: CGPointMake(15.8, 21.68) controlPoint1: CGPointMake(15.96, 21.64) controlPoint2: CGPointMake(15.89, 21.67)];
                [bezier13Path addCurveToPoint: CGPointMake(15.52, 21.7) controlPoint1: CGPointMake(15.72, 21.7) controlPoint2: CGPointMake(15.62, 21.7)];
                [bezier13Path addCurveToPoint: CGPointMake(15.24, 21.67) controlPoint1: CGPointMake(15.42, 21.7) controlPoint2: CGPointMake(15.32, 21.69)];
                [bezier13Path addCurveToPoint: CGPointMake(15.03, 21.58) controlPoint1: CGPointMake(15.16, 21.65) controlPoint2: CGPointMake(15.08, 21.62)];
                [bezier13Path addCurveToPoint: CGPointMake(14.9, 21.43) controlPoint1: CGPointMake(14.97, 21.54) controlPoint2: CGPointMake(14.93, 21.49)];
                [bezier13Path addCurveToPoint: CGPointMake(14.85, 21.21) controlPoint1: CGPointMake(14.87, 21.37) controlPoint2: CGPointMake(14.85, 21.3)];
                [bezier13Path addLineToPoint: CGPointMake(14.85, 20.32)];
                [bezier13Path addCurveToPoint: CGPointMake(15.03, 19.96) controlPoint1: CGPointMake(14.85, 20.16) controlPoint2: CGPointMake(14.91, 20.04)];
                [bezier13Path addCurveToPoint: CGPointMake(15.54, 19.84) controlPoint1: CGPointMake(15.15, 19.88) controlPoint2: CGPointMake(15.32, 19.84)];
                [bezier13Path addCurveToPoint: CGPointMake(15.82, 19.87) controlPoint1: CGPointMake(15.64, 19.84) controlPoint2: CGPointMake(15.74, 19.85)];
                [bezier13Path addCurveToPoint: CGPointMake(16.03, 19.96) controlPoint1: CGPointMake(15.9, 19.89) controlPoint2: CGPointMake(15.98, 19.92)];
                [bezier13Path addCurveToPoint: CGPointMake(16.17, 20.11) controlPoint1: CGPointMake(16.09, 20) controlPoint2: CGPointMake(16.13, 20.05)];
                [bezier13Path addCurveToPoint: CGPointMake(16.22, 20.32) controlPoint1: CGPointMake(16.2, 20.17) controlPoint2: CGPointMake(16.22, 20.24)];
                [bezier13Path addLineToPoint: CGPointMake(16.22, 21.2)];
                [bezier13Path addLineToPoint: CGPointMake(16.21, 21.2)];
                [bezier13Path closePath];
                [bezier13Path moveToPoint: CGPointMake(15.85, 20.35)];
                [bezier13Path addCurveToPoint: CGPointMake(15.77, 20.2) controlPoint1: CGPointMake(15.85, 20.29) controlPoint2: CGPointMake(15.82, 20.23)];
                [bezier13Path addCurveToPoint: CGPointMake(15.52, 20.14) controlPoint1: CGPointMake(15.72, 20.16) controlPoint2: CGPointMake(15.63, 20.14)];
                [bezier13Path addCurveToPoint: CGPointMake(15.28, 20.19) controlPoint1: CGPointMake(15.41, 20.14) controlPoint2: CGPointMake(15.33, 20.16)];
                [bezier13Path addCurveToPoint: CGPointMake(15.2, 20.33) controlPoint1: CGPointMake(15.23, 20.23) controlPoint2: CGPointMake(15.2, 20.27)];
                [bezier13Path addLineToPoint: CGPointMake(15.2, 21.2)];
                [bezier13Path addCurveToPoint: CGPointMake(15.28, 21.35) controlPoint1: CGPointMake(15.2, 21.27) controlPoint2: CGPointMake(15.23, 21.32)];
                [bezier13Path addCurveToPoint: CGPointMake(15.52, 21.39) controlPoint1: CGPointMake(15.34, 21.38) controlPoint2: CGPointMake(15.42, 21.39)];
                [bezier13Path addCurveToPoint: CGPointMake(15.77, 21.34) controlPoint1: CGPointMake(15.62, 21.39) controlPoint2: CGPointMake(15.7, 21.38)];
                [bezier13Path addCurveToPoint: CGPointMake(15.86, 21.19) controlPoint1: CGPointMake(15.83, 21.31) controlPoint2: CGPointMake(15.86, 21.26)];
                [bezier13Path addLineToPoint: CGPointMake(15.86, 20.35)];
                [bezier13Path addLineToPoint: CGPointMake(15.85, 20.35)];
                [bezier13Path closePath];
                bezier13Path.miterLimit = 4;

                [fillColor setFill];
                [bezier13Path fill];


                //// Bezier 14 Drawing
                UIBezierPath* bezier14Path = [UIBezierPath bezierPath];
                [bezier14Path moveToPoint: CGPointMake(17.92, 20.65)];
                [bezier14Path addCurveToPoint: CGPointMake(18.08, 20.73) controlPoint1: CGPointMake(17.99, 20.67) controlPoint2: CGPointMake(18.04, 20.69)];
                [bezier14Path addCurveToPoint: CGPointMake(18.17, 20.89) controlPoint1: CGPointMake(18.12, 20.77) controlPoint2: CGPointMake(18.15, 20.82)];
                [bezier14Path addCurveToPoint: CGPointMake(18.2, 21.15) controlPoint1: CGPointMake(18.19, 20.96) controlPoint2: CGPointMake(18.2, 21.05)];
                [bezier14Path addCurveToPoint: CGPointMake(18.16, 21.41) controlPoint1: CGPointMake(18.2, 21.26) controlPoint2: CGPointMake(18.19, 21.34)];
                [bezier14Path addCurveToPoint: CGPointMake(18.04, 21.58) controlPoint1: CGPointMake(18.14, 21.48) controlPoint2: CGPointMake(18.1, 21.54)];
                [bezier14Path addCurveToPoint: CGPointMake(17.81, 21.67) controlPoint1: CGPointMake(17.99, 21.62) controlPoint2: CGPointMake(17.91, 21.65)];
                [bezier14Path addCurveToPoint: CGPointMake(17.45, 21.7) controlPoint1: CGPointMake(17.71, 21.69) controlPoint2: CGPointMake(17.59, 21.7)];
                [bezier14Path addLineToPoint: CGPointMake(17.37, 21.7)];
                [bezier14Path addCurveToPoint: CGPointMake(17.19, 21.69) controlPoint1: CGPointMake(17.31, 21.7) controlPoint2: CGPointMake(17.25, 21.7)];
                [bezier14Path addCurveToPoint: CGPointMake(17.01, 21.66) controlPoint1: CGPointMake(17.13, 21.69) controlPoint2: CGPointMake(17.06, 21.68)];
                [bezier14Path addCurveToPoint: CGPointMake(16.87, 21.59) controlPoint1: CGPointMake(16.95, 21.64) controlPoint2: CGPointMake(16.91, 21.62)];
                [bezier14Path addCurveToPoint: CGPointMake(16.81, 21.45) controlPoint1: CGPointMake(16.83, 21.56) controlPoint2: CGPointMake(16.81, 21.51)];
                [bezier14Path addLineToPoint: CGPointMake(16.81, 21.44)];
                [bezier14Path addCurveToPoint: CGPointMake(16.86, 21.33) controlPoint1: CGPointMake(16.81, 21.4) controlPoint2: CGPointMake(16.83, 21.36)];
                [bezier14Path addCurveToPoint: CGPointMake(16.97, 21.29) controlPoint1: CGPointMake(16.89, 21.3) controlPoint2: CGPointMake(16.93, 21.29)];
                [bezier14Path addLineToPoint: CGPointMake(16.98, 21.29)];
                [bezier14Path addCurveToPoint: CGPointMake(17.06, 21.3) controlPoint1: CGPointMake(17.01, 21.29) controlPoint2: CGPointMake(17.04, 21.3)];
                [bezier14Path addCurveToPoint: CGPointMake(17.11, 21.32) controlPoint1: CGPointMake(17.08, 21.31) controlPoint2: CGPointMake(17.1, 21.31)];
                [bezier14Path addCurveToPoint: CGPointMake(17.15, 21.35) controlPoint1: CGPointMake(17.12, 21.33) controlPoint2: CGPointMake(17.14, 21.34)];
                [bezier14Path addCurveToPoint: CGPointMake(17.21, 21.37) controlPoint1: CGPointMake(17.16, 21.36) controlPoint2: CGPointMake(17.19, 21.37)];
                [bezier14Path addCurveToPoint: CGPointMake(17.32, 21.39) controlPoint1: CGPointMake(17.24, 21.38) controlPoint2: CGPointMake(17.27, 21.38)];
                [bezier14Path addCurveToPoint: CGPointMake(17.49, 21.4) controlPoint1: CGPointMake(17.37, 21.4) controlPoint2: CGPointMake(17.42, 21.4)];
                [bezier14Path addCurveToPoint: CGPointMake(17.67, 21.38) controlPoint1: CGPointMake(17.56, 21.4) controlPoint2: CGPointMake(17.62, 21.4)];
                [bezier14Path addCurveToPoint: CGPointMake(17.78, 21.33) controlPoint1: CGPointMake(17.71, 21.37) controlPoint2: CGPointMake(17.75, 21.35)];
                [bezier14Path addCurveToPoint: CGPointMake(17.83, 21.24) controlPoint1: CGPointMake(17.8, 21.31) controlPoint2: CGPointMake(17.82, 21.28)];
                [bezier14Path addCurveToPoint: CGPointMake(17.84, 21.12) controlPoint1: CGPointMake(17.84, 21.21) controlPoint2: CGPointMake(17.84, 21.17)];
                [bezier14Path addCurveToPoint: CGPointMake(17.81, 20.95) controlPoint1: CGPointMake(17.84, 21.04) controlPoint2: CGPointMake(17.83, 20.98)];
                [bezier14Path addCurveToPoint: CGPointMake(17.69, 20.9) controlPoint1: CGPointMake(17.79, 20.92) controlPoint2: CGPointMake(17.75, 20.9)];
                [bezier14Path addLineToPoint: CGPointMake(17.08, 20.9)];
                [bezier14Path addCurveToPoint: CGPointMake(16.96, 20.89) controlPoint1: CGPointMake(17.02, 20.9) controlPoint2: CGPointMake(16.98, 20.9)];
                [bezier14Path addCurveToPoint: CGPointMake(16.89, 20.86) controlPoint1: CGPointMake(16.93, 20.89) controlPoint2: CGPointMake(16.9, 20.87)];
                [bezier14Path addCurveToPoint: CGPointMake(16.86, 20.79) controlPoint1: CGPointMake(16.87, 20.84) controlPoint2: CGPointMake(16.86, 20.82)];
                [bezier14Path addCurveToPoint: CGPointMake(16.85, 20.68) controlPoint1: CGPointMake(16.86, 20.76) controlPoint2: CGPointMake(16.85, 20.73)];
                [bezier14Path addLineToPoint: CGPointMake(16.85, 20)];
                [bezier14Path addCurveToPoint: CGPointMake(16.89, 19.88) controlPoint1: CGPointMake(16.85, 19.95) controlPoint2: CGPointMake(16.87, 19.91)];
                [bezier14Path addCurveToPoint: CGPointMake(17.05, 19.84) controlPoint1: CGPointMake(16.92, 19.85) controlPoint2: CGPointMake(16.97, 19.84)];
                [bezier14Path addCurveToPoint: CGPointMake(17.16, 19.84) controlPoint1: CGPointMake(17.07, 19.84) controlPoint2: CGPointMake(17.11, 19.84)];
                [bezier14Path addCurveToPoint: CGPointMake(17.33, 19.84) controlPoint1: CGPointMake(17.21, 19.84) controlPoint2: CGPointMake(17.27, 19.84)];
                [bezier14Path addCurveToPoint: CGPointMake(17.52, 19.84) controlPoint1: CGPointMake(17.39, 19.84) controlPoint2: CGPointMake(17.45, 19.84)];
                [bezier14Path addCurveToPoint: CGPointMake(17.7, 19.84) controlPoint1: CGPointMake(17.59, 19.84) controlPoint2: CGPointMake(17.65, 19.84)];
                [bezier14Path addCurveToPoint: CGPointMake(17.84, 19.84) controlPoint1: CGPointMake(17.76, 19.84) controlPoint2: CGPointMake(17.81, 19.84)];
                [bezier14Path addCurveToPoint: CGPointMake(17.92, 19.84) controlPoint1: CGPointMake(17.88, 19.84) controlPoint2: CGPointMake(17.91, 19.84)];
                [bezier14Path addCurveToPoint: CGPointMake(17.98, 19.85) controlPoint1: CGPointMake(17.94, 19.84) controlPoint2: CGPointMake(17.96, 19.84)];
                [bezier14Path addCurveToPoint: CGPointMake(18.04, 19.87) controlPoint1: CGPointMake(18, 19.85) controlPoint2: CGPointMake(18.03, 19.86)];
                [bezier14Path addCurveToPoint: CGPointMake(18.1, 19.91) controlPoint1: CGPointMake(18.06, 19.88) controlPoint2: CGPointMake(18.08, 19.9)];
                [bezier14Path addCurveToPoint: CGPointMake(18.12, 19.99) controlPoint1: CGPointMake(18.11, 19.93) controlPoint2: CGPointMake(18.12, 19.95)];
                [bezier14Path addLineToPoint: CGPointMake(18.12, 19.99)];
                [bezier14Path addCurveToPoint: CGPointMake(18.1, 20.07) controlPoint1: CGPointMake(18.12, 20.03) controlPoint2: CGPointMake(18.11, 20.05)];
                [bezier14Path addCurveToPoint: CGPointMake(18.06, 20.11) controlPoint1: CGPointMake(18.09, 20.09) controlPoint2: CGPointMake(18.07, 20.1)];
                [bezier14Path addCurveToPoint: CGPointMake(17.99, 20.13) controlPoint1: CGPointMake(18.04, 20.12) controlPoint2: CGPointMake(18.02, 20.12)];
                [bezier14Path addCurveToPoint: CGPointMake(17.91, 20.13) controlPoint1: CGPointMake(17.97, 20.13) controlPoint2: CGPointMake(17.94, 20.13)];
                [bezier14Path addLineToPoint: CGPointMake(17.2, 20.13)];
                [bezier14Path addLineToPoint: CGPointMake(17.2, 20.59)];
                [bezier14Path addLineToPoint: CGPointMake(17.68, 20.59)];
                [bezier14Path addCurveToPoint: CGPointMake(17.92, 20.65) controlPoint1: CGPointMake(17.77, 20.62) controlPoint2: CGPointMake(17.85, 20.63)];
                [bezier14Path closePath];
                bezier14Path.miterLimit = 4;

                [fillColor setFill];
                [bezier14Path fill];


                //// Bezier 15 Drawing
                UIBezierPath* bezier15Path = [UIBezierPath bezierPath];
                [bezier15Path moveToPoint: CGPointMake(19.5, 19.85)];
                [bezier15Path addCurveToPoint: CGPointMake(19.84, 19.88) controlPoint1: CGPointMake(19.63, 19.85) controlPoint2: CGPointMake(19.75, 19.86)];
                [bezier15Path addCurveToPoint: CGPointMake(20.06, 19.97) controlPoint1: CGPointMake(19.93, 19.9) controlPoint2: CGPointMake(20.01, 19.93)];
                [bezier15Path addCurveToPoint: CGPointMake(20.19, 20.13) controlPoint1: CGPointMake(20.12, 20.01) controlPoint2: CGPointMake(20.16, 20.07)];
                [bezier15Path addCurveToPoint: CGPointMake(20.23, 20.37) controlPoint1: CGPointMake(20.22, 20.2) controlPoint2: CGPointMake(20.23, 20.28)];
                [bezier15Path addLineToPoint: CGPointMake(20.23, 20.38)];
                [bezier15Path addCurveToPoint: CGPointMake(20.2, 20.64) controlPoint1: CGPointMake(20.23, 20.48) controlPoint2: CGPointMake(20.22, 20.57)];
                [bezier15Path addCurveToPoint: CGPointMake(20.1, 20.81) controlPoint1: CGPointMake(20.18, 20.71) controlPoint2: CGPointMake(20.15, 20.77)];
                [bezier15Path addCurveToPoint: CGPointMake(19.92, 20.9) controlPoint1: CGPointMake(20.06, 20.85) controlPoint2: CGPointMake(19.99, 20.88)];
                [bezier15Path addCurveToPoint: CGPointMake(19.64, 20.93) controlPoint1: CGPointMake(19.85, 20.92) controlPoint2: CGPointMake(19.75, 20.93)];
                [bezier15Path addCurveToPoint: CGPointMake(19.4, 20.94) controlPoint1: CGPointMake(19.54, 20.93) controlPoint2: CGPointMake(19.47, 20.93)];
                [bezier15Path addCurveToPoint: CGPointMake(19.25, 20.97) controlPoint1: CGPointMake(19.34, 20.94) controlPoint2: CGPointMake(19.29, 20.95)];
                [bezier15Path addCurveToPoint: CGPointMake(19.18, 21.06) controlPoint1: CGPointMake(19.21, 20.99) controlPoint2: CGPointMake(19.19, 21.02)];
                [bezier15Path addCurveToPoint: CGPointMake(19.16, 21.23) controlPoint1: CGPointMake(19.16, 21.1) controlPoint2: CGPointMake(19.16, 21.16)];
                [bezier15Path addLineToPoint: CGPointMake(19.16, 21.39)];
                [bezier15Path addLineToPoint: CGPointMake(20.05, 21.39)];
                [bezier15Path addCurveToPoint: CGPointMake(20.11, 21.4) controlPoint1: CGPointMake(20.07, 21.39) controlPoint2: CGPointMake(20.09, 21.39)];
                [bezier15Path addCurveToPoint: CGPointMake(20.17, 21.43) controlPoint1: CGPointMake(20.13, 21.41) controlPoint2: CGPointMake(20.15, 21.42)];
                [bezier15Path addCurveToPoint: CGPointMake(20.21, 21.48) controlPoint1: CGPointMake(20.19, 21.44) controlPoint2: CGPointMake(20.2, 21.46)];
                [bezier15Path addCurveToPoint: CGPointMake(20.23, 21.55) controlPoint1: CGPointMake(20.22, 21.5) controlPoint2: CGPointMake(20.23, 21.52)];
                [bezier15Path addCurveToPoint: CGPointMake(20.21, 21.62) controlPoint1: CGPointMake(20.23, 21.58) controlPoint2: CGPointMake(20.22, 21.6)];
                [bezier15Path addCurveToPoint: CGPointMake(20.17, 21.66) controlPoint1: CGPointMake(20.2, 21.64) controlPoint2: CGPointMake(20.19, 21.65)];
                [bezier15Path addCurveToPoint: CGPointMake(20.11, 21.69) controlPoint1: CGPointMake(20.15, 21.67) controlPoint2: CGPointMake(20.13, 21.68)];
                [bezier15Path addCurveToPoint: CGPointMake(20.04, 21.7) controlPoint1: CGPointMake(20.09, 21.7) controlPoint2: CGPointMake(20.06, 21.7)];
                [bezier15Path addLineToPoint: CGPointMake(18.99, 21.7)];
                [bezier15Path addCurveToPoint: CGPointMake(18.84, 21.66) controlPoint1: CGPointMake(18.91, 21.7) controlPoint2: CGPointMake(18.86, 21.69)];
                [bezier15Path addCurveToPoint: CGPointMake(18.79, 21.54) controlPoint1: CGPointMake(18.81, 21.63) controlPoint2: CGPointMake(18.79, 21.6)];
                [bezier15Path addLineToPoint: CGPointMake(18.79, 21.17)];
                [bezier15Path addCurveToPoint: CGPointMake(18.83, 20.92) controlPoint1: CGPointMake(18.79, 21.07) controlPoint2: CGPointMake(18.8, 20.99)];
                [bezier15Path addCurveToPoint: CGPointMake(18.94, 20.76) controlPoint1: CGPointMake(18.86, 20.85) controlPoint2: CGPointMake(18.89, 20.8)];
                [bezier15Path addCurveToPoint: CGPointMake(19.12, 20.67) controlPoint1: CGPointMake(18.99, 20.72) controlPoint2: CGPointMake(19.05, 20.69)];
                [bezier15Path addCurveToPoint: CGPointMake(19.36, 20.64) controlPoint1: CGPointMake(19.19, 20.65) controlPoint2: CGPointMake(19.27, 20.64)];
                [bezier15Path addLineToPoint: CGPointMake(19.62, 20.63)];
                [bezier15Path addCurveToPoint: CGPointMake(19.74, 20.62) controlPoint1: CGPointMake(19.67, 20.63) controlPoint2: CGPointMake(19.71, 20.63)];
                [bezier15Path addCurveToPoint: CGPointMake(19.82, 20.58) controlPoint1: CGPointMake(19.77, 20.61) controlPoint2: CGPointMake(19.8, 20.6)];
                [bezier15Path addCurveToPoint: CGPointMake(19.86, 20.51) controlPoint1: CGPointMake(19.84, 20.56) controlPoint2: CGPointMake(19.85, 20.54)];
                [bezier15Path addCurveToPoint: CGPointMake(19.87, 20.4) controlPoint1: CGPointMake(19.87, 20.48) controlPoint2: CGPointMake(19.87, 20.44)];
                [bezier15Path addLineToPoint: CGPointMake(19.87, 20.39)];
                [bezier15Path addCurveToPoint: CGPointMake(19.85, 20.27) controlPoint1: CGPointMake(19.87, 20.34) controlPoint2: CGPointMake(19.86, 20.3)];
                [bezier15Path addCurveToPoint: CGPointMake(19.79, 20.19) controlPoint1: CGPointMake(19.84, 20.24) controlPoint2: CGPointMake(19.82, 20.21)];
                [bezier15Path addCurveToPoint: CGPointMake(19.67, 20.15) controlPoint1: CGPointMake(19.76, 20.17) controlPoint2: CGPointMake(19.72, 20.16)];
                [bezier15Path addCurveToPoint: CGPointMake(19.48, 20.14) controlPoint1: CGPointMake(19.62, 20.14) controlPoint2: CGPointMake(19.56, 20.14)];
                [bezier15Path addCurveToPoint: CGPointMake(19.31, 20.15) controlPoint1: CGPointMake(19.42, 20.14) controlPoint2: CGPointMake(19.36, 20.14)];
                [bezier15Path addCurveToPoint: CGPointMake(19.18, 20.18) controlPoint1: CGPointMake(19.26, 20.16) controlPoint2: CGPointMake(19.22, 20.17)];
                [bezier15Path addCurveToPoint: CGPointMake(19.09, 20.21) controlPoint1: CGPointMake(19.14, 20.19) controlPoint2: CGPointMake(19.11, 20.2)];
                [bezier15Path addCurveToPoint: CGPointMake(19, 20.23) controlPoint1: CGPointMake(19.06, 20.22) controlPoint2: CGPointMake(19.03, 20.23)];
                [bezier15Path addLineToPoint: CGPointMake(18.99, 20.23)];
                [bezier15Path addCurveToPoint: CGPointMake(18.88, 20.18) controlPoint1: CGPointMake(18.95, 20.23) controlPoint2: CGPointMake(18.91, 20.21)];
                [bezier15Path addCurveToPoint: CGPointMake(18.84, 20.07) controlPoint1: CGPointMake(18.85, 20.15) controlPoint2: CGPointMake(18.84, 20.11)];
                [bezier15Path addLineToPoint: CGPointMake(18.84, 20.06)];
                [bezier15Path addCurveToPoint: CGPointMake(18.89, 19.96) controlPoint1: CGPointMake(18.84, 20.02) controlPoint2: CGPointMake(18.86, 19.98)];
                [bezier15Path addCurveToPoint: CGPointMake(19.04, 19.89) controlPoint1: CGPointMake(18.93, 19.93) controlPoint2: CGPointMake(18.98, 19.91)];
                [bezier15Path addCurveToPoint: CGPointMake(19.25, 19.85) controlPoint1: CGPointMake(19.1, 19.87) controlPoint2: CGPointMake(19.17, 19.86)];
                [bezier15Path addCurveToPoint: CGPointMake(19.5, 19.85) controlPoint1: CGPointMake(19.33, 19.85) controlPoint2: CGPointMake(19.41, 19.85)];
                [bezier15Path closePath];
                bezier15Path.miterLimit = 4;

                [fillColor setFill];
                [bezier15Path fill];


                //// Bezier 16 Drawing
                UIBezierPath* bezier16Path = [UIBezierPath bezierPath];
                [bezier16Path moveToPoint: CGPointMake(23.46, 21.2)];
                [bezier16Path addCurveToPoint: CGPointMake(23.44, 21.41) controlPoint1: CGPointMake(23.46, 21.28) controlPoint2: CGPointMake(23.45, 21.35)];
                [bezier16Path addCurveToPoint: CGPointMake(23.34, 21.57) controlPoint1: CGPointMake(23.42, 21.47) controlPoint2: CGPointMake(23.39, 21.53)];
                [bezier16Path addCurveToPoint: CGPointMake(23.12, 21.67) controlPoint1: CGPointMake(23.29, 21.61) controlPoint2: CGPointMake(23.21, 21.65)];
                [bezier16Path addCurveToPoint: CGPointMake(22.75, 21.7) controlPoint1: CGPointMake(23.03, 21.69) controlPoint2: CGPointMake(22.9, 21.7)];
                [bezier16Path addCurveToPoint: CGPointMake(22.4, 21.66) controlPoint1: CGPointMake(22.6, 21.7) controlPoint2: CGPointMake(22.49, 21.69)];
                [bezier16Path addCurveToPoint: CGPointMake(22.19, 21.56) controlPoint1: CGPointMake(22.31, 21.63) controlPoint2: CGPointMake(22.24, 21.6)];
                [bezier16Path addCurveToPoint: CGPointMake(22.09, 21.4) controlPoint1: CGPointMake(22.14, 21.52) controlPoint2: CGPointMake(22.11, 21.46)];
                [bezier16Path addCurveToPoint: CGPointMake(22.06, 21.2) controlPoint1: CGPointMake(22.07, 21.34) controlPoint2: CGPointMake(22.06, 21.27)];
                [bezier16Path addCurveToPoint: CGPointMake(22.06, 21.05) controlPoint1: CGPointMake(22.06, 21.14) controlPoint2: CGPointMake(22.06, 21.09)];
                [bezier16Path addCurveToPoint: CGPointMake(22.09, 20.95) controlPoint1: CGPointMake(22.06, 21.01) controlPoint2: CGPointMake(22.07, 20.98)];
                [bezier16Path addCurveToPoint: CGPointMake(22.17, 20.87) controlPoint1: CGPointMake(22.11, 20.92) controlPoint2: CGPointMake(22.13, 20.9)];
                [bezier16Path addCurveToPoint: CGPointMake(22.33, 20.79) controlPoint1: CGPointMake(22.21, 20.85) controlPoint2: CGPointMake(22.26, 20.82)];
                [bezier16Path addCurveToPoint: CGPointMake(22.17, 20.73) controlPoint1: CGPointMake(22.26, 20.77) controlPoint2: CGPointMake(22.21, 20.75)];
                [bezier16Path addCurveToPoint: CGPointMake(22.09, 20.66) controlPoint1: CGPointMake(22.14, 20.71) controlPoint2: CGPointMake(22.11, 20.69)];
                [bezier16Path addCurveToPoint: CGPointMake(22.06, 20.55) controlPoint1: CGPointMake(22.07, 20.63) controlPoint2: CGPointMake(22.06, 20.59)];
                [bezier16Path addCurveToPoint: CGPointMake(22.05, 20.37) controlPoint1: CGPointMake(22.06, 20.51) controlPoint2: CGPointMake(22.05, 20.44)];
                [bezier16Path addCurveToPoint: CGPointMake(22.09, 20.12) controlPoint1: CGPointMake(22.05, 20.27) controlPoint2: CGPointMake(22.06, 20.19)];
                [bezier16Path addCurveToPoint: CGPointMake(22.21, 19.96) controlPoint1: CGPointMake(22.11, 20.06) controlPoint2: CGPointMake(22.15, 20)];
                [bezier16Path addCurveToPoint: CGPointMake(22.42, 19.88) controlPoint1: CGPointMake(22.26, 19.92) controlPoint2: CGPointMake(22.33, 19.89)];
                [bezier16Path addCurveToPoint: CGPointMake(22.74, 19.85) controlPoint1: CGPointMake(22.51, 19.86) controlPoint2: CGPointMake(22.62, 19.85)];
                [bezier16Path addCurveToPoint: CGPointMake(23.07, 19.88) controlPoint1: CGPointMake(22.87, 19.85) controlPoint2: CGPointMake(22.98, 19.86)];
                [bezier16Path addCurveToPoint: CGPointMake(23.29, 19.96) controlPoint1: CGPointMake(23.16, 19.9) controlPoint2: CGPointMake(23.23, 19.93)];
                [bezier16Path addCurveToPoint: CGPointMake(23.41, 20.11) controlPoint1: CGPointMake(23.35, 20) controlPoint2: CGPointMake(23.38, 20.05)];
                [bezier16Path addCurveToPoint: CGPointMake(23.45, 20.35) controlPoint1: CGPointMake(23.44, 20.18) controlPoint2: CGPointMake(23.45, 20.25)];
                [bezier16Path addCurveToPoint: CGPointMake(23.44, 20.53) controlPoint1: CGPointMake(23.45, 20.43) controlPoint2: CGPointMake(23.45, 20.49)];
                [bezier16Path addCurveToPoint: CGPointMake(23.41, 20.64) controlPoint1: CGPointMake(23.44, 20.58) controlPoint2: CGPointMake(23.43, 20.61)];
                [bezier16Path addCurveToPoint: CGPointMake(23.33, 20.71) controlPoint1: CGPointMake(23.4, 20.67) controlPoint2: CGPointMake(23.37, 20.69)];
                [bezier16Path addCurveToPoint: CGPointMake(23.19, 20.77) controlPoint1: CGPointMake(23.3, 20.73) controlPoint2: CGPointMake(23.25, 20.75)];
                [bezier16Path addCurveToPoint: CGPointMake(23.34, 20.84) controlPoint1: CGPointMake(23.25, 20.8) controlPoint2: CGPointMake(23.3, 20.82)];
                [bezier16Path addCurveToPoint: CGPointMake(23.42, 20.91) controlPoint1: CGPointMake(23.37, 20.86) controlPoint2: CGPointMake(23.4, 20.89)];
                [bezier16Path addCurveToPoint: CGPointMake(23.45, 21.01) controlPoint1: CGPointMake(23.44, 20.94) controlPoint2: CGPointMake(23.44, 20.97)];
                [bezier16Path addCurveToPoint: CGPointMake(23.46, 21.2) controlPoint1: CGPointMake(23.46, 21.07) controlPoint2: CGPointMake(23.46, 21.13)];
                [bezier16Path closePath];
                [bezier16Path moveToPoint: CGPointMake(23.11, 21.17)];
                [bezier16Path addCurveToPoint: CGPointMake(23.1, 21.15) controlPoint1: CGPointMake(23.11, 21.17) controlPoint2: CGPointMake(23.1, 21.16)];
                [bezier16Path addCurveToPoint: CGPointMake(23.06, 21.08) controlPoint1: CGPointMake(23.09, 21.13) controlPoint2: CGPointMake(23.08, 21.11)];
                [bezier16Path addCurveToPoint: CGPointMake(22.96, 21) controlPoint1: CGPointMake(23.04, 21.05) controlPoint2: CGPointMake(23, 21.03)];
                [bezier16Path addCurveToPoint: CGPointMake(22.78, 20.92) controlPoint1: CGPointMake(22.92, 20.97) controlPoint2: CGPointMake(22.86, 20.94)];
                [bezier16Path addCurveToPoint: CGPointMake(22.59, 21.01) controlPoint1: CGPointMake(22.7, 20.95) controlPoint2: CGPointMake(22.64, 20.98)];
                [bezier16Path addCurveToPoint: CGPointMake(22.49, 21.1) controlPoint1: CGPointMake(22.55, 21.04) controlPoint2: CGPointMake(22.51, 21.07)];
                [bezier16Path addCurveToPoint: CGPointMake(22.45, 21.17) controlPoint1: CGPointMake(22.47, 21.13) controlPoint2: CGPointMake(22.45, 21.15)];
                [bezier16Path addCurveToPoint: CGPointMake(22.44, 21.21) controlPoint1: CGPointMake(22.44, 21.19) controlPoint2: CGPointMake(22.44, 21.2)];
                [bezier16Path addLineToPoint: CGPointMake(22.44, 21.21)];
                [bezier16Path addCurveToPoint: CGPointMake(22.45, 21.3) controlPoint1: CGPointMake(22.44, 21.25) controlPoint2: CGPointMake(22.44, 21.28)];
                [bezier16Path addCurveToPoint: CGPointMake(22.5, 21.36) controlPoint1: CGPointMake(22.46, 21.33) controlPoint2: CGPointMake(22.48, 21.35)];
                [bezier16Path addCurveToPoint: CGPointMake(22.61, 21.39) controlPoint1: CGPointMake(22.53, 21.37) controlPoint2: CGPointMake(22.57, 21.39)];
                [bezier16Path addCurveToPoint: CGPointMake(22.79, 21.4) controlPoint1: CGPointMake(22.66, 21.4) controlPoint2: CGPointMake(22.71, 21.4)];
                [bezier16Path addCurveToPoint: CGPointMake(22.95, 21.39) controlPoint1: CGPointMake(22.85, 21.4) controlPoint2: CGPointMake(22.91, 21.4)];
                [bezier16Path addCurveToPoint: CGPointMake(23.05, 21.36) controlPoint1: CGPointMake(22.99, 21.38) controlPoint2: CGPointMake(23.02, 21.37)];
                [bezier16Path addCurveToPoint: CGPointMake(23.1, 21.3) controlPoint1: CGPointMake(23.07, 21.35) controlPoint2: CGPointMake(23.09, 21.32)];
                [bezier16Path addCurveToPoint: CGPointMake(23.12, 21.21) controlPoint1: CGPointMake(23.11, 21.28) controlPoint2: CGPointMake(23.12, 21.25)];
                [bezier16Path addLineToPoint: CGPointMake(23.12, 21.17)];
                [bezier16Path addLineToPoint: CGPointMake(23.11, 21.17)];
                [bezier16Path closePath];
                [bezier16Path moveToPoint: CGPointMake(22.77, 20.63)];
                [bezier16Path addCurveToPoint: CGPointMake(22.96, 20.58) controlPoint1: CGPointMake(22.85, 20.61) controlPoint2: CGPointMake(22.91, 20.59)];
                [bezier16Path addCurveToPoint: CGPointMake(23.06, 20.53) controlPoint1: CGPointMake(23, 20.57) controlPoint2: CGPointMake(23.04, 20.55)];
                [bezier16Path addCurveToPoint: CGPointMake(23.1, 20.45) controlPoint1: CGPointMake(23.08, 20.51) controlPoint2: CGPointMake(23.09, 20.48)];
                [bezier16Path addCurveToPoint: CGPointMake(23.11, 20.32) controlPoint1: CGPointMake(23.1, 20.42) controlPoint2: CGPointMake(23.11, 20.37)];
                [bezier16Path addCurveToPoint: CGPointMake(23.09, 20.22) controlPoint1: CGPointMake(23.11, 20.28) controlPoint2: CGPointMake(23.1, 20.25)];
                [bezier16Path addCurveToPoint: CGPointMake(23.02, 20.17) controlPoint1: CGPointMake(23.07, 20.2) controlPoint2: CGPointMake(23.05, 20.18)];
                [bezier16Path addCurveToPoint: CGPointMake(22.91, 20.15) controlPoint1: CGPointMake(22.99, 20.16) controlPoint2: CGPointMake(22.95, 20.15)];
                [bezier16Path addCurveToPoint: CGPointMake(22.77, 20.15) controlPoint1: CGPointMake(22.87, 20.15) controlPoint2: CGPointMake(22.82, 20.15)];
                [bezier16Path addCurveToPoint: CGPointMake(22.62, 20.16) controlPoint1: CGPointMake(22.71, 20.15) controlPoint2: CGPointMake(22.66, 20.15)];
                [bezier16Path addCurveToPoint: CGPointMake(22.52, 20.19) controlPoint1: CGPointMake(22.58, 20.16) controlPoint2: CGPointMake(22.55, 20.17)];
                [bezier16Path addCurveToPoint: CGPointMake(22.46, 20.26) controlPoint1: CGPointMake(22.49, 20.2) controlPoint2: CGPointMake(22.48, 20.23)];
                [bezier16Path addCurveToPoint: CGPointMake(22.44, 20.38) controlPoint1: CGPointMake(22.45, 20.29) controlPoint2: CGPointMake(22.44, 20.33)];
                [bezier16Path addCurveToPoint: CGPointMake(22.45, 20.49) controlPoint1: CGPointMake(22.44, 20.43) controlPoint2: CGPointMake(22.44, 20.46)];
                [bezier16Path addCurveToPoint: CGPointMake(22.49, 20.56) controlPoint1: CGPointMake(22.45, 20.52) controlPoint2: CGPointMake(22.46, 20.54)];
                [bezier16Path addCurveToPoint: CGPointMake(22.59, 20.61) controlPoint1: CGPointMake(22.51, 20.58) controlPoint2: CGPointMake(22.54, 20.59)];
                [bezier16Path addCurveToPoint: CGPointMake(22.77, 20.63) controlPoint1: CGPointMake(22.62, 20.6) controlPoint2: CGPointMake(22.69, 20.61)];
                [bezier16Path closePath];
                bezier16Path.miterLimit = 4;

                [fillColor setFill];
                [bezier16Path fill];


                //// Bezier 17 Drawing
                UIBezierPath* bezier17Path = [UIBezierPath bezierPath];
                [bezier17Path moveToPoint: CGPointMake(25.47, 21.2)];
                [bezier17Path addLineToPoint: CGPointMake(25.47, 21.2)];
                [bezier17Path addCurveToPoint: CGPointMake(25.42, 21.44) controlPoint1: CGPointMake(25.47, 21.3) controlPoint2: CGPointMake(25.45, 21.38)];
                [bezier17Path addCurveToPoint: CGPointMake(25.28, 21.6) controlPoint1: CGPointMake(25.39, 21.5) controlPoint2: CGPointMake(25.34, 21.56)];
                [bezier17Path addCurveToPoint: CGPointMake(25.06, 21.68) controlPoint1: CGPointMake(25.22, 21.64) controlPoint2: CGPointMake(25.15, 21.67)];
                [bezier17Path addCurveToPoint: CGPointMake(24.78, 21.7) controlPoint1: CGPointMake(24.98, 21.7) controlPoint2: CGPointMake(24.88, 21.7)];
                [bezier17Path addCurveToPoint: CGPointMake(24.49, 21.67) controlPoint1: CGPointMake(24.67, 21.7) controlPoint2: CGPointMake(24.58, 21.69)];
                [bezier17Path addCurveToPoint: CGPointMake(24.28, 21.58) controlPoint1: CGPointMake(24.41, 21.65) controlPoint2: CGPointMake(24.34, 21.62)];
                [bezier17Path addCurveToPoint: CGPointMake(24.14, 21.43) controlPoint1: CGPointMake(24.22, 21.54) controlPoint2: CGPointMake(24.17, 21.49)];
                [bezier17Path addCurveToPoint: CGPointMake(24.09, 21.21) controlPoint1: CGPointMake(24.11, 21.37) controlPoint2: CGPointMake(24.09, 21.3)];
                [bezier17Path addLineToPoint: CGPointMake(24.09, 20.32)];
                [bezier17Path addCurveToPoint: CGPointMake(24.27, 19.96) controlPoint1: CGPointMake(24.09, 20.16) controlPoint2: CGPointMake(24.15, 20.04)];
                [bezier17Path addCurveToPoint: CGPointMake(24.78, 19.84) controlPoint1: CGPointMake(24.39, 19.88) controlPoint2: CGPointMake(24.56, 19.84)];
                [bezier17Path addCurveToPoint: CGPointMake(25.06, 19.87) controlPoint1: CGPointMake(24.88, 19.84) controlPoint2: CGPointMake(24.98, 19.85)];
                [bezier17Path addCurveToPoint: CGPointMake(25.27, 19.96) controlPoint1: CGPointMake(25.14, 19.89) controlPoint2: CGPointMake(25.22, 19.92)];
                [bezier17Path addCurveToPoint: CGPointMake(25.41, 20.11) controlPoint1: CGPointMake(25.33, 20) controlPoint2: CGPointMake(25.37, 20.05)];
                [bezier17Path addCurveToPoint: CGPointMake(25.46, 20.32) controlPoint1: CGPointMake(25.44, 20.17) controlPoint2: CGPointMake(25.46, 20.24)];
                [bezier17Path addLineToPoint: CGPointMake(25.46, 21.2)];
                [bezier17Path addLineToPoint: CGPointMake(25.47, 21.2)];
                [bezier17Path closePath];
                [bezier17Path moveToPoint: CGPointMake(25.11, 20.35)];
                [bezier17Path addCurveToPoint: CGPointMake(25.03, 20.2) controlPoint1: CGPointMake(25.11, 20.29) controlPoint2: CGPointMake(25.08, 20.23)];
                [bezier17Path addCurveToPoint: CGPointMake(24.78, 20.14) controlPoint1: CGPointMake(24.98, 20.16) controlPoint2: CGPointMake(24.89, 20.14)];
                [bezier17Path addCurveToPoint: CGPointMake(24.53, 20.19) controlPoint1: CGPointMake(24.67, 20.14) controlPoint2: CGPointMake(24.59, 20.16)];
                [bezier17Path addCurveToPoint: CGPointMake(24.45, 20.33) controlPoint1: CGPointMake(24.48, 20.23) controlPoint2: CGPointMake(24.45, 20.27)];
                [bezier17Path addLineToPoint: CGPointMake(24.45, 21.2)];
                [bezier17Path addCurveToPoint: CGPointMake(24.53, 21.35) controlPoint1: CGPointMake(24.45, 21.27) controlPoint2: CGPointMake(24.48, 21.32)];
                [bezier17Path addCurveToPoint: CGPointMake(24.77, 21.39) controlPoint1: CGPointMake(24.58, 21.38) controlPoint2: CGPointMake(24.66, 21.39)];
                [bezier17Path addCurveToPoint: CGPointMake(25.02, 21.34) controlPoint1: CGPointMake(24.87, 21.39) controlPoint2: CGPointMake(24.96, 21.38)];
                [bezier17Path addCurveToPoint: CGPointMake(25.11, 21.19) controlPoint1: CGPointMake(25.08, 21.31) controlPoint2: CGPointMake(25.11, 21.26)];
                [bezier17Path addLineToPoint: CGPointMake(25.11, 20.35)];
                [bezier17Path closePath];
                bezier17Path.miterLimit = 4;

                [fillColor setFill];
                [bezier17Path fill];


                //// Bezier 18 Drawing
                UIBezierPath* bezier18Path = [UIBezierPath bezierPath];
                [bezier18Path moveToPoint: CGPointMake(27.31, 20.64)];
                [bezier18Path addCurveToPoint: CGPointMake(27.43, 20.67) controlPoint1: CGPointMake(27.36, 20.64) controlPoint2: CGPointMake(27.4, 20.65)];
                [bezier18Path addCurveToPoint: CGPointMake(27.48, 20.78) controlPoint1: CGPointMake(27.46, 20.69) controlPoint2: CGPointMake(27.48, 20.73)];
                [bezier18Path addCurveToPoint: CGPointMake(27.43, 20.9) controlPoint1: CGPointMake(27.48, 20.84) controlPoint2: CGPointMake(27.47, 20.88)];
                [bezier18Path addCurveToPoint: CGPointMake(27.31, 20.94) controlPoint1: CGPointMake(27.39, 20.92) controlPoint2: CGPointMake(27.35, 20.93)];
                [bezier18Path addLineToPoint: CGPointMake(27.25, 20.94)];
                [bezier18Path addLineToPoint: CGPointMake(27.25, 21.55)];
                [bezier18Path addCurveToPoint: CGPointMake(27.24, 21.6) controlPoint1: CGPointMake(27.25, 21.57) controlPoint2: CGPointMake(27.24, 21.58)];
                [bezier18Path addCurveToPoint: CGPointMake(27.21, 21.65) controlPoint1: CGPointMake(27.23, 21.62) controlPoint2: CGPointMake(27.22, 21.63)];
                [bezier18Path addCurveToPoint: CGPointMake(27.15, 21.69) controlPoint1: CGPointMake(27.2, 21.66) controlPoint2: CGPointMake(27.18, 21.68)];
                [bezier18Path addCurveToPoint: CGPointMake(27.07, 21.7) controlPoint1: CGPointMake(27.13, 21.7) controlPoint2: CGPointMake(27.1, 21.7)];
                [bezier18Path addCurveToPoint: CGPointMake(26.99, 21.69) controlPoint1: CGPointMake(27.04, 21.7) controlPoint2: CGPointMake(27.01, 21.7)];
                [bezier18Path addCurveToPoint: CGPointMake(26.93, 21.65) controlPoint1: CGPointMake(26.97, 21.68) controlPoint2: CGPointMake(26.95, 21.67)];
                [bezier18Path addCurveToPoint: CGPointMake(26.9, 21.6) controlPoint1: CGPointMake(26.92, 21.64) controlPoint2: CGPointMake(26.91, 21.62)];
                [bezier18Path addCurveToPoint: CGPointMake(26.89, 21.55) controlPoint1: CGPointMake(26.89, 21.58) controlPoint2: CGPointMake(26.89, 21.57)];
                [bezier18Path addLineToPoint: CGPointMake(26.89, 20.94)];
                [bezier18Path addLineToPoint: CGPointMake(26.19, 20.94)];
                [bezier18Path addCurveToPoint: CGPointMake(26.1, 20.92) controlPoint1: CGPointMake(26.15, 20.94) controlPoint2: CGPointMake(26.12, 20.93)];
                [bezier18Path addCurveToPoint: CGPointMake(26.08, 20.85) controlPoint1: CGPointMake(26.09, 20.91) controlPoint2: CGPointMake(26.08, 20.88)];
                [bezier18Path addLineToPoint: CGPointMake(26.08, 20.02)];
                [bezier18Path addCurveToPoint: CGPointMake(26.09, 19.97) controlPoint1: CGPointMake(26.08, 20) controlPoint2: CGPointMake(26.08, 19.98)];
                [bezier18Path addCurveToPoint: CGPointMake(26.12, 19.92) controlPoint1: CGPointMake(26.1, 19.95) controlPoint2: CGPointMake(26.11, 19.93)];
                [bezier18Path addCurveToPoint: CGPointMake(26.17, 19.88) controlPoint1: CGPointMake(26.13, 19.91) controlPoint2: CGPointMake(26.15, 19.89)];
                [bezier18Path addCurveToPoint: CGPointMake(26.25, 19.86) controlPoint1: CGPointMake(26.19, 19.87) controlPoint2: CGPointMake(26.22, 19.86)];
                [bezier18Path addCurveToPoint: CGPointMake(26.39, 19.9) controlPoint1: CGPointMake(26.31, 19.86) controlPoint2: CGPointMake(26.36, 19.87)];
                [bezier18Path addCurveToPoint: CGPointMake(26.44, 20.02) controlPoint1: CGPointMake(26.42, 19.93) controlPoint2: CGPointMake(26.44, 19.97)];
                [bezier18Path addLineToPoint: CGPointMake(26.44, 20.66)];
                [bezier18Path addLineToPoint: CGPointMake(26.89, 20.66)];
                [bezier18Path addLineToPoint: CGPointMake(26.89, 20)];
                [bezier18Path addCurveToPoint: CGPointMake(26.93, 19.89) controlPoint1: CGPointMake(26.89, 19.95) controlPoint2: CGPointMake(26.91, 19.92)];
                [bezier18Path addCurveToPoint: CGPointMake(27.06, 19.85) controlPoint1: CGPointMake(26.96, 19.86) controlPoint2: CGPointMake(27, 19.85)];
                [bezier18Path addCurveToPoint: CGPointMake(27.19, 19.89) controlPoint1: CGPointMake(27.12, 19.85) controlPoint2: CGPointMake(27.16, 19.86)];
                [bezier18Path addCurveToPoint: CGPointMake(27.24, 20) controlPoint1: CGPointMake(27.22, 19.92) controlPoint2: CGPointMake(27.24, 19.95)];
                [bezier18Path addLineToPoint: CGPointMake(27.24, 20.64)];
                [bezier18Path addLineToPoint: CGPointMake(27.31, 20.64)];
                [bezier18Path addLineToPoint: CGPointMake(27.31, 20.64)];
                [bezier18Path closePath];
                bezier18Path.miterLimit = 4;

                [fillColor setFill];
                [bezier18Path fill];


                //// Bezier 19 Drawing
                UIBezierPath* bezier19Path = [UIBezierPath bezierPath];
                [bezier19Path moveToPoint: CGPointMake(29.31, 20.64)];
                [bezier19Path addCurveToPoint: CGPointMake(29.43, 20.67) controlPoint1: CGPointMake(29.36, 20.64) controlPoint2: CGPointMake(29.4, 20.65)];
                [bezier19Path addCurveToPoint: CGPointMake(29.48, 20.78) controlPoint1: CGPointMake(29.47, 20.69) controlPoint2: CGPointMake(29.48, 20.73)];
                [bezier19Path addCurveToPoint: CGPointMake(29.43, 20.9) controlPoint1: CGPointMake(29.48, 20.84) controlPoint2: CGPointMake(29.46, 20.88)];
                [bezier19Path addCurveToPoint: CGPointMake(29.31, 20.94) controlPoint1: CGPointMake(29.39, 20.92) controlPoint2: CGPointMake(29.36, 20.93)];
                [bezier19Path addLineToPoint: CGPointMake(29.25, 20.94)];
                [bezier19Path addLineToPoint: CGPointMake(29.25, 21.55)];
                [bezier19Path addCurveToPoint: CGPointMake(29.24, 21.6) controlPoint1: CGPointMake(29.25, 21.57) controlPoint2: CGPointMake(29.25, 21.58)];
                [bezier19Path addCurveToPoint: CGPointMake(29.21, 21.65) controlPoint1: CGPointMake(29.24, 21.62) controlPoint2: CGPointMake(29.22, 21.63)];
                [bezier19Path addCurveToPoint: CGPointMake(29.15, 21.69) controlPoint1: CGPointMake(29.2, 21.66) controlPoint2: CGPointMake(29.18, 21.68)];
                [bezier19Path addCurveToPoint: CGPointMake(29.07, 21.7) controlPoint1: CGPointMake(29.13, 21.7) controlPoint2: CGPointMake(29.1, 21.7)];
                [bezier19Path addCurveToPoint: CGPointMake(28.99, 21.69) controlPoint1: CGPointMake(29.04, 21.7) controlPoint2: CGPointMake(29.01, 21.7)];
                [bezier19Path addCurveToPoint: CGPointMake(28.93, 21.65) controlPoint1: CGPointMake(28.97, 21.68) controlPoint2: CGPointMake(28.95, 21.67)];
                [bezier19Path addCurveToPoint: CGPointMake(28.9, 21.6) controlPoint1: CGPointMake(28.92, 21.64) controlPoint2: CGPointMake(28.9, 21.62)];
                [bezier19Path addCurveToPoint: CGPointMake(28.89, 21.55) controlPoint1: CGPointMake(28.89, 21.58) controlPoint2: CGPointMake(28.89, 21.57)];
                [bezier19Path addLineToPoint: CGPointMake(28.89, 20.94)];
                [bezier19Path addLineToPoint: CGPointMake(28.19, 20.94)];
                [bezier19Path addCurveToPoint: CGPointMake(28.1, 20.92) controlPoint1: CGPointMake(28.14, 20.94) controlPoint2: CGPointMake(28.12, 20.93)];
                [bezier19Path addCurveToPoint: CGPointMake(28.08, 20.85) controlPoint1: CGPointMake(28.08, 20.91) controlPoint2: CGPointMake(28.08, 20.88)];
                [bezier19Path addLineToPoint: CGPointMake(28.08, 20.02)];
                [bezier19Path addCurveToPoint: CGPointMake(28.09, 19.97) controlPoint1: CGPointMake(28.08, 20) controlPoint2: CGPointMake(28.08, 19.98)];
                [bezier19Path addCurveToPoint: CGPointMake(28.12, 19.92) controlPoint1: CGPointMake(28.1, 19.95) controlPoint2: CGPointMake(28.11, 19.93)];
                [bezier19Path addCurveToPoint: CGPointMake(28.17, 19.88) controlPoint1: CGPointMake(28.13, 19.91) controlPoint2: CGPointMake(28.15, 19.89)];
                [bezier19Path addCurveToPoint: CGPointMake(28.25, 19.86) controlPoint1: CGPointMake(28.19, 19.87) controlPoint2: CGPointMake(28.22, 19.86)];
                [bezier19Path addCurveToPoint: CGPointMake(28.39, 19.9) controlPoint1: CGPointMake(28.31, 19.86) controlPoint2: CGPointMake(28.36, 19.87)];
                [bezier19Path addCurveToPoint: CGPointMake(28.44, 20.02) controlPoint1: CGPointMake(28.42, 19.93) controlPoint2: CGPointMake(28.44, 19.97)];
                [bezier19Path addLineToPoint: CGPointMake(28.44, 20.66)];
                [bezier19Path addLineToPoint: CGPointMake(28.89, 20.66)];
                [bezier19Path addLineToPoint: CGPointMake(28.89, 20)];
                [bezier19Path addCurveToPoint: CGPointMake(28.93, 19.89) controlPoint1: CGPointMake(28.89, 19.95) controlPoint2: CGPointMake(28.9, 19.92)];
                [bezier19Path addCurveToPoint: CGPointMake(29.06, 19.85) controlPoint1: CGPointMake(28.96, 19.86) controlPoint2: CGPointMake(29, 19.85)];
                [bezier19Path addCurveToPoint: CGPointMake(29.19, 19.89) controlPoint1: CGPointMake(29.12, 19.85) controlPoint2: CGPointMake(29.16, 19.86)];
                [bezier19Path addCurveToPoint: CGPointMake(29.24, 20) controlPoint1: CGPointMake(29.22, 19.92) controlPoint2: CGPointMake(29.24, 19.95)];
                [bezier19Path addLineToPoint: CGPointMake(29.24, 20.64)];
                [bezier19Path addLineToPoint: CGPointMake(29.31, 20.64)];
                [bezier19Path addLineToPoint: CGPointMake(29.31, 20.64)];
                [bezier19Path closePath];
                bezier19Path.miterLimit = 4;

                [fillColor setFill];
                [bezier19Path fill];


                //// Bezier 20 Drawing
                UIBezierPath* bezier20Path = [UIBezierPath bezierPath];
                [bezier20Path moveToPoint: CGPointMake(32.08, 20.57)];
                [bezier20Path addCurveToPoint: CGPointMake(32.37, 20.61) controlPoint1: CGPointMake(32.2, 20.57) controlPoint2: CGPointMake(32.29, 20.58)];
                [bezier20Path addCurveToPoint: CGPointMake(32.56, 20.72) controlPoint1: CGPointMake(32.45, 20.63) controlPoint2: CGPointMake(32.51, 20.67)];
                [bezier20Path addCurveToPoint: CGPointMake(32.66, 20.9) controlPoint1: CGPointMake(32.61, 20.77) controlPoint2: CGPointMake(32.64, 20.83)];
                [bezier20Path addCurveToPoint: CGPointMake(32.69, 21.15) controlPoint1: CGPointMake(32.68, 20.97) controlPoint2: CGPointMake(32.69, 21.06)];
                [bezier20Path addCurveToPoint: CGPointMake(32.66, 21.39) controlPoint1: CGPointMake(32.69, 21.24) controlPoint2: CGPointMake(32.68, 21.32)];
                [bezier20Path addCurveToPoint: CGPointMake(32.54, 21.57) controlPoint1: CGPointMake(32.63, 21.46) controlPoint2: CGPointMake(32.6, 21.52)];
                [bezier20Path addCurveToPoint: CGPointMake(32.33, 21.68) controlPoint1: CGPointMake(32.49, 21.62) controlPoint2: CGPointMake(32.41, 21.65)];
                [bezier20Path addCurveToPoint: CGPointMake(32, 21.72) controlPoint1: CGPointMake(32.24, 21.7) controlPoint2: CGPointMake(32.13, 21.72)];
                [bezier20Path addCurveToPoint: CGPointMake(31.73, 21.69) controlPoint1: CGPointMake(31.9, 21.72) controlPoint2: CGPointMake(31.81, 21.71)];
                [bezier20Path addCurveToPoint: CGPointMake(31.52, 21.6) controlPoint1: CGPointMake(31.65, 21.67) controlPoint2: CGPointMake(31.58, 21.64)];
                [bezier20Path addCurveToPoint: CGPointMake(31.38, 21.44) controlPoint1: CGPointMake(31.46, 21.56) controlPoint2: CGPointMake(31.41, 21.51)];
                [bezier20Path addCurveToPoint: CGPointMake(31.33, 21.2) controlPoint1: CGPointMake(31.35, 21.37) controlPoint2: CGPointMake(31.33, 21.3)];
                [bezier20Path addLineToPoint: CGPointMake(31.33, 20)];
                [bezier20Path addCurveToPoint: CGPointMake(31.34, 19.95) controlPoint1: CGPointMake(31.33, 19.98) controlPoint2: CGPointMake(31.33, 19.97)];
                [bezier20Path addCurveToPoint: CGPointMake(31.37, 19.9) controlPoint1: CGPointMake(31.35, 19.93) controlPoint2: CGPointMake(31.36, 19.91)];
                [bezier20Path addCurveToPoint: CGPointMake(31.43, 19.86) controlPoint1: CGPointMake(31.39, 19.89) controlPoint2: CGPointMake(31.4, 19.87)];
                [bezier20Path addCurveToPoint: CGPointMake(31.51, 19.85) controlPoint1: CGPointMake(31.45, 19.85) controlPoint2: CGPointMake(31.48, 19.85)];
                [bezier20Path addCurveToPoint: CGPointMake(31.64, 19.89) controlPoint1: CGPointMake(31.57, 19.85) controlPoint2: CGPointMake(31.62, 19.86)];
                [bezier20Path addCurveToPoint: CGPointMake(31.69, 20) controlPoint1: CGPointMake(31.67, 19.92) controlPoint2: CGPointMake(31.69, 19.95)];
                [bezier20Path addLineToPoint: CGPointMake(31.69, 20.59)];
                [bezier20Path addCurveToPoint: CGPointMake(31.91, 20.57) controlPoint1: CGPointMake(31.78, 20.58) controlPoint2: CGPointMake(31.85, 20.57)];
                [bezier20Path addCurveToPoint: CGPointMake(32.08, 20.57) controlPoint1: CGPointMake(31.98, 20.57) controlPoint2: CGPointMake(32.04, 20.57)];
                [bezier20Path closePath];
                [bezier20Path moveToPoint: CGPointMake(32.35, 21.13)];
                [bezier20Path addCurveToPoint: CGPointMake(32.33, 21) controlPoint1: CGPointMake(32.35, 21.07) controlPoint2: CGPointMake(32.34, 21.03)];
                [bezier20Path addCurveToPoint: CGPointMake(32.28, 20.92) controlPoint1: CGPointMake(32.32, 20.96) controlPoint2: CGPointMake(32.3, 20.94)];
                [bezier20Path addCurveToPoint: CGPointMake(32.18, 20.88) controlPoint1: CGPointMake(32.25, 20.9) controlPoint2: CGPointMake(32.22, 20.89)];
                [bezier20Path addCurveToPoint: CGPointMake(32.02, 20.87) controlPoint1: CGPointMake(32.14, 20.87) controlPoint2: CGPointMake(32.08, 20.87)];
                [bezier20Path addCurveToPoint: CGPointMake(31.89, 20.87) controlPoint1: CGPointMake(31.97, 20.87) controlPoint2: CGPointMake(31.93, 20.87)];
                [bezier20Path addCurveToPoint: CGPointMake(31.81, 20.87) controlPoint1: CGPointMake(31.85, 20.87) controlPoint2: CGPointMake(31.83, 20.87)];
                [bezier20Path addCurveToPoint: CGPointMake(31.75, 20.88) controlPoint1: CGPointMake(31.78, 20.87) controlPoint2: CGPointMake(31.77, 20.87)];
                [bezier20Path addCurveToPoint: CGPointMake(31.69, 20.89) controlPoint1: CGPointMake(31.73, 20.88) controlPoint2: CGPointMake(31.71, 20.89)];
                [bezier20Path addLineToPoint: CGPointMake(31.69, 21.12)];
                [bezier20Path addCurveToPoint: CGPointMake(31.71, 21.25) controlPoint1: CGPointMake(31.69, 21.17) controlPoint2: CGPointMake(31.7, 21.21)];
                [bezier20Path addCurveToPoint: CGPointMake(31.76, 21.34) controlPoint1: CGPointMake(31.72, 21.28) controlPoint2: CGPointMake(31.74, 21.31)];
                [bezier20Path addCurveToPoint: CGPointMake(31.86, 21.39) controlPoint1: CGPointMake(31.78, 21.37) controlPoint2: CGPointMake(31.82, 21.38)];
                [bezier20Path addCurveToPoint: CGPointMake(32.02, 21.41) controlPoint1: CGPointMake(31.9, 21.4) controlPoint2: CGPointMake(31.96, 21.41)];
                [bezier20Path addCurveToPoint: CGPointMake(32.17, 21.4) controlPoint1: CGPointMake(32.08, 21.41) controlPoint2: CGPointMake(32.13, 21.41)];
                [bezier20Path addCurveToPoint: CGPointMake(32.27, 21.36) controlPoint1: CGPointMake(32.21, 21.39) controlPoint2: CGPointMake(32.24, 21.38)];
                [bezier20Path addCurveToPoint: CGPointMake(32.33, 21.28) controlPoint1: CGPointMake(32.3, 21.34) controlPoint2: CGPointMake(32.32, 21.31)];
                [bezier20Path addCurveToPoint: CGPointMake(32.35, 21.13) controlPoint1: CGPointMake(32.34, 21.24) controlPoint2: CGPointMake(32.35, 21.19)];
                [bezier20Path closePath];
                bezier20Path.miterLimit = 4;

                [fillColor setFill];
                [bezier20Path fill];


                //// Bezier 21 Drawing
                UIBezierPath* bezier21Path = [UIBezierPath bezierPath];
                [bezier21Path moveToPoint: CGPointMake(34.47, 20.64)];
                [bezier21Path addCurveToPoint: CGPointMake(34.6, 20.67) controlPoint1: CGPointMake(34.52, 20.64) controlPoint2: CGPointMake(34.56, 20.65)];
                [bezier21Path addCurveToPoint: CGPointMake(34.65, 20.78) controlPoint1: CGPointMake(34.63, 20.69) controlPoint2: CGPointMake(34.65, 20.73)];
                [bezier21Path addCurveToPoint: CGPointMake(34.6, 20.9) controlPoint1: CGPointMake(34.65, 20.84) controlPoint2: CGPointMake(34.64, 20.88)];
                [bezier21Path addCurveToPoint: CGPointMake(34.48, 20.94) controlPoint1: CGPointMake(34.56, 20.92) controlPoint2: CGPointMake(34.53, 20.93)];
                [bezier21Path addLineToPoint: CGPointMake(34.42, 20.94)];
                [bezier21Path addLineToPoint: CGPointMake(34.42, 21.55)];
                [bezier21Path addCurveToPoint: CGPointMake(34.41, 21.6) controlPoint1: CGPointMake(34.42, 21.57) controlPoint2: CGPointMake(34.42, 21.58)];
                [bezier21Path addCurveToPoint: CGPointMake(34.38, 21.65) controlPoint1: CGPointMake(34.4, 21.62) controlPoint2: CGPointMake(34.39, 21.63)];
                [bezier21Path addCurveToPoint: CGPointMake(34.33, 21.69) controlPoint1: CGPointMake(34.37, 21.66) controlPoint2: CGPointMake(34.35, 21.68)];
                [bezier21Path addCurveToPoint: CGPointMake(34.25, 21.7) controlPoint1: CGPointMake(34.31, 21.7) controlPoint2: CGPointMake(34.28, 21.7)];
                [bezier21Path addCurveToPoint: CGPointMake(34.17, 21.69) controlPoint1: CGPointMake(34.22, 21.7) controlPoint2: CGPointMake(34.19, 21.7)];
                [bezier21Path addCurveToPoint: CGPointMake(34.11, 21.65) controlPoint1: CGPointMake(34.15, 21.68) controlPoint2: CGPointMake(34.13, 21.67)];
                [bezier21Path addCurveToPoint: CGPointMake(34.08, 21.6) controlPoint1: CGPointMake(34.1, 21.64) controlPoint2: CGPointMake(34.09, 21.62)];
                [bezier21Path addCurveToPoint: CGPointMake(34.07, 21.55) controlPoint1: CGPointMake(34.07, 21.58) controlPoint2: CGPointMake(34.07, 21.57)];
                [bezier21Path addLineToPoint: CGPointMake(34.07, 20.94)];
                [bezier21Path addLineToPoint: CGPointMake(33.37, 20.94)];
                [bezier21Path addCurveToPoint: CGPointMake(33.28, 20.92) controlPoint1: CGPointMake(33.32, 20.94) controlPoint2: CGPointMake(33.3, 20.93)];
                [bezier21Path addCurveToPoint: CGPointMake(33.26, 20.85) controlPoint1: CGPointMake(33.26, 20.91) controlPoint2: CGPointMake(33.26, 20.88)];
                [bezier21Path addLineToPoint: CGPointMake(33.26, 20.02)];
                [bezier21Path addCurveToPoint: CGPointMake(33.27, 19.97) controlPoint1: CGPointMake(33.26, 20) controlPoint2: CGPointMake(33.27, 19.98)];
                [bezier21Path addCurveToPoint: CGPointMake(33.3, 19.92) controlPoint1: CGPointMake(33.28, 19.95) controlPoint2: CGPointMake(33.28, 19.93)];
                [bezier21Path addCurveToPoint: CGPointMake(33.35, 19.88) controlPoint1: CGPointMake(33.31, 19.91) controlPoint2: CGPointMake(33.33, 19.89)];
                [bezier21Path addCurveToPoint: CGPointMake(33.43, 19.86) controlPoint1: CGPointMake(33.38, 19.87) controlPoint2: CGPointMake(33.4, 19.86)];
                [bezier21Path addCurveToPoint: CGPointMake(33.57, 19.9) controlPoint1: CGPointMake(33.49, 19.86) controlPoint2: CGPointMake(33.54, 19.87)];
                [bezier21Path addCurveToPoint: CGPointMake(33.62, 20.02) controlPoint1: CGPointMake(33.6, 19.93) controlPoint2: CGPointMake(33.62, 19.97)];
                [bezier21Path addLineToPoint: CGPointMake(33.62, 20.66)];
                [bezier21Path addLineToPoint: CGPointMake(34.07, 20.66)];
                [bezier21Path addLineToPoint: CGPointMake(34.07, 20)];
                [bezier21Path addCurveToPoint: CGPointMake(34.12, 19.89) controlPoint1: CGPointMake(34.07, 19.95) controlPoint2: CGPointMake(34.09, 19.92)];
                [bezier21Path addCurveToPoint: CGPointMake(34.25, 19.85) controlPoint1: CGPointMake(34.15, 19.86) controlPoint2: CGPointMake(34.19, 19.85)];
                [bezier21Path addCurveToPoint: CGPointMake(34.38, 19.89) controlPoint1: CGPointMake(34.31, 19.85) controlPoint2: CGPointMake(34.35, 19.86)];
                [bezier21Path addCurveToPoint: CGPointMake(34.43, 20) controlPoint1: CGPointMake(34.41, 19.92) controlPoint2: CGPointMake(34.43, 19.95)];
                [bezier21Path addLineToPoint: CGPointMake(34.43, 20.64)];
                [bezier21Path addLineToPoint: CGPointMake(34.47, 20.64)];
                [bezier21Path addLineToPoint: CGPointMake(34.47, 20.64)];
                [bezier21Path closePath];
                bezier21Path.miterLimit = 4;

                [fillColor setFill];
                [bezier21Path fill];


                //// Bezier 22 Drawing
                UIBezierPath* bezier22Path = [UIBezierPath bezierPath];
                [bezier22Path moveToPoint: CGPointMake(36.63, 21.2)];
                [bezier22Path addLineToPoint: CGPointMake(36.63, 21.2)];
                [bezier22Path addCurveToPoint: CGPointMake(36.58, 21.44) controlPoint1: CGPointMake(36.63, 21.3) controlPoint2: CGPointMake(36.62, 21.38)];
                [bezier22Path addCurveToPoint: CGPointMake(36.44, 21.6) controlPoint1: CGPointMake(36.54, 21.5) controlPoint2: CGPointMake(36.5, 21.56)];
                [bezier22Path addCurveToPoint: CGPointMake(36.22, 21.68) controlPoint1: CGPointMake(36.38, 21.64) controlPoint2: CGPointMake(36.31, 21.67)];
                [bezier22Path addCurveToPoint: CGPointMake(35.93, 21.7) controlPoint1: CGPointMake(36.13, 21.7) controlPoint2: CGPointMake(36.04, 21.7)];
                [bezier22Path addCurveToPoint: CGPointMake(35.65, 21.67) controlPoint1: CGPointMake(35.83, 21.7) controlPoint2: CGPointMake(35.73, 21.69)];
                [bezier22Path addCurveToPoint: CGPointMake(35.43, 21.58) controlPoint1: CGPointMake(35.56, 21.65) controlPoint2: CGPointMake(35.49, 21.62)];
                [bezier22Path addCurveToPoint: CGPointMake(35.29, 21.43) controlPoint1: CGPointMake(35.37, 21.54) controlPoint2: CGPointMake(35.33, 21.49)];
                [bezier22Path addCurveToPoint: CGPointMake(35.25, 21.21) controlPoint1: CGPointMake(35.26, 21.37) controlPoint2: CGPointMake(35.25, 21.3)];
                [bezier22Path addLineToPoint: CGPointMake(35.25, 20.32)];
                [bezier22Path addCurveToPoint: CGPointMake(35.43, 19.96) controlPoint1: CGPointMake(35.25, 20.16) controlPoint2: CGPointMake(35.31, 20.04)];
                [bezier22Path addCurveToPoint: CGPointMake(35.94, 19.84) controlPoint1: CGPointMake(35.55, 19.88) controlPoint2: CGPointMake(35.72, 19.84)];
                [bezier22Path addCurveToPoint: CGPointMake(36.22, 19.87) controlPoint1: CGPointMake(36.04, 19.84) controlPoint2: CGPointMake(36.14, 19.85)];
                [bezier22Path addCurveToPoint: CGPointMake(36.43, 19.96) controlPoint1: CGPointMake(36.3, 19.89) controlPoint2: CGPointMake(36.38, 19.92)];
                [bezier22Path addCurveToPoint: CGPointMake(36.57, 20.11) controlPoint1: CGPointMake(36.49, 20) controlPoint2: CGPointMake(36.53, 20.05)];
                [bezier22Path addCurveToPoint: CGPointMake(36.62, 20.32) controlPoint1: CGPointMake(36.6, 20.17) controlPoint2: CGPointMake(36.62, 20.24)];
                [bezier22Path addLineToPoint: CGPointMake(36.62, 21.2)];
                [bezier22Path addLineToPoint: CGPointMake(36.63, 21.2)];
                [bezier22Path closePath];
                [bezier22Path moveToPoint: CGPointMake(36.27, 20.35)];
                [bezier22Path addCurveToPoint: CGPointMake(36.19, 20.2) controlPoint1: CGPointMake(36.27, 20.29) controlPoint2: CGPointMake(36.24, 20.23)];
                [bezier22Path addCurveToPoint: CGPointMake(35.94, 20.14) controlPoint1: CGPointMake(36.14, 20.16) controlPoint2: CGPointMake(36.05, 20.14)];
                [bezier22Path addCurveToPoint: CGPointMake(35.69, 20.19) controlPoint1: CGPointMake(35.83, 20.14) controlPoint2: CGPointMake(35.75, 20.16)];
                [bezier22Path addCurveToPoint: CGPointMake(35.61, 20.33) controlPoint1: CGPointMake(35.64, 20.23) controlPoint2: CGPointMake(35.61, 20.27)];
                [bezier22Path addLineToPoint: CGPointMake(35.61, 21.2)];
                [bezier22Path addCurveToPoint: CGPointMake(35.69, 21.35) controlPoint1: CGPointMake(35.61, 21.27) controlPoint2: CGPointMake(35.64, 21.32)];
                [bezier22Path addCurveToPoint: CGPointMake(35.93, 21.39) controlPoint1: CGPointMake(35.74, 21.38) controlPoint2: CGPointMake(35.82, 21.39)];
                [bezier22Path addCurveToPoint: CGPointMake(36.18, 21.34) controlPoint1: CGPointMake(36.03, 21.39) controlPoint2: CGPointMake(36.12, 21.38)];
                [bezier22Path addCurveToPoint: CGPointMake(36.27, 21.19) controlPoint1: CGPointMake(36.24, 21.31) controlPoint2: CGPointMake(36.27, 21.26)];
                [bezier22Path addLineToPoint: CGPointMake(36.27, 20.35)];
                [bezier22Path closePath];
                bezier22Path.miterLimit = 4;

                [fillColor setFill];
                [bezier22Path fill];


                //// Bezier 23 Drawing
                UIBezierPath* bezier23Path = [UIBezierPath bezierPath];
                [bezier23Path moveToPoint: CGPointMake(38.58, 21.15)];
                [bezier23Path addCurveToPoint: CGPointMake(38.55, 21.42) controlPoint1: CGPointMake(38.58, 21.26) controlPoint2: CGPointMake(38.57, 21.35)];
                [bezier23Path addCurveToPoint: CGPointMake(38.43, 21.59) controlPoint1: CGPointMake(38.53, 21.49) controlPoint2: CGPointMake(38.49, 21.55)];
                [bezier23Path addCurveToPoint: CGPointMake(38.2, 21.68) controlPoint1: CGPointMake(38.38, 21.63) controlPoint2: CGPointMake(38.3, 21.66)];
                [bezier23Path addCurveToPoint: CGPointMake(37.84, 21.71) controlPoint1: CGPointMake(38.1, 21.7) controlPoint2: CGPointMake(37.98, 21.71)];
                [bezier23Path addLineToPoint: CGPointMake(37.82, 21.71)];
                [bezier23Path addCurveToPoint: CGPointMake(37.7, 21.71) controlPoint1: CGPointMake(37.78, 21.71) controlPoint2: CGPointMake(37.74, 21.71)];
                [bezier23Path addCurveToPoint: CGPointMake(37.56, 21.7) controlPoint1: CGPointMake(37.65, 21.71) controlPoint2: CGPointMake(37.61, 21.71)];
                [bezier23Path addCurveToPoint: CGPointMake(37.43, 21.68) controlPoint1: CGPointMake(37.51, 21.69) controlPoint2: CGPointMake(37.47, 21.69)];
                [bezier23Path addCurveToPoint: CGPointMake(37.31, 21.64) controlPoint1: CGPointMake(37.38, 21.67) controlPoint2: CGPointMake(37.35, 21.66)];
                [bezier23Path addCurveToPoint: CGPointMake(37.23, 21.57) controlPoint1: CGPointMake(37.27, 21.62) controlPoint2: CGPointMake(37.25, 21.6)];
                [bezier23Path addCurveToPoint: CGPointMake(37.2, 21.47) controlPoint1: CGPointMake(37.21, 21.54) controlPoint2: CGPointMake(37.2, 21.51)];
                [bezier23Path addLineToPoint: CGPointMake(37.2, 21.46)];
                [bezier23Path addCurveToPoint: CGPointMake(37.25, 21.35) controlPoint1: CGPointMake(37.2, 21.42) controlPoint2: CGPointMake(37.22, 21.38)];
                [bezier23Path addCurveToPoint: CGPointMake(37.36, 21.31) controlPoint1: CGPointMake(37.28, 21.32) controlPoint2: CGPointMake(37.32, 21.31)];
                [bezier23Path addLineToPoint: CGPointMake(37.37, 21.31)];
                [bezier23Path addCurveToPoint: CGPointMake(37.43, 21.31) controlPoint1: CGPointMake(37.39, 21.31) controlPoint2: CGPointMake(37.41, 21.31)];
                [bezier23Path addCurveToPoint: CGPointMake(37.47, 21.32) controlPoint1: CGPointMake(37.45, 21.32) controlPoint2: CGPointMake(37.46, 21.32)];
                [bezier23Path addCurveToPoint: CGPointMake(37.5, 21.34) controlPoint1: CGPointMake(37.48, 21.33) controlPoint2: CGPointMake(37.49, 21.33)];
                [bezier23Path addCurveToPoint: CGPointMake(37.52, 21.36) controlPoint1: CGPointMake(37.51, 21.35) controlPoint2: CGPointMake(37.52, 21.35)];
                [bezier23Path addLineToPoint: CGPointMake(37.52, 21.36)];
                [bezier23Path addCurveToPoint: CGPointMake(37.56, 21.38) controlPoint1: CGPointMake(37.53, 21.37) controlPoint2: CGPointMake(37.55, 21.38)];
                [bezier23Path addCurveToPoint: CGPointMake(37.62, 21.4) controlPoint1: CGPointMake(37.57, 21.39) controlPoint2: CGPointMake(37.59, 21.39)];
                [bezier23Path addCurveToPoint: CGPointMake(37.71, 21.41) controlPoint1: CGPointMake(37.65, 21.41) controlPoint2: CGPointMake(37.68, 21.41)];
                [bezier23Path addCurveToPoint: CGPointMake(37.86, 21.41) controlPoint1: CGPointMake(37.75, 21.41) controlPoint2: CGPointMake(37.8, 21.41)];
                [bezier23Path addLineToPoint: CGPointMake(37.88, 21.41)];
                [bezier23Path addCurveToPoint: CGPointMake(38.06, 21.39) controlPoint1: CGPointMake(37.96, 21.41) controlPoint2: CGPointMake(38.01, 21.41)];
                [bezier23Path addCurveToPoint: CGPointMake(38.17, 21.34) controlPoint1: CGPointMake(38.11, 21.38) controlPoint2: CGPointMake(38.14, 21.36)];
                [bezier23Path addCurveToPoint: CGPointMake(38.23, 21.25) controlPoint1: CGPointMake(38.2, 21.32) controlPoint2: CGPointMake(38.21, 21.29)];
                [bezier23Path addCurveToPoint: CGPointMake(38.24, 21.13) controlPoint1: CGPointMake(38.24, 21.22) controlPoint2: CGPointMake(38.24, 21.18)];
                [bezier23Path addCurveToPoint: CGPointMake(38.21, 20.95) controlPoint1: CGPointMake(38.24, 21.05) controlPoint2: CGPointMake(38.23, 20.99)];
                [bezier23Path addCurveToPoint: CGPointMake(38.09, 20.9) controlPoint1: CGPointMake(38.19, 20.92) controlPoint2: CGPointMake(38.15, 20.9)];
                [bezier23Path addLineToPoint: CGPointMake(37.71, 20.9)];
                [bezier23Path addCurveToPoint: CGPointMake(37.64, 20.89) controlPoint1: CGPointMake(37.69, 20.9) controlPoint2: CGPointMake(37.67, 20.9)];
                [bezier23Path addCurveToPoint: CGPointMake(37.59, 20.87) controlPoint1: CGPointMake(37.62, 20.89) controlPoint2: CGPointMake(37.6, 20.88)];
                [bezier23Path addCurveToPoint: CGPointMake(37.55, 20.83) controlPoint1: CGPointMake(37.57, 20.86) controlPoint2: CGPointMake(37.56, 20.84)];
                [bezier23Path addCurveToPoint: CGPointMake(37.54, 20.76) controlPoint1: CGPointMake(37.54, 20.81) controlPoint2: CGPointMake(37.54, 20.79)];
                [bezier23Path addCurveToPoint: CGPointMake(37.59, 20.64) controlPoint1: CGPointMake(37.54, 20.7) controlPoint2: CGPointMake(37.56, 20.67)];
                [bezier23Path addCurveToPoint: CGPointMake(37.71, 20.61) controlPoint1: CGPointMake(37.63, 20.62) controlPoint2: CGPointMake(37.66, 20.61)];
                [bezier23Path addLineToPoint: CGPointMake(38.07, 20.61)];
                [bezier23Path addCurveToPoint: CGPointMake(38.14, 20.6) controlPoint1: CGPointMake(38.1, 20.61) controlPoint2: CGPointMake(38.12, 20.61)];
                [bezier23Path addCurveToPoint: CGPointMake(38.19, 20.57) controlPoint1: CGPointMake(38.16, 20.59) controlPoint2: CGPointMake(38.18, 20.58)];
                [bezier23Path addCurveToPoint: CGPointMake(38.22, 20.51) controlPoint1: CGPointMake(38.2, 20.55) controlPoint2: CGPointMake(38.21, 20.53)];
                [bezier23Path addCurveToPoint: CGPointMake(38.23, 20.4) controlPoint1: CGPointMake(38.22, 20.48) controlPoint2: CGPointMake(38.23, 20.45)];
                [bezier23Path addCurveToPoint: CGPointMake(38.22, 20.28) controlPoint1: CGPointMake(38.23, 20.35) controlPoint2: CGPointMake(38.23, 20.31)];
                [bezier23Path addCurveToPoint: CGPointMake(38.18, 20.2) controlPoint1: CGPointMake(38.21, 20.25) controlPoint2: CGPointMake(38.2, 20.22)];
                [bezier23Path addCurveToPoint: CGPointMake(38.08, 20.16) controlPoint1: CGPointMake(38.16, 20.18) controlPoint2: CGPointMake(38.12, 20.16)];
                [bezier23Path addCurveToPoint: CGPointMake(37.9, 20.15) controlPoint1: CGPointMake(38.04, 20.15) controlPoint2: CGPointMake(37.98, 20.15)];
                [bezier23Path addLineToPoint: CGPointMake(37.88, 20.15)];
                [bezier23Path addCurveToPoint: CGPointMake(37.73, 20.16) controlPoint1: CGPointMake(37.83, 20.15) controlPoint2: CGPointMake(37.78, 20.15)];
                [bezier23Path addCurveToPoint: CGPointMake(37.6, 20.19) controlPoint1: CGPointMake(37.68, 20.17) controlPoint2: CGPointMake(37.63, 20.18)];
                [bezier23Path addCurveToPoint: CGPointMake(37.56, 20.21) controlPoint1: CGPointMake(37.58, 20.2) controlPoint2: CGPointMake(37.57, 20.2)];
                [bezier23Path addCurveToPoint: CGPointMake(37.52, 20.23) controlPoint1: CGPointMake(37.55, 20.22) controlPoint2: CGPointMake(37.53, 20.23)];
                [bezier23Path addCurveToPoint: CGPointMake(37.48, 20.24) controlPoint1: CGPointMake(37.51, 20.24) controlPoint2: CGPointMake(37.49, 20.24)];
                [bezier23Path addCurveToPoint: CGPointMake(37.43, 20.24) controlPoint1: CGPointMake(37.46, 20.24) controlPoint2: CGPointMake(37.45, 20.24)];
                [bezier23Path addLineToPoint: CGPointMake(37.42, 20.24)];
                [bezier23Path addCurveToPoint: CGPointMake(37.31, 20.2) controlPoint1: CGPointMake(37.37, 20.24) controlPoint2: CGPointMake(37.34, 20.23)];
                [bezier23Path addCurveToPoint: CGPointMake(37.27, 20.1) controlPoint1: CGPointMake(37.28, 20.17) controlPoint2: CGPointMake(37.27, 20.14)];
                [bezier23Path addLineToPoint: CGPointMake(37.27, 20.1)];
                [bezier23Path addCurveToPoint: CGPointMake(37.31, 19.99) controlPoint1: CGPointMake(37.27, 20.06) controlPoint2: CGPointMake(37.29, 20.02)];
                [bezier23Path addCurveToPoint: CGPointMake(37.42, 19.91) controlPoint1: CGPointMake(37.33, 19.96) controlPoint2: CGPointMake(37.37, 19.93)];
                [bezier23Path addCurveToPoint: CGPointMake(37.61, 19.86) controlPoint1: CGPointMake(37.47, 19.89) controlPoint2: CGPointMake(37.53, 19.87)];
                [bezier23Path addCurveToPoint: CGPointMake(37.89, 19.84) controlPoint1: CGPointMake(37.69, 19.85) controlPoint2: CGPointMake(37.78, 19.84)];
                [bezier23Path addCurveToPoint: CGPointMake(38.22, 19.86) controlPoint1: CGPointMake(38.02, 19.84) controlPoint2: CGPointMake(38.13, 19.85)];
                [bezier23Path addCurveToPoint: CGPointMake(38.44, 19.94) controlPoint1: CGPointMake(38.31, 19.87) controlPoint2: CGPointMake(38.38, 19.9)];
                [bezier23Path addCurveToPoint: CGPointMake(38.56, 20.1) controlPoint1: CGPointMake(38.49, 19.98) controlPoint2: CGPointMake(38.53, 20.03)];
                [bezier23Path addCurveToPoint: CGPointMake(38.6, 20.36) controlPoint1: CGPointMake(38.58, 20.17) controlPoint2: CGPointMake(38.6, 20.25)];
                [bezier23Path addCurveToPoint: CGPointMake(38.59, 20.5) controlPoint1: CGPointMake(38.6, 20.41) controlPoint2: CGPointMake(38.6, 20.46)];
                [bezier23Path addCurveToPoint: CGPointMake(38.57, 20.61) controlPoint1: CGPointMake(38.58, 20.54) controlPoint2: CGPointMake(38.58, 20.58)];
                [bezier23Path addCurveToPoint: CGPointMake(38.54, 20.69) controlPoint1: CGPointMake(38.56, 20.64) controlPoint2: CGPointMake(38.55, 20.67)];
                [bezier23Path addCurveToPoint: CGPointMake(38.49, 20.75) controlPoint1: CGPointMake(38.52, 20.71) controlPoint2: CGPointMake(38.51, 20.73)];
                [bezier23Path addCurveToPoint: CGPointMake(38.53, 20.79) controlPoint1: CGPointMake(38.5, 20.76) controlPoint2: CGPointMake(38.52, 20.78)];
                [bezier23Path addCurveToPoint: CGPointMake(38.56, 20.86) controlPoint1: CGPointMake(38.54, 20.81) controlPoint2: CGPointMake(38.56, 20.83)];
                [bezier23Path addCurveToPoint: CGPointMake(38.58, 20.97) controlPoint1: CGPointMake(38.57, 20.89) controlPoint2: CGPointMake(38.58, 20.93)];
                [bezier23Path addCurveToPoint: CGPointMake(38.58, 21.15) controlPoint1: CGPointMake(38.58, 21.03) controlPoint2: CGPointMake(38.58, 21.08)];
                [bezier23Path closePath];
                bezier23Path.miterLimit = 4;

                [fillColor setFill];
                [bezier23Path fill];
            }
        }
    }
}

@end
