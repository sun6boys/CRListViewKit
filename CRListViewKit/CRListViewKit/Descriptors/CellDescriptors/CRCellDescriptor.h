//
//  CRCellDescriptor.h
//  CRListViewKit
//
//  Created by chuxiaolong on 2018/8/2.
//  Copyright © 2018年 chuxiaolong. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreGraphics/CoreGraphics.h>

@interface CRCellDescriptor : NSObject

@property (nonatomic, strong) Class cellClass;
@property (nonatomic, strong) id cellData;

@end

@interface CRCellDescriptor (TableViewCellHeight)

//height cache
- (void)cacheTableViewCellHeight:(CGFloat)height;
- (void)clearHeightCache;
- (CGFloat)cellHeight; //Using this API you must verify that "- (BOOL)hasCacheHeight" return YES
- (BOOL)hasCachedCellHeight;

@end


@interface CRCellDescriptor (CollectionViewCellHeight)

//size cache
- (void)cacheCollectionViewCellSize:(CGSize)size;
- (void)clearSizeCache;
- (CGSize)cellSize; //Using this API you must verify that "- (BOOL)hasCachedCellSize" return YES
- (BOOL)hasCachedCellSize;

@end
