//
//  CRListViewBaseDataSource.m
//  CRListViewKit
//
//  Created by chuxiaolong on 2018/8/6.
//  Copyright © 2018年 chuxiaolong. All rights reserved.
//

#import "CRListViewBaseDataSource.h"

@interface CRListViewBaseDataSource()

@property (nonatomic, strong, readwrite) NSMutableArray<CRListViewSectionInfo *> *items;
@end

@implementation CRListViewBaseDataSource

#pragma mark - public methods
- (CRCellDescriptor *)cellDescriptorAtIndexPath:(NSIndexPath *)indexPath
{
    return nil;
}

- (void)removeCellDescriptorAtIndexPath:(NSIndexPath *)indexPath
{
    
}

- (void)insertCellDescriptor:(CRCellDescriptor *)cellDescriptor atIndexPath:(NSIndexPath *)indexPath
{
    
}

- (void)addCellDescriptor:(CRCellDescriptor *)cellDescriptor atSection:(NSUInteger)section
{
    
}

- (void)addSectionInfo:(CRListViewSectionInfo *)sectionInfo
{
    
}

- (void)insertSectionInfo:(CRListViewSectionInfo *)sectionInfo atIndexPath:(NSIndexPath *)indexPath
{
    
}

- (void)removeSectionInfo:(CRListViewSectionInfo *)sectionInfo
{
    [self.items removeObject:sectionInfo];
}

- (CRListViewSectionInfo *)sectionInfoAtSection:(NSUInteger)section
{
    if(section >= self.items.count)
        return nil;
    
    return self.items[section];
}

- (void)clearAllSectionInfos
{
    [self.items removeAllObjects];
}

#pragma mark - getters
- (NSMutableArray<CRListViewSectionInfo *> *)items
{
    if (_items == nil) {
        _items = [[NSMutableArray alloc] init];
    }
    return _items;
}

@end
