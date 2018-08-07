//
//  CRListViewAdaptor.h
//  CRListViewKit
//
//  Created by chuxiaolong on 2018/8/7.
//  Copyright © 2018年 chuxiaolong. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@class CRListViewDataSource;
@interface CRListViewAdaptor : NSObject

@property (nonatomic, strong, readonly) CRListViewDataSource *dataSource;

+ (instancetype)new NS_UNAVAILABLE;
- (instancetype)init NS_UNAVAILABLE;
@end


@interface CRListViewAdaptor (TableView)

@property (nonatomic, strong, readonly) UITableView *tableView;

- (instancetype)initWithDataSource:(CRListViewDataSource *)dataSource tableView:(UITableView *)tableView;
@end


@interface CRListViewAdaptor (CollectionView)

@property (nonatomic, strong, readonly) UICollectionView *collectionView;

- (instancetype)initWithDataSource:(CRListViewDataSource *)dataSource collectionView:(UICollectionView *)collectionView;
@end
