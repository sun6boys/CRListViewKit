//
//  CRListViewBaseDataSource.h
//  CRListViewKit
//
//  Created by chuxiaolong on 2018/8/6.
//  Copyright © 2018年 chuxiaolong. All rights reserved.
//

#import <Foundation/Foundation.h>

@class CRCellDescriptor,CRListViewSectionInfo;
@interface CRListViewBaseDataSource : NSObject

@property (nonatomic, assign, readonly) NSUInteger numberOfSections;
@property (nonatomic, strong, readonly) NSMutableArray<CRListViewSectionInfo *> *items;

- (CRCellDescriptor *)cellDescriptorAtIndexPath:(NSIndexPath *)indexPath;
- (void)removeCellDescriptorAtIndexPath:(NSIndexPath *)indexPath;

@end
