//
//  UICollectionView+Register.m
//  CRListViewKit
//
//  Created by chuxiaolong on 2018/8/3.
//  Copyright © 2018年 chuxiaolong. All rights reserved.
//

#import "UICollectionView+Register.h"

@implementation UICollectionView (Register)

- (void)registerCellClass:(Class)cellClass
{
    [self registerClass:cellClass forCellWithReuseIdentifier:[cellClass description]];
}

- (void)registerCellNibForClass:(Class)cellClass
{
    [self registerNib:[UINib nibWithNibName:NSStringFromClass(cellClass) bundle:nil] forCellWithReuseIdentifier:[cellClass description]];
}

- (void)registerElementKindSectionHeaderViewClass:(Class)viewClass
{
    [self registerClass:viewClass forSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:[viewClass description]];
}

- (void)registerElementKindSectionFooterViewClass:(Class)viewClass
{
     [self registerClass:viewClass forSupplementaryViewOfKind:UICollectionElementKindSectionFooter withReuseIdentifier:[viewClass description]];
}

- (void)registerElementKindSectionHeaderViewNibForClass:(Class)viewClass
{
    [self registerNib:[UINib nibWithNibName:NSStringFromClass(viewClass) bundle:nil] forSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:[viewClass description]];
}

- (void)registerElementKindSectionFooterViewNibForClass:(Class)viewClass
{
    [self registerNib:[UINib nibWithNibName:NSStringFromClass(viewClass) bundle:nil] forSupplementaryViewOfKind:UICollectionElementKindSectionFooter withReuseIdentifier:[viewClass description]];
}

@end
