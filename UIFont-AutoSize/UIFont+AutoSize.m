//
//  UIFont+AutoSize.m
//  Mobile-iOS
//
//  Created by AL on 2016/3/30.
//  Copyright © 2016年 AL. All rights reserved.
//

#import "UIFont+AutoSize.h"


#define IPHONE5_INCREMENT -1

#define IPHONE6_INCREMENT 0

#define IPHONE6PLUS_INCREMENT 0.9
@implementation UIFont (Autosize)

+(void)load{
    
    Method newMethod = class_getClassMethod([self class], @selector(adjustFont:));
    Method method = class_getClassMethod([self class], @selector(systemFontOfSize:));
    method_exchangeImplementations(newMethod, method);
    
    Method newBoldMethod = class_getClassMethod([self class], @selector(adjustBoldFont:));
    Method boldMethod = class_getClassMethod([self class], @selector(boldSystemFontOfSize:));
    method_exchangeImplementations(newBoldMethod, boldMethod);
}


+(UIFont *)adjustFont:(CGFloat)fontSize{
    
    NSString *iphoneSize = [[NSUserDefaults standardUserDefaults] objectForKey:@"iphonesize"];
    if (!iphoneSize.length) {
        if ([[UIScreen mainScreen] bounds].size.height > 735.0f) iphoneSize = @"xxx";
        else if ([[UIScreen mainScreen] bounds].size.height > 666.0f) iphoneSize = @"xx";
        else iphoneSize = @"x";
        [[[NSUserDefaults standardUserDefaults] objectForKey:@"iphonesize"] setObject:iphoneSize forKey:@"iphonesize"];
    }
    
    UIFont *newFont=nil;
    if ([iphoneSize isEqual:@"xx"]){
        newFont = [UIFont adjustFont:fontSize + IPHONE6_INCREMENT];
    }else if ([iphoneSize isEqual:@"xxx"]){
        newFont = [UIFont adjustFont:fontSize + IPHONE6PLUS_INCREMENT];
    }else{
        newFont = [UIFont adjustFont:fontSize + IPHONE5_INCREMENT];
    }
    return newFont;
}
+(UIFont *)adjustBoldFont:(CGFloat)fontSize{
    NSString *iphoneSize = [[NSUserDefaults standardUserDefaults] objectForKey:@"iphonesize"];
    if (!iphoneSize.length) {
        if ([[UIScreen mainScreen] bounds].size.height > 735.0f) iphoneSize = @"xxx";
        else if ([[UIScreen mainScreen] bounds].size.height > 666.0f) iphoneSize = @"xx";
        else iphoneSize = @"x";
        [[[NSUserDefaults standardUserDefaults] objectForKey:@"iphonesize"] setObject:iphoneSize forKey:@"iphonesize"];
    }
    
    UIFont *newFont=nil;
    if ([iphoneSize isEqual:@"xx"]){
        newFont = [UIFont adjustBoldFont:fontSize + IPHONE6_INCREMENT];
    }else if ([iphoneSize isEqual:@"xxx"]){
        newFont = [UIFont adjustBoldFont:fontSize + IPHONE6PLUS_INCREMENT];
    }else{
        newFont = [UIFont adjustBoldFont:fontSize + IPHONE5_INCREMENT];
    }
    return newFont;
}
+(UIFont *)sysAdjusFout:(CGFloat)ALFout{
    
    NSString *iphoneSize = [[NSUserDefaults standardUserDefaults] objectForKey:@"iphonesize"];
    if (!iphoneSize.length) {
        if ([[UIScreen mainScreen] bounds].size.height > 735.0f) iphoneSize = @"xxx";
        else if ([[UIScreen mainScreen] bounds].size.height > 666.0f) iphoneSize = @"xx";
        else iphoneSize = @"x";
        [[[NSUserDefaults standardUserDefaults] objectForKey:@"iphonesize"] setObject:iphoneSize forKey:@"iphonesize"];
    }
    
    UIFont *newFout = nil;
    if ([iphoneSize isEqual:@"xx"]) {
        newFout = [UIFont systemFontOfSize:TXFoutsize - IPHONE6_INCREMENT];
    }
    else if ([iphoneSize isEqual:@"xxx"]){
        newFout = [UIFont systemFontOfSize:TXFoutsize -IPHONE6PLUS_INCREMENT];
    }
    else{
        newFout = [UIFont systemFontOfSize:TXFoutsize -IPHONE5_INCREMENT];
    }
    return newFout;
}

@end
