//
//  UITableView+Register.h
//  CRListViewKit
//
//  Created by chuxiaolong on 2018/8/3.
//  Copyright © 2018年 chuxiaolong. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UITableView (Register)

- (void)registerCellClass:(Class)cellClass;
- (void)registerCellNibForClass:(Class)cellClass;

- (void)registerHeaderFooterViewClass:(Class)viewClass;
- (void)registerHeaderFooterViewNibForClass:(Class)viewClass;
@end
