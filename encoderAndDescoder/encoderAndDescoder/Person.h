//
//  Person.h
//  encoderAndDescoder
//
//  Created by 李根 on 16/6/11.
//  Copyright © 2016年 ligen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Biology.h"

@interface Person : Biology<NSCopying, NSCoding>
{
    NSString *_father;
}

@property(nonatomic, copy)NSString *name;
@property(nonatomic, assign)NSInteger age;


@end
