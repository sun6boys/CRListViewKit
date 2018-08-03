//
//  CRListViewDataSource+Register.m
//  CRListViewKit
//
//  Created by chuxiaolong on 2018/8/3.
//  Copyright © 2018年 chuxiaolong. All rights reserved.
//

#import "CRListViewDataSource+Register.h"
#import "UITableView+Register.h"
#import "UICollectionView+Register.h"

@implementation CRListViewDataSource (Register)

//  ************************ TableView ***********************

- (void)registerCellClass:(Class )cellClass forTableView:(UITableView *)tableView
{
    [tableView registerCellClass:cellClass];
}

- (void)registerCellNibWithClass:(Class)cellClass forTableView:(UITableView *)tableView
{
    
}

- (void)registerHeaderFooterViewClass:(Class)viewClass forTableView:(UITableView *)tableView
{
    
}

- (void)registerHeaderFooterViewNibWithClass:(Class)viewClass forTableView:(UITableView *)tableView
{
    
}

//batch register cell
- (void)registCellWithClassList:(NSArray <Class>*)calssList forTableView:(UITableView *)tableView
{
    
}

- (void)registCellNibWithClassList:(NSArray <Class>*)calssList forTableView:(UITableView *)tableView
{
    
}


//  *********************** CollectionView **********************
- (void)registerCellClass:(Class)cellClass forCollectionView:(UICollectionView *)collectionView
{
    
}

- (void)registerCellNibWithClass:(Class)cellClass forCollectionView:(UICollectionView *)collectionView
{
    
}

- (void)registerElementKindSectionHeaderViewClass:(Class)viewClass forCollectionView:(UICollectionView *)collectionView
{
    
}

- (void)registerElementKindSectionFooterViewClass:(Class)viewClass forCollectionView:(UICollectionView *)collectionView
{
    
}

- (void)registerElementKindSectionHeaderViewNibWithClass:(Class)viewClass forCollectionView:(UICollectionView *)collectionView
{
    
}

- (void)registerElementKindSectionFooterViewNibWithClass:(Class)viewClass forCollectionView:(UICollectionView *)collectionView
{
    
}

//batch register cell
- (void)registCellWithClassList:(NSArray <Class>*)calssList forCollectionView:(UICollectionView *)collectionView
{
    
}

- (void)registCellNibWithClassList:(NSArray <Class>*)calssList forCollectionView:(UICollectionView *)collectionView
{
    
}
@end
