//
//  CRUIEvent.m
//  CRListViewKit
//
//  Created by chuxiaolong on 2018/8/7.
//  Copyright © 2018年 chuxiaolong. All rights reserved.
//

#import "CRUIEvent.h"
#import "UIResponder+Event.h"

@implementation CRUIEvent


#pragma mark - public methods
- (void)send
{
    
}

- (void)sendForm:(UIResponder *)source
{
    [source handleUIEvent:self];
}

@end
