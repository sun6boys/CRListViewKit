//
//  CRListViewAdaptor.m
//  CRListViewKit
//
//  Created by chuxiaolong on 2018/8/7.
//  Copyright © 2018年 chuxiaolong. All rights reserved.
//

#import "CRListViewAdaptor.h"
#import "CRListViewDataSource.h"

@interface CRListViewAdaptor()<UITableViewDelegate,UICollectionViewDelegate>

@property (nonatomic, strong, readwrite) CRListViewDataSource *dataSource;
@property (nonatomic, strong, readwrite) UITableView *tableView;
@property (nonatomic, strong, readwrite) UICollectionView *collectionView;
@end

@implementation CRListViewAdaptor



@end


@implementation CRListViewAdaptor(TableView)

- (instancetype)initWithDataSource:(CRListViewDataSource *)dataSource tableView:(UITableView *)tableView
{
    self = [super init];
    if (self) {
        _dataSource =  dataSource;
        _tableView = tableView;
        _tableView.delegate = self;
        _tableView.dataSource = dataSource;
        
        [_dataSource registerTableViewItemsForTableView:tableView];
    }
    return self;
}

#pragma mark - UITableViewDelegate
- (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath
{
    
}

- (void)tableView:(UITableView *)tableView willDisplayHeaderView:(UIView *)view forSection:(NSInteger)section
{
    
}

- (void)tableView:(UITableView *)tableView willDisplayFooterView:(UIView *)view forSection:(NSInteger)section
{
    
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return CGFLOAT_MIN;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return CGFLOAT_MIN;
}

- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section
{
    return CGFLOAT_MIN;
}

- (nullable UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    return nil;
}

- (nullable UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section
{
    return nil;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
}

- (void)tableView:(UITableView *)tableView didDeselectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
}

@end

@implementation CRListViewAdaptor(CollectionView)

- (instancetype)initWithDataSource:(CRListViewDataSource *)dataSource collectionView:(UICollectionView *)collectionView
{
    self = [super init];
    if (self) {
        _dataSource = dataSource;
        _collectionView = collectionView;
        _collectionView.dataSource = dataSource;
        _collectionView.delegate = self;
        
        [_dataSource registerCollectionViewItemsForCollectionView:collectionView];
    }
    return self;
}

@end



