//
//  UIColor+AppAdditions.m
//  Palm Landscaping Services
//
//  Created by Julio Lopez on 5/5/15.
//  Copyright (c) 2015 yottalore. All rights reserved.
//

#import "UIColor+AppAdditions.h"

@implementation UIColor (AppAdditions)

//Application color class methods
+ (UIColor *) appBGColor{
    
    return [UIColor colorWithRed:188/255.0 green:254/255.0 blue:180/255.0 alpha:1.0];
}

+ (UIColor *) tableViewCellColor{
    
    return [UIColor colorWithRed:188/255.0 green:254/255.0 blue:180/255.0 alpha:0.5];
}
+ (UIColor *) appFlairColor{
    
    return [UIColor colorWithRed:255/255.0 green:128/255.0 blue:0/255.0 alpha:0.2];
}

@end
