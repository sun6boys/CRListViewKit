//
//  CRCollectionViewCellDescriptor.h
//  CRListViewKit
//
//  Created by chuxiaolong on 2018/8/2.
//  Copyright © 2018年 chuxiaolong. All rights reserved.
//

#import "CRCellDescriptor.h"

@interface CRCollectionViewCellDescriptor : CRCellDescriptor

//size cache
- (void)cacheCollectionViewCellSize:(CGSize)size;
- (void)clearSizeCache;
- (CGSize)cellSize; //Using this API you must verify that "- (BOOL)hasCachedCellSize" return YES
- (BOOL)hasCachedCellSize;
@end
