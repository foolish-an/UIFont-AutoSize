//
//  UIFont+AutoSize.h
//  Mobile-iOS
//
//  Created by AL on 2016/3/30.
//  Copyright © 2016年 AL. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <objc/runtime.h>

@interface UIFont (AutoSize)


/// 不使用字体适配的地方可以调用此方法
/// @param ALFout 字体大小
+(UIFont *)sysAdjusFout:(CGFloat)ALFout;

@end
