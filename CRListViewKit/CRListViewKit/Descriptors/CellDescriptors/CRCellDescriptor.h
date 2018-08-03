//
//  CRCellDescriptor.h
//  CRListViewKit
//
//  Created by chuxiaolong on 2018/8/2.
//  Copyright © 2018年 chuxiaolong. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreGraphics/CoreGraphics.h>

@interface CRCellDescriptor : NSObject

@property (nonatomic, strong) Class cellClass;
@property (nonatomic, strong) id cellData;

@property (nonatomic, assign) BOOL allowCacheHeight;


@end
