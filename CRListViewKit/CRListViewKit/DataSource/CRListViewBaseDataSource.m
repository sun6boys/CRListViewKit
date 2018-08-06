//
//  CRListViewBaseDataSource.m
//  CRListViewKit
//
//  Created by chuxiaolong on 2018/8/6.
//  Copyright © 2018年 chuxiaolong. All rights reserved.
//

#import "CRListViewBaseDataSource.h"
#import <UIKit/UIKit.h>
#import "CRListViewSectionInfo.h"

@interface CRListViewBaseDataSource()

@property (nonatomic, strong, readwrite) NSMutableArray<CRListViewSectionInfo *> *items;
@end

@implementation CRListViewBaseDataSource

#pragma mark - public methods
- (CRCellDescriptor *)cellDescriptorAtIndexPath:(NSIndexPath *)indexPath
{
    if(indexPath.section >= self.items.count)
        return nil;
    
    CRListViewSectionInfo *sectionInfo = self.items[indexPath.section];
    return [sectionInfo cellDescriptorAtIndex:indexPath.row];
}

- (void)removeCellDescriptorAtIndexPath:(NSIndexPath *)indexPath
{
    if(indexPath.section >= self.items.count)
        return;
    
    CRListViewSectionInfo *sectionInfo = self.items[indexPath.section];
    [sectionInfo removeCellDescriptorAtIndex:indexPath.row];
}

- (void)insertCellDescriptor:(CRCellDescriptor *)cellDescriptor atIndexPath:(NSIndexPath *)indexPath
{
    if(indexPath.section >= self.items.count)
        return;
    
    CRListViewSectionInfo *sectionInfo = self.items[indexPath.section];
    [sectionInfo insertCellDescriptor:cellDescriptor atIndex:indexPath.row];
}

- (void)addCellDescriptor:(CRCellDescriptor *)cellDescriptor atSection:(NSUInteger)section
{
    if(section >= self.items.count)
        return;
    
    CRListViewSectionInfo *sectionInfo = self.items[section];
    [sectionInfo insertCellDescriptor:cellDescriptor atIndex:sectionInfo.numberOfRows];
}

//handle sectionInfo
- (void)addSectionInfo:(CRListViewSectionInfo *)sectionInfo
{
    if(sectionInfo == nil)
        return;
    
    [self.items addObject:sectionInfo];
}

- (void)insertSectionInfo:(CRListViewSectionInfo *)sectionInfo atSection:(NSUInteger)section;
{
    if(section >= self.items.count || sectionInfo == nil)
        return;
    
    [self.items insertObject:sectionInfo atIndex:section];
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

- (NSUInteger)numberOfSections
{
    return self.items.count;
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
