//
//  HYBAController.m
//  BlockUseDemo
//
//  Created by huangyibiao on 16/2/18.
//  Copyright © 2016年 huangyibiao. All rights reserved.
//

#import "HYBAController.h"
#import "HYBAView.h"

@interface HYBAController()

@property (nonatomic, copy) HYBCallbackBlock callbackBlock;

@property (nonatomic, strong) HYBAView *aView;
@property (nonatomic, strong) id currentModel;

@end

@implementation HYBAController

- (instancetype)initWithCallback:(HYBCallbackBlock)callback {
  if (self = [super init]) {
    self.callbackBlock = callback;
  }
  
  return self;
}

- (void)viewDidLoad {
  [super viewDidLoad];
  
  self.title = @"HYBAController";
  self.view.backgroundColor = [UIColor whiteColor];
  
  __block __weak __typeof(_currentModel) weakModel = _currentModel;
  self.aView = [[HYBAView alloc] initWithBlock:^(id model) {
    // 假设要更新model
    weakModel = model;
  }];
  // 假设占满全屏
  self.aView.frame = self.view.bounds;
  [self.view addSubview:self.aView];
  self.aView.backgroundColor = [UIColor whiteColor];
  
}

- (void)viewDidAppear:(BOOL)animated {
  [super viewDidAppear:animated];
  
  NSLog(@"进入控制器：%@", [[self class] description]);
}

- (void)dealloc {
  NSLog(@"控制器被dealloc: %@", [[self class] description]);
}

@end
