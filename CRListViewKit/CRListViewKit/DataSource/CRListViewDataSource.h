//
//  CRListViewDataSource.h
//  CRListViewKit
//
//  Created by chuxiaolong on 2018/8/2.
//  Copyright © 2018年 chuxiaolong. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@class CRCellDescriptor,CRListViewSectionInfo;
@interface CRListViewDataSource : NSObject<UICollectionViewDataSource,UITableViewDataSource>

/// The number of sections in this data source.
@property (nonatomic, assign, readonly) NSUInteger numberOfSections;
/// The items represented by this data source.
@property (nonatomic, strong, readonly) NSMutableArray<CRListViewSectionInfo *> *items;

/// Find/Remove/Insert/Add an CRCellDescriptor at the specified index path.
- (CRCellDescriptor *)cellDescriptorAtIndexPath:(NSIndexPath *)indexPath;
- (void)removeCellDescriptorAtIndexPath:(NSIndexPath *)indexPath;
- (void)insertCellDescriptor:(CRCellDescriptor *)cellDescriptor atIndexPath:(NSIndexPath *)indexPath;
- (void)addCellDescriptor:(CRCellDescriptor *)cellDescriptor atSection:(NSUInteger)section;


/// Find/Remove/Insert/Add an CRListViewSectionInfo at the specified index.
- (void)addSectionInfo:(CRListViewSectionInfo *)sectionInfo;
- (void)insertSectionInfo:(CRListViewSectionInfo *)sectionInfo atSection:(NSUInteger)section;
- (void)removeSectionInfo:(CRListViewSectionInfo *)sectionInfo;
- (CRListViewSectionInfo *)sectionInfoAtSection:(NSUInteger)section;
- (void)clearAllSectionInfos;

//To be implemented by subclasses…
- (void)registerTableViewItemsForTableView:(UITableView *)tableView;
- (void)registerCollectionViewItemsForCollectionView:(UICollectionView *)collectionView;

@end


@interface CRListViewDataSource (TableViewRegister)

- (void)registerCellClass:(Class )cellClass forTableView:(UITableView *)tableView;
- (void)registerCellNibWithClass:(Class)cellClass forTableView:(UITableView *)tableView;

- (void)registerHeaderFooterViewClass:(Class)viewClass forTableView:(UITableView *)tableView;
- (void)registerHeaderFooterViewNibWithClass:(Class)viewClass forTableView:(UITableView *)tableView;

//batch register cells
- (void)registCellWithClassList:(NSArray <Class>*)classList forTableView:(UITableView *)tableView;
- (void)registCellNibWithClassList:(NSArray <Class>*)classList forTableView:(UITableView *)tableView;

@end


@interface CRListViewDataSource (CollectionViewRegister)

- (void)registerCellClass:(Class)cellClass forCollectionView:(UICollectionView *)collectionView;
- (void)registerCellNibWithClass:(Class)cellClass forCollectionView:(UICollectionView *)collectionView;

- (void)registerElementKindSectionHeaderViewClass:(Class)viewClass forCollectionView:(UICollectionView *)collectionView;
- (void)registerElementKindSectionFooterViewClass:(Class)viewClass forCollectionView:(UICollectionView *)collectionView;
- (void)registerElementKindSectionHeaderViewNibWithClass:(Class)viewClass forCollectionView:(UICollectionView *)collectionView;
- (void)registerElementKindSectionFooterViewNibWithClass:(Class)viewClass forCollectionView:(UICollectionView *)collectionView;

//batch register cells
- (void)registCellWithClassList:(NSArray <Class>*)classList forCollectionView:(UICollectionView *)collectionView;
- (void)registCellNibWithClassList:(NSArray <Class>*)classList forCollectionView:(UICollectionView *)collectionView;

@end
