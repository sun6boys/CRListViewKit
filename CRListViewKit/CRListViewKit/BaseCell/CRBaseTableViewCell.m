//
//  CRBaseTableViewCell.m
//  CRListViewKit
//
//  Created by chuxiaolong on 2018/8/2.
//  Copyright © 2018年 chuxiaolong. All rights reserved.
//

#import "CRBaseTableViewCell.h"
#import "CRCellDescriptor.h"

@implementation CRBaseTableViewCell

#pragma mark - public methods
+ (NSString *)cellIdentifier
{
    return nil;
}

+ (CGFloat)cellHeightUseCacheWithCellDescriptor:(CRCellDescriptor *)cellDescriptor
{
    if([cellDescriptor hasCachedCellHeight])
        return [cellDescriptor cellHeight];
    
    CGFloat cellHeight = [self cellHeightWithCellDescriptor:cellDescriptor];
    [cellDescriptor cacheTableViewCellHeight:cellHeight];
    return cellHeight;
}

//override by child class
+ (CGFloat)cellHeightWithCellDescriptor:(CRCellDescriptor *)cellDescriptor
{
    return 0;
}

@end
