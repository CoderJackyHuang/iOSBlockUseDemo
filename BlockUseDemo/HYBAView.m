//
//  HYBAView.m
//  BlockUseDemo
//
//  Created by huangyibiao on 16/2/18.
//  Copyright © 2016年 huangyibiao. All rights reserved.
//

#import "HYBAView.h"

@interface HYBAView ()

@property (nonatomic, copy) HYBFeedbackBlock block;

@end

@implementation HYBAView

- (void)dealloc {
  NSLog(@"dealloc: %@", [[self class] description]);
}

- (instancetype)initWithBlock:(HYBFeedbackBlock)block {
  if (self = [super init]) {
    self.block = block;
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setTitle:@"反馈给controller" forState:UIControlStateNormal];
    button.frame = CGRectMake(50, 200, 200, 45);
    button.backgroundColor = [UIColor redColor];
    [button setTitleColor:[UIColor yellowColor] forState:UIControlStateNormal];
    [button addTarget:self action:@selector(feedback) forControlEvents:UIControlEventTouchUpInside];
    [self addSubview:button];
  }
  
  return self;
}

- (void)feedback {
  if (self.block) {
    // 传模型回去，这里没有数据，假设传nil
    self.block(nil);
  }
}

@end
