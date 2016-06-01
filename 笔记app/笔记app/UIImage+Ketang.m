//
//  main.m
//  简单的笔记
//
//  Created by 黄志伟 on 16/3/1.
//  Copyright © 2016年 黄志伟. All rights reserved.
//

#import "UIImage+Ketang.h"

@implementation UIImage (Ketang)

+(UIImage *)imageWithColor:(UIColor *)color andSize:(CGSize)size{
    UIGraphicsBeginImageContext(size);
    [color set];
    UIRectFill(CGRectMake(0, 0, size.width * [UIScreen mainScreen].scale, size.height * [UIScreen mainScreen].scale));
    UIImage* image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return image;
}

@end
