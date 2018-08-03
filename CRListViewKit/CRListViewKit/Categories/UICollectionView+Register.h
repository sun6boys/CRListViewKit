//
//  UICollectionView+Register.h
//  CRListViewKit
//
//  Created by chuxiaolong on 2018/8/3.
//  Copyright © 2018年 chuxiaolong. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UICollectionView (Register)

- (void)registerCellClass:(Class)cellClass;
- (void)registerCellNibForClass:(Class)cellClass;

- (void)registerElementKindSectionHeaderViewClass:(Class)viewClass;
- (void)registerElementKindSectionFooterViewClass:(Class)viewClass;
- (void)registerElementKindSectionHeaderViewNibForClass:(Class)viewClass;
- (void)registerElementKindSectionFooterViewNibForClass:(Class)viewClass;

@end
