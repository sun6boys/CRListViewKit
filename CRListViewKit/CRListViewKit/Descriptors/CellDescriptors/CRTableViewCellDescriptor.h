//
//  CRTableViewCellDescriptor.h
//  CRListViewKit
//
//  Created by chuxiaolong on 2018/8/2.
//  Copyright © 2018年 chuxiaolong. All rights reserved.
//

#import "CRCollectionViewCellDescriptor.h"

@interface CRTableViewCellDescriptor : CRCellDescriptor

//height cache
- (void)cacheTableViewCellHeight:(CGFloat)height;
- (void)clearHeightCache;
- (CGFloat)cellHeight; //Using this API you must verify that "- (BOOL)hasCacheHeight" return YES
- (BOOL)hasCachedCellHeight;

@end
