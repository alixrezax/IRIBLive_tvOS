//
//  UIFont+Core
//  IRIB Live
//
//  Created by Alireza Khoddam on 10/20/15.
//

#import <UIKit/UIKit.h>

@interface UIFont (Core)

typedef NS_ENUM(NSInteger, KHFontWeight) {
    KHFontWeightRegular = 0,
    KHFontWeightBold = 1,
    KHFontWeightBlack = 2,
    KHFontWeightLight = 3,
    KHFontWeightUltraLight = 4,
};

+ (UIFont *)iranSansWithWeight:(KHFontWeight)weight size:(CGFloat)size;

@end
