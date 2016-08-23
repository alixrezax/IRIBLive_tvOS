//
//  UIFont+Core.m
//  IRIB Live
//
//  Created by Alireza Khoddam on 10/20/15.
//  Copyright © 2015 Farzad Nazifi. All rights reserved.
//

#import "UIFont+Core.h"

@implementation UIFont (Core)

NSString*  FontForWeight(KHFontWeight fontWeight) {
    NSDictionary *fontsDictionary = @{
                                      @(KHFontWeightRegular): @"IRAN-sans",
                                      @(KHFontWeightBold): @"IRAN-SansBoldBold",
                                      @(KHFontWeightBlack): @"IRAN-SansBlack",
                                      @(KHFontWeightLight): @"IRANSans-Light",
                                      @(KHFontWeightUltraLight): @"IRANSansUltraLight"
                                      };
    return fontsDictionary[@(fontWeight)];
}

+ (UIFont *)iranSansWithWeight:(KHFontWeight)weight size:(CGFloat)size{
    UIFont *font = [UIFont fontWithName:FontForWeight(weight) size:size];
    
    return font;
}

@end
