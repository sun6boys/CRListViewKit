//
//  CRListViewDataSource.h
//  CRListViewKit
//
//  Created by chuxiaolong on 2018/8/2.
//  Copyright © 2018年 chuxiaolong. All rights reserved.
//

#import "CRListViewBaseDataSource.h"
#import <UIKit/UIKit.h>

@interface CRListViewDataSource : CRListViewBaseDataSource<UICollectionViewDataSource,UITableViewDataSource>

@property (nonatomic, copy) NSString *noContentTitle;
@property (nonatomic, copy) NSString *noContentMessage;
@property (nonatomic, strong) UIImage *noContentImage;

@property (nonatomic, copy) NSString *errorMessage;
@property (nonatomic, copy) NSString *errorTitle;

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
