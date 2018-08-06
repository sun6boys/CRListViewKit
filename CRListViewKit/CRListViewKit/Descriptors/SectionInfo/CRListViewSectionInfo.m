//
//  CRListViewSectionInfo.m
//  CRListViewKit
//
//  Created by chuxiaolong on 2018/8/6.
//  Copyright © 2018年 chuxiaolong. All rights reserved.
//

#import "CRListViewSectionInfo.h"

@interface CRListViewSectionInfo ()

@property (nonatomic, strong) NSMutableArray *cellDescriptors;
@end

@implementation CRListViewSectionInfo

#pragma mark - life cycles
- (instancetype)initWithRows:(NSArray <CRCellDescriptor *>*)rows
{
    self = [super init];
    if (self) {
        _visible = YES;
    }
    return self;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        _visible = YES;
    }
    return self;
}

#pragma mark - public methods
- (CRCellDescriptor *)cellDescriptorAtIndex:(NSUInteger)index
{
    if(index >= self.cellDescriptors.count)
        return nil;
    
    return self.cellDescriptors[index];
}

- (void)removeCellDescriptorAtIndex:(NSUInteger)index
{
    if(index >= self.cellDescriptors.count)
        return;
    
    [self.cellDescriptors removeObjectAtIndex:index];
}

- (void)insertCellDescriptor:(CRCellDescriptor *)cellDescriptor atIndex:(NSUInteger)index
{
    if(index >= self.cellDescriptors.count || cellDescriptor == nil)
        return;
    
    [self.cellDescriptors insertObject:cellDescriptor atIndex:index];
}

- (void)addCellDescriptorsFromArray:(NSArray<CRCellDescriptor *> *)array
{
    [self.cellDescriptors addObjectsFromArray:array];
}

- (void)celarAllDescriptprs
{
    [self.cellDescriptors removeAllObjects];
}

- (NSUInteger)numberOfRows
{
    if(self.visible == NO)
        return 0;
    
    return self.cellDescriptors.count;
}

#pragma mark - getters
- (NSMutableArray *)cellDescriptors
{
    if (_cellDescriptors == nil) {
        _cellDescriptors = [[NSMutableArray alloc] init];
    }
    return _cellDescriptors;
}
@end
