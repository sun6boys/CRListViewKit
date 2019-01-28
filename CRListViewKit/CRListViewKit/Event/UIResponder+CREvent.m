//
//  UIResponder+Event.m
//  CRListViewKit
//
//  Created by chuxiaolong on 2018/8/7.
//  Copyright © 2018年 chuxiaolong. All rights reserved.
//

#import "UIResponder+CREvent.h"
#import <objc/runtime.h>

#import "CRUIEvent.h"

static void * kUIResponder_Event_HandlerStorageKey = &kUIResponder_Event_HandlerStorageKey;

@implementation UIResponder (CREvent)

- (void)sendEvent:(CRUIEvent *)event
{
    if(event.eventName.length == 0)
        return;
    
    if([self hasRegisterEventName:event.eventName] == NO){
        [[self nextResponder] sendEvent:event];
    }
    
    CREventForwardCallBack callBackHandler = ^(BOOL forward, UIResponder *source){
        if(forward){
            [[self nextResponder] sendEvent:event];
        }
    };
    
    CREventHandler eventHandler = [self eventHandlerForEventName:event.eventName];
    eventHandler ? eventHandler(event,callBackHandler) : nil;
}

- (void)registerEventHandler:(CREventHandler)handler forEventName:(NSString *)eventName
{
    NSMutableDictionary *eventHandlerStorage = objc_getAssociatedObject(self, kUIResponder_Event_HandlerStorageKey);
    if(eventHandlerStorage == nil){
        eventHandlerStorage = [[NSMutableDictionary alloc] init];
        objc_setAssociatedObject(self, kUIResponder_Event_HandlerStorageKey, eventHandlerStorage, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    }
    eventHandlerStorage[eventName] = handler;
}

- (void)unRegisterEventHandlerForEventName:(NSString *)eventName
{
    NSMutableDictionary *eventHandlerStorage = objc_getAssociatedObject(self, kUIResponder_Event_HandlerStorageKey);
    eventHandlerStorage[eventName] = nil;
}

- (BOOL)hasRegisterEventName:(NSString *)eventName
{
    NSMutableDictionary *eventHandlerStorage = objc_getAssociatedObject(self, kUIResponder_Event_HandlerStorageKey);
    if(eventHandlerStorage == nil)
        return NO;
    
    CREventHandler handler = eventHandlerStorage[eventName];
    return handler ? YES : NO;
}

- (CREventHandler)eventHandlerForEventName:(NSString *)eventName
{
    NSMutableDictionary *eventHandlerStorage = objc_getAssociatedObject(self, kUIResponder_Event_HandlerStorageKey);
    return eventHandlerStorage[eventName];
}
@end
