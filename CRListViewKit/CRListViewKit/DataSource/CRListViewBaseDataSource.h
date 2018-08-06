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

/// The number of sections in this data source.
@property (nonatomic, assign, readonly) NSUInteger numberOfSections;
/// The items represented by this data source.
@property (nonatomic, strong, readonly) NSMutableArray<CRListViewSectionInfo *> *items;

/// Find/Remove/Insert/Add an CRCellDescriptor at the specified index path.
- (CRCellDescriptor *)cellDescriptorAtIndexPath:(NSIndexPath *)indexPath;
- (void)removeCellDescriptorAtIndexPath:(NSIndexPath *)indexPath;
- (void)insertCellDescriptor:(CRCellDescriptor *)cellDescriptor atIndexPath:(NSIndexPath *)indexPath;
- (void)addCellDescriptor:(CRCellDescriptor *)cellDescriptor atSection:(NSUInteger)section;


/// Find/Remove/Insert/Add an CRCellDescriptor at the specified index.
- (void)addSectionInfo:(CRListViewSectionInfo *)sectionInfo;
- (void)insertSectionInfo:(CRListViewSectionInfo *)sectionInfo atIndexPath:(NSIndexPath *)indexPath;
- (void)removeSectionInfo:(CRListViewSectionInfo *)sectionInfo;
- (CRListViewSectionInfo *)sectionInfoAtSection:(NSUInteger)section;
- (void)clearAllSectionInfos;

@end
