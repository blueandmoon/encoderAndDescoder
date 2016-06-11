//
//  Person.m
//  encoderAndDescoder
//
//  Created by 李根 on 16/6/11.
//  Copyright © 2016年 ligen. All rights reserved.
//

#import "Person.h"
#import <objc/runtime.h>
#import "SerializeKit.h"

//  是否使用通用的encode/decode代码一次性encode/decode
#define USING_ENCODE_KIT    1

@implementation Person

SERIALIZE_CODER_DECODER();

SERIALIZE_COPY_WITH_ZONE();

SERIALIZE_DESCRIPTION();














@end
