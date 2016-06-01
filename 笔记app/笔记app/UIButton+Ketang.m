//
//  main.m
//  简单的笔记
//
//  Created by 黄志伟 on 16/3/1.
//  Copyright © 2016年 黄志伟. All rights reserved.
//

#import "UIButton+Ketang.h"
#import "KetangUtility.h"
#import "UIImage+Ketang.h"

@implementation UIButton (Ketang)

+(UIButton *)navigationButtonWithTitle:(NSString *)title target:(id)target action:(SEL)action{
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setTitle:title forState:UIControlStateNormal];
    [button setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    //文字颜色
    
    
    UIFont *buttonFont = [UIFont systemFontOfSize:14];
    button.titleLabel.font = buttonFont;

    
    //按钮样式即将改用图片
    //图片拉伸
    UIEdgeInsets stretch = UIEdgeInsetsMake(0, 8, 0, 8);
    UIImage *normalImage = [UIImage imageNamed:@"common_button_navigation_normal"];
    normalImage = [normalImage resizableImageWithCapInsets:stretch resizingMode:UIImageResizingModeStretch];
    [button setBackgroundImage:normalImage
                      forState:UIControlStateNormal];
    
    UIImage *activeImage = [UIImage imageNamed:@"common_button_navigation_active"];
    activeImage = [activeImage resizableImageWithCapInsets:stretch resizingMode:UIImageResizingModeStretch];
    [button setBackgroundImage:activeImage
                      forState:UIControlStateHighlighted];
    
    
    CGSize buttonSize = CGSizeMake([KetangUtility screenWidth], 29);
    NSDictionary *buttonAttributes = [NSDictionary dictionaryWithObjectsAndKeys:button.titleLabel.font,NSFontAttributeName,nil];
    
    CGRect buttonRect = [title boundingRectWithSize:buttonSize
                                            options:kNilOptions
                                         attributes:buttonAttributes
                                            context:nil];
    
    //按钮宽度计算方法改变，因为左侧留白时15，而不是8
    CGFloat plannedbuttonWidth = buttonRect.size.width+16;
    if (plannedbuttonWidth<55) {
        plannedbuttonWidth = 55;
    }
    [button setFrame:CGRectMake(0,0, plannedbuttonWidth, 29)];
    
    [button addTarget:target
               action:action
     forControlEvents:UIControlEventTouchUpInside];
    
    return button;
 
}

+(UIButton *)navigationBackButtonWithTitle:(NSString *)title target:(id)target action:(SEL)action{

    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setTitle:title forState:UIControlStateNormal];
    [button setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    //文字颜色
    
    
    UIFont *buttonFont = [UIFont systemFontOfSize:14];
    button.titleLabel.font = buttonFont;
    //文字左侧多留白
    UIEdgeInsets padding = UIEdgeInsetsMake(0, 7, 0, 0);
    button.contentEdgeInsets = padding;
    
    //按钮样式即将改用图片
    //图片拉伸
    UIEdgeInsets stretch = UIEdgeInsetsMake(0, 15, 0, 8);
    UIImage *normalImage = [UIImage imageNamed:@"common_button_back_normal"];
    normalImage = [normalImage resizableImageWithCapInsets:stretch resizingMode:UIImageResizingModeStretch];
    [button setBackgroundImage:normalImage
                      forState:UIControlStateNormal];
    
    UIImage *activeImage = [UIImage imageNamed:@"common_button_back_active"];
    activeImage = [activeImage resizableImageWithCapInsets:stretch resizingMode:UIImageResizingModeStretch];
    [button setBackgroundImage:activeImage
                      forState:UIControlStateHighlighted];

    
    CGSize buttonSize = CGSizeMake([KetangUtility screenWidth], 29);
    NSDictionary *buttonAttributes = [NSDictionary dictionaryWithObjectsAndKeys:button.titleLabel.font,NSFontAttributeName,nil];
    
    CGRect buttonRect = [title boundingRectWithSize:buttonSize
                                            options:kNilOptions
                                         attributes:buttonAttributes
                                            context:nil];
    
    //按钮宽度计算方法改变，因为左侧留白时15，而不是8
    CGFloat plannedbuttonWidth = buttonRect.size.width+23;
    if (plannedbuttonWidth<55) {
        plannedbuttonWidth = 55;
    }
    [button setFrame:CGRectMake(0,0, plannedbuttonWidth, 29)];
    
    [button addTarget:target
               action:action
     forControlEvents:UIControlEventTouchUpInside];
    
    return button;

}

+(UIButton *)contentButtonWithTitle:(NSString *)title target:(id)target action:(SEL)action{

    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setTitle:title forState:UIControlStateNormal];
    [button setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
    UIFont *buttonFont = [UIFont systemFontOfSize:14];
    button.titleLabel.font = buttonFont;
    button.layer.cornerRadius = 5;
    button.layer.borderWidth = 1;
    button.layer.borderColor = [UIColor grayColor].CGColor;
    button.layer.masksToBounds = YES;
    
    CGSize buttonSize = CGSizeMake([KetangUtility screenWidth], 29);
    NSDictionary *buttonAttributes = [NSDictionary dictionaryWithObjectsAndKeys:button.titleLabel.font,NSFontAttributeName,nil];
    
    CGRect buttonRect = [title boundingRectWithSize:buttonSize
                                                     options:kNilOptions
                                                  attributes:buttonAttributes
                                                     context:nil];
    CGFloat plannedbuttonWidth = buttonRect.size.width+16;
    if (plannedbuttonWidth<55) {
        plannedbuttonWidth = 55;
    }
    [button setFrame:CGRectMake(0,0, plannedbuttonWidth, 29)];
    
    UIImage *activeImage = [UIImage imageWithColor:[UIColor grayColor] andSize:button.frame.size];
    
    [button setBackgroundImage:activeImage
                      forState:UIControlStateHighlighted];
    [button setTitleColor:[UIColor whiteColor]
                 forState:UIControlStateHighlighted];
    
    [button addTarget:target
                    action:action
          forControlEvents:UIControlEventTouchUpInside];
    
    return button;


}
@end
