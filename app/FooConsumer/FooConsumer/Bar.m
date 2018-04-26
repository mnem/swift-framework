//
//  Bar.m
//  FooConsumer
//
//  Created by David Wagner on 26/04/2018.
//  Copyright © 2018 David Wagner. All rights reserved.
//

#import "Bar.h"
#import <DynamicFoo/DynamicFoo-Swift.h>

@implementation Bar

+ (void)load
{
    NSLog(@"%@", [Foo describeState]);
}

@end
