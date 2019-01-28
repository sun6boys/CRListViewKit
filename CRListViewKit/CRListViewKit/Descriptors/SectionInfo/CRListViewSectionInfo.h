//
//  CRListViewSectionInfo.h
//  CRListViewKit
//
//  Created by chuxiaolong on 2018/8/6.
//  Copyright © 2018年 chuxiaolong. All rights reserved.
//

#import <Foundation/Foundation.h>

@class CRCellDescriptor;
@interface CRListViewSectionInfo : NSObject

@property (nonatomic, strong) CRCellDescriptor *headerDescriptor;
@property (nonatomic, strong) CRCellDescriptor *footerDescriptor;

@property (nonatomic, assign) BOOL visible;  //default is YES.
@property (nonatomic, assign, readonly) NSUInteger numberOfRows;

- (instancetype)initWithRows:(NSArray <CRCellDescriptor *>*)rows;

- (CRCellDescriptor *)cellDescriptorAtIndex:(NSUInteger)index;
- (void)removeCellDescriptorAtIndex:(NSUInteger)index;
- (void)insertCellDescriptor:(CRCellDescriptor *)cellDescriptor atIndex:(NSUInteger)index;
- (void)addCellDescriptorsFromArray:(NSArray<CRCellDescriptor *> *)array;
- (void)celarAllDescriptprs;
@end
