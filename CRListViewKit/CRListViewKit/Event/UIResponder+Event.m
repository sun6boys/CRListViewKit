//
//  UIResponder+Event.m
//  CRListViewKit
//
//  Created by chuxiaolong on 2018/8/7.
//  Copyright © 2018年 chuxiaolong. All rights reserved.
//

#import "UIResponder+Event.h"

@implementation UIResponder (Event)

- (void)handleUIEvent:(CRUIEvent *)event
{
    [[self nextResponder] handleUIEvent:event];
}

@end
