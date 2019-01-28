//
//  UIResponder+Event.h
//  CRListViewKit
//
//  Created by chuxiaolong on 2018/8/7.
//  Copyright © 2018年 chuxiaolong. All rights reserved.
//

#import <UIKit/UIKit.h>

@class CRUIEvent;
typedef void (^CREventForwardCallBack)(BOOL forward, UIResponder *source);
typedef void (^CREventHandler)(CRUIEvent *event, CREventForwardCallBack forwardCallBack);

@interface UIResponder (CREvent)

- (void)sendEvent:(CRUIEvent *)event;

- (void)registerEventHandler:(CREventHandler)handler forEventName:(NSString *)eventName;
- (void)unRegisterEventHandlerForEventName:(NSString *)eventName;

- (BOOL)hasRegisterEventName:(NSString *)eventName;
- (CREventHandler)eventHandlerForEventName:(NSString *)eventName;
@end
