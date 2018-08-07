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

@implementation CRListViewDataSource

#pragma mark - public methods
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


@end
