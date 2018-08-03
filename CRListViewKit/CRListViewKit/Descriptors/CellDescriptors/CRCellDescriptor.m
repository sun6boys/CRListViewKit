//
//  CRCellDescriptor.m
//  CRListViewKit
//
//  Created by chuxiaolong on 2018/8/2.
//  Copyright © 2018年 chuxiaolong. All rights reserved.
//

#import "CRCellDescriptor.h"


@interface CRCellDescriptor ()
{
    BOOL _hasCachedCellHeight;
    BOOL _hasCachedCellSize;
    
    CGFloat _cellHeight;
    CGSize _cellSize;
}

@end

@implementation CRCellDescriptor

@end



@implementation CRCellDescriptor (TableViewCellHeight)

- (void)cacheTableViewCellHeight:(CGFloat)height
{
    _cellHeight = height;
    _hasCachedCellHeight = YES;
}

- (void)clearHeightCache
{
    _hasCachedCellHeight = NO;
}
- (CGFloat)cellHeight
{
    return _cellHeight;
}

- (BOOL)hasCachedCellHeight
{
    return _hasCachedCellHeight;
}

@end


@implementation CRCellDescriptor (CollectionViewCellHeight)

- (void)cacheCollectionViewCellSize:(CGSize)size
{
    _cellSize = size;
    _hasCachedCellSize = YES;
}

- (void)clearSizeCache
{
    _hasCachedCellSize = NO;
}

- (CGSize)cellSize
{
    return _cellSize;
}

- (BOOL)hasCachedCellSize
{
    return _hasCachedCellSize;
}

@end


