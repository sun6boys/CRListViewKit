//
//  UIResponder+Event.h
//  CRListViewKit
//
//  Created by chuxiaolong on 2018/8/7.
//  Copyright © 2018年 chuxiaolong. All rights reserved.
//

#import <UIKit/UIKit.h>

@class CRUIEvent;
@interface UIResponder (Event)

- (void)handleUIEvent:(CRUIEvent *)event;

@end
