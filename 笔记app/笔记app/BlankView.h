//
//  main.m
//  简单的笔记
//
//  Created by 黄志伟 on 16/3/1.
//  Copyright © 2016年 黄志伟. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BlankView : UIView

+(BlankView *)blankViewWithText:(NSString *)text buttonText:(NSString *)buttonText target:(id)target action:(SEL)action;

@end
