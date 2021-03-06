//
//  main.m
//  简单的笔记
//
//  Created by 黄志伟 on 16/3/1.
//  Copyright © 2016年 黄志伟. All rights reserved.
//

#import "KetangPersistentManager.h"

@implementation KetangPersistentManager

+(BOOL)saveDictionary:(NSDictionary *)dictionary{

    id array = [KetangPersistentManager getMoment];
    
    if (array != nil){
      
        NSMutableArray *moment = [NSMutableArray arrayWithArray:array];
        //继续存储
        [moment addObject:dictionary];
        return [KetangPersistentManager saveMoment:moment];
    }

    return NO;
    
}

+(id)getMoment{
    
    NSArray *docsDir = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *dirPath = docsDir[0];
    NSString *dataFilePath = [[NSString alloc] initWithString:[dirPath stringByAppendingPathComponent:@"moment"]];
    
    NSFileManager *manager = [NSFileManager defaultManager];
    
    
    @try {
        
//         NSException *e = [NSException exceptionWithName:@"error" reason:nil userInfo:nil];
//         @throw e;
        
        BOOL fileExist = [manager fileExistsAtPath:dataFilePath];
        
        if (fileExist) {
            NSArray *moment = [NSKeyedUnarchiver unarchiveObjectWithFile:dataFilePath];
            return moment;
        } else {
            NSArray *moment = [[NSArray alloc] init];
            return moment;
        }

    }
    @catch (NSException *exception) {
        return nil;
    }
    @finally {
        //什么都不做
    }
    
}

+(BOOL)saveMoment:(NSArray *)moment{
    NSArray *docsDir = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *dirPath = docsDir[0];
    NSString *dataFilePath = [[NSString alloc] initWithString:[dirPath stringByAppendingPathComponent:@"moment"]];
    
    @try {
        
//                 NSException *e = [NSException exceptionWithName:@"error" reason:nil userInfo:nil];
//                 @throw e;
        
        BOOL saveSuccess = [NSKeyedArchiver archiveRootObject:moment toFile:dataFilePath];

        return saveSuccess;
    }
    @catch (NSException *exception) {
        return NO;
    }
    @finally {
        //什么都不做
    }
}


@end
