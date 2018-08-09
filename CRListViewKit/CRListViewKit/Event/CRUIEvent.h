//
//  CRUIEvent.h
//  CRListViewKit
//
//  Created by chuxiaolong on 2018/8/7.
//  Copyright © 2018年 chuxiaolong. All rights reserved.
//

#import <Foundation/Foundation.h>

@class UIResponder;
@interface CRUIEvent : NSObject

@property (nonatomic, copy) NSString *eventName;
@property (nonatomic, strong) id object;

@property (nonatomic, assign) BOOL dead;

@property (nonatomic, weak) UIResponder *source;

- (void)send;
- (void)sendForm:(UIResponder *)source;
- (void)sendForm:(UIResponder *)source afterDelay:(NSTimeInterval)delay;
@end
