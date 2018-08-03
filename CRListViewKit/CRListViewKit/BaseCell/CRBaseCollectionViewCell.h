//
//  CRBaseCollectionViewCell.h
//  CRListViewKit
//
//  Created by chuxiaolong on 2018/8/2.
//  Copyright © 2018年 chuxiaolong. All rights reserved.
//

#import <UIKit/UIKit.h>

@class CRCellDescriptor;
@interface CRBaseCollectionViewCell : UICollectionViewCell

@property (nonatomic, strong) CRCellDescriptor *cellDescriptor;

+ (NSString *)cellIdentifier;
+ (CGSize)cellSizeUseCacheWithCellDescriptor:(CRCellDescriptor *)cellDescriptor;

//override by child class
+ (CGSize)cellSizeWithCellDescriptor:(CRCellDescriptor *)cellDescriptor;
@end
