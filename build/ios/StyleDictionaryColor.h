
//
// StyleDictionaryColor.h
//
// Do not edit directly
// Generated on Thu, 07 Jan 2021 19:11:52 GMT
//

#import <UIKit/UIKit.h>


typedef NS_ENUM(NSInteger, StyleDictionaryColorName) {
ColorBasePrimaryLight,
ColorBasePrimaryMidtone,
ColorBasePrimaryAccent,
ColorBasePrimaryDim,
ColorBasePrimaryDark,
ColorBaseWarningLight,
ColorBaseWarningMidtone,
ColorBaseWarningAccent,
ColorBaseWarningDim,
ColorBaseWarningDark,
ColorBaseErrorLight,
ColorBaseErrorMidtone,
ColorBaseErrorAccent,
ColorBaseErrorDim,
ColorBaseErrorDark,
ColorBaseSuccessLight,
ColorBaseSuccessMidtone,
ColorBaseSuccessAccent,
ColorBaseSuccessDim,
ColorBaseSuccessDark,
ColorBaseBlack,
ColorBaseWhite
};

@interface StyleDictionaryColor : NSObject
+ (NSArray *)values;
+ (UIColor *)color:(StyleDictionaryColorName)color;
@end
