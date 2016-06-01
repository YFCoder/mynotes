//
//  main.m
//  简单的笔记
//
//  Created by 黄志伟 on 16/3/1.
//  Copyright © 2016年 黄志伟. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BaseViewController : UIViewController<UIGestureRecognizerDelegate>

-(void)setSingleLineTitle:(NSString *)title;
-(void)showLoading;
-(void)hideLoading;

-(void)showModalLoading;
-(void)hideModalLoading;

-(void)showAlertWithTitle:(NSString *)title message:(NSString *)message buttonText:(NSString *)buttonText;

-(void)setBackButton;
-(void)setLeftNavigationButtonWithTitle:(NSString *)title target:(id)target action:(SEL)action;
-(void)setRightNavigationButtonWithTitle:(NSString *)title target:(id)target action:(SEL)action;



@end
