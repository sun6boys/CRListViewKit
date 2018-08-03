//
//  CRListViewDataSource+Register.m
//  CRListViewKit
//
//  Created by chuxiaolong on 2018/8/3.
//  Copyright © 2018年 chuxiaolong. All rights reserved.
//

#import "CRListViewDataSource.h"

@implementation CRListViewDataSource (TableViewRegister)

- (void)registerCellClass:(Class )cellClass forTableView:(UITableView *)tableView
{
    [tableView registerClass:cellClass forCellReuseIdentifier:[cellClass description]];
}

- (void)registerCellNibWithClass:(Class)cellClass forTableView:(UITableView *)tableView
{
    [tableView registerNib:[UINib nibWithNibName:NSStringFromClass(cellClass) bundle:nil] forCellReuseIdentifier:[cellClass description]];
}

- (void)registerHeaderFooterViewClass:(Class)viewClass forTableView:(UITableView *)tableView
{
     [tableView registerClass:viewClass forCellReuseIdentifier:[viewClass description]];
}

- (void)registerHeaderFooterViewNibWithClass:(Class)viewClass forTableView:(UITableView *)tableView
{
     [tableView registerNib:[UINib nibWithNibName:NSStringFromClass(viewClass) bundle:nil] forHeaderFooterViewReuseIdentifier:[viewClass description]];
}

//batch register cell
- (void)registCellWithClassList:(NSArray <Class>*)classList forTableView:(UITableView *)tableView
{
    [classList enumerateObjectsUsingBlock:^(Class  _Nonnull cellClass, NSUInteger idx, BOOL * _Nonnull stop) {
        [self registerCellClass:cellClass forTableView:tableView];
    }];
}

- (void)registCellNibWithClassList:(NSArray <Class>*)classList forTableView:(UITableView *)tableView
{
    [classList enumerateObjectsUsingBlock:^(Class  _Nonnull cellClass, NSUInteger idx, BOOL * _Nonnull stop) {
        [self registerCellNibWithClass:cellClass forTableView:tableView];
    }];
}

@end



@implementation CRListViewDataSource (CollectionViewRegister)

- (void)registerCellClass:(Class)cellClass forCollectionView:(UICollectionView *)collectionView
{
    [collectionView registerClass:cellClass forCellWithReuseIdentifier:[cellClass description]];
}

- (void)registerCellNibWithClass:(Class)cellClass forCollectionView:(UICollectionView *)collectionView
{
    [collectionView registerNib:[UINib nibWithNibName:NSStringFromClass(cellClass) bundle:nil] forCellWithReuseIdentifier:[cellClass description]];
}

- (void)registerElementKindSectionHeaderViewClass:(Class)viewClass forCollectionView:(UICollectionView *)collectionView
{
    [collectionView registerClass:viewClass forSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:[viewClass description]];
}

- (void)registerElementKindSectionFooterViewClass:(Class)viewClass forCollectionView:(UICollectionView *)collectionView
{
    [collectionView registerClass:viewClass forSupplementaryViewOfKind:UICollectionElementKindSectionFooter withReuseIdentifier:[viewClass description]];
}

- (void)registerElementKindSectionHeaderViewNibWithClass:(Class)viewClass forCollectionView:(UICollectionView *)collectionView
{
    [collectionView registerNib:[UINib nibWithNibName:NSStringFromClass(viewClass) bundle:nil] forSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:[viewClass description]];
}

- (void)registerElementKindSectionFooterViewNibWithClass:(Class)viewClass forCollectionView:(UICollectionView *)collectionView
{
    [collectionView registerNib:[UINib nibWithNibName:NSStringFromClass(viewClass) bundle:nil] forSupplementaryViewOfKind:UICollectionElementKindSectionFooter withReuseIdentifier:[viewClass description]];
}

//batch register cell
- (void)registCellWithClassList:(NSArray <Class>*)classList forCollectionView:(UICollectionView *)collectionView
{
    [classList enumerateObjectsUsingBlock:^(Class  _Nonnull cellClass, NSUInteger idx, BOOL * _Nonnull stop) {
        [self registerCellClass:cellClass forCollectionView:collectionView];
    }];
}

- (void)registCellNibWithClassList:(NSArray <Class>*)classList forCollectionView:(UICollectionView *)collectionView
{
    [classList enumerateObjectsUsingBlock:^(Class  _Nonnull cellClass, NSUInteger idx, BOOL * _Nonnull stop) {
        [self registerCellNibWithClass:cellClass forCollectionView:collectionView];
    }];
}
@end
