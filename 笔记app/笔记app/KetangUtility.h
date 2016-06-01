//
//  main.m
//  简单的笔记
//
//  Created by 黄志伟 on 16/3/1.
//  Copyright © 2016年 黄志伟. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface KetangUtility : NSObject

+(NSNumber *)timestamp;
+(NSMutableDictionary *)dateThen:(NSNumber *)timestamp;

+(CGFloat)screenWidth;
+(CGFloat)screenHeight;

@end
