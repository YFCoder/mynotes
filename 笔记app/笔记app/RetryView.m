//
//  main.m
//  简单的笔记
//
//  Created by 黄志伟 on 16/3/1.
//  Copyright © 2016年 黄志伟. All rights reserved.
//

#import "RetryView.h"
#import "KetangUtility.h"
#import "UIButton+Ketang.h"

@implementation RetryView
+(RetryView *)retryViewWithText:(NSString *)text buttonText:(NSString *)buttonText target:(id)target action:(SEL)action{

    RetryView *retryView = [[RetryView alloc] initWithFrame:CGRectMake(0, 64, [KetangUtility screenWidth], [KetangUtility screenHeight]-64)];
    UILabel *retryLabel = [[UILabel alloc] initWithFrame:CGRectMake(([KetangUtility screenWidth]-100)/2, (retryView.frame.size.height-100)/2-20, 100, 100)];
    retryLabel.text = text;
    retryLabel.textColor =[UIColor grayColor];
    retryLabel.textAlignment = NSTextAlignmentCenter;
    retryLabel.font = [UIFont systemFontOfSize:17];
    [retryView addSubview:retryLabel];
    
    UIButton *retryButton = [UIButton contentButtonWithTitle:buttonText
                                                      target:target
                                                      action:action];
    
    CGFloat retryButtonX = ([KetangUtility screenWidth] - retryButton.frame.size.width)/2;
    
    CGFloat retryButtonY = (retryView.frame.size.height - retryButton.frame.size.height)/2 + 20;
    
    
    [retryButton setFrame:CGRectMake(retryButtonX, retryButtonY, retryButton.frame.size.width, retryButton.frame.size.height)];
    
    [retryView addSubview:retryButton];
    
    return retryView;


}
@end
