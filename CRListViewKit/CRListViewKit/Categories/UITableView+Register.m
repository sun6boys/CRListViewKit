//
//  UITableView+Register.m
//  CRListViewKit
//
//  Created by chuxiaolong on 2018/8/3.
//  Copyright © 2018年 chuxiaolong. All rights reserved.
//

#import "UITableView+Register.h"

@implementation UITableView (Register)

- (void)registerCellClass:(Class)cellClass
{
    [self registerClass:cellClass forCellReuseIdentifier:[cellClass description]];
}

- (void)registerCellNibForClass:(Class)cellClass
{
    [self registerNib:[UINib nibWithNibName:NSStringFromClass(cellClass) bundle:nil] forCellReuseIdentifier:[cellClass description]];
}

- (void)registerHeaderFooterViewClass:(Class)viewClass
{
    [self registerClass:viewClass forCellReuseIdentifier:[viewClass description]];
}

- (void)registerHeaderFooterViewNibForClass:(Class)viewClass
{
    [self registerNib:[UINib nibWithNibName:NSStringFromClass(viewClass) bundle:nil] forHeaderFooterViewReuseIdentifier:[viewClass description]];
}

@end
