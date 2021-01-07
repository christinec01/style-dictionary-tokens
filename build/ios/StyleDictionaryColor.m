
//
// StyleDictionaryColor.m
//
// Do not edit directly
// Generated on Thu, 07 Jan 2021 19:11:52 GMT
//

#import "StyleDictionaryColor.h"


@implementation StyleDictionaryColor

+ (UIColor *)color:(StyleDictionaryColorName)colorEnum{
  return [[self values] objectAtIndex:colorEnum];
}

+ (NSArray *)values {
  static NSArray* colorArray;
  static dispatch_once_t onceToken;

  dispatch_once(&onceToken, ^{
    colorArray = @[
[UIColor colorWithRed:0.902f green:0.902f blue:0.988f alpha:1.000f],
[UIColor colorWithRed:0.659f green:0.663f blue:0.988f alpha:1.000f],
[UIColor colorWithRed:0.290f green:0.290f blue:0.957f alpha:1.000f],
[UIColor colorWithRed:0.184f green:0.184f blue:0.757f alpha:1.000f],
[UIColor colorWithRed:0.129f green:0.129f blue:0.537f alpha:1.000f],
[UIColor colorWithRed:0.988f green:0.976f blue:0.910f alpha:1.000f],
[UIColor colorWithRed:1.000f green:0.914f blue:0.561f alpha:1.000f],
[UIColor colorWithRed:1.000f green:0.792f blue:0.380f alpha:1.000f],
[UIColor colorWithRed:0.910f green:0.549f blue:0.192f alpha:1.000f],
[UIColor colorWithRed:0.859f green:0.392f blue:0.078f alpha:1.000f],
[UIColor colorWithRed:0.969f green:0.890f blue:0.886f alpha:1.000f],
[UIColor colorWithRed:0.996f green:0.667f blue:0.592f alpha:1.000f],
[UIColor colorWithRed:1.000f green:0.427f blue:0.314f alpha:1.000f],
[UIColor colorWithRed:0.827f green:0.263f blue:0.200f alpha:1.000f],
[UIColor colorWithRed:0.576f green:0.204f blue:0.184f alpha:1.000f],
[UIColor colorWithRed:0.910f green:0.976f blue:0.937f alpha:1.000f],
[UIColor colorWithRed:0.592f green:0.910f blue:0.722f alpha:1.000f],
[UIColor colorWithRed:0.165f green:0.737f blue:0.478f alpha:1.000f],
[UIColor colorWithRed:0.039f green:0.537f blue:0.298f alpha:1.000f],
[UIColor colorWithRed:0.063f green:0.329f blue:0.196f alpha:1.000f],
[UIColor colorWithRed:0.063f green:0.094f blue:0.125f alpha:1.000f],
[UIColor colorWithRed:1.000f green:1.000f blue:1.000f alpha:1.000f]
    ];
  });

  return colorArray;
}

@end
