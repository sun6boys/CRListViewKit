//
//  CRBaseTableViewCell.h
//  CRListViewKit
//
//  Created by chuxiaolong on 2018/8/2.
//  Copyright © 2018年 chuxiaolong. All rights reserved.
//

#import <UIKit/UIKit.h>

@class CRTableViewCellDescriptor;
@interface CRBaseTableViewCell : UITableViewCell

@property (nonatomic, strong) CRTableViewCellDescriptor *cellDescriptor;

+ (NSString *)cellIdentifier;
+ (CGFloat)cellHeightUseCacheWithCellDescriptor:(CRTableViewCellDescriptor *)cellDescriptor;

//override by child class
+ (CGFloat)cellHeightWithCellDescriptor:(CRTableViewCellDescriptor *)cellDescriptor;
@end
