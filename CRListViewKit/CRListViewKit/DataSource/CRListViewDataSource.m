//
//  CRListViewDataSource.m
//  CRListViewKit
//
//  Created by chuxiaolong on 2018/8/2.
//  Copyright © 2018年 chuxiaolong. All rights reserved.
//

#import "CRListViewDataSource.h"

#import "CRListViewSectionInfo.h"
#import "CRCellDescriptor.h"
#import "CRBaseCollectionViewCell.h"
#import "CRBaseTableViewCell.h"

@interface CRListViewDataSource ()

@property (nonatomic, strong, readwrite) NSMutableArray<CRListViewSectionInfo *> *items;
@end

@implementation CRListViewDataSource

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

//To be implemented by subclasses…
- (void)registerTableViewItemsForTableView:(UITableView *)tableView{}
- (void)registerCollectionViewItemsForCollectionView:(UICollectionView *)collectionView{}


#pragma mark - UICollectionViewDataSource
- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return [self numberOfSections];
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    CRListViewSectionInfo *sectionInfo = [self sectionInfoAtSection:section];
    return [sectionInfo numberOfRows];
}

- (__kindof UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    CRCellDescriptor *cellDescriptor = [self cellDescriptorAtIndexPath:indexPath];
    CRBaseCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:[cellDescriptor.cellClass description] forIndexPath:indexPath];
    if(cell != nil){
        cell.cellDescriptor = cellDescriptor;
        return cell;
    }
    return [[CRBaseCollectionViewCell alloc] init];
}

#pragma mark - UITableViewDataSource
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return [self numberOfSections];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    CRListViewSectionInfo *sectionInfo = [self sectionInfoAtSection:section];
    return [sectionInfo numberOfRows];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    CRCellDescriptor *cellDescriptor = [self cellDescriptorAtIndexPath:indexPath];
    CRBaseTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:[cellDescriptor.cellClass description] forIndexPath:indexPath];
    if(cell != nil){
        cell.cellDescriptor = cellDescriptor;
        return cell;
    }
    return [[UITableViewCell alloc] init];
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
