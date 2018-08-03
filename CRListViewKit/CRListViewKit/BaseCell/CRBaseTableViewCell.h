//
//  CRBaseTableViewCell.h
//  CRListViewKit
//
//  Created by chuxiaolong on 2018/8/2.
//  Copyright © 2018年 chuxiaolong. All rights reserved.
//

#import <UIKit/UIKit.h>

@class CRCellDescriptor;
@interface CRBaseTableViewCell : UITableViewCell

@property (nonatomic, strong) CRCellDescriptor *cellDescriptor;

+ (NSString *)cellIdentifier;
+ (CGFloat)cellHeightUseCacheWithCellDescriptor:(CRCellDescriptor *)cellDescriptor;

//override by child class
+ (CGFloat)cellHeightWithCellDescriptor:(CRCellDescriptor *)cellDescriptor;
@end
