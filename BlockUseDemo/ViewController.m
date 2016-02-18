//
//  ViewController.m
//  BlockUseDemo
//
//  Created by huangyibiao on 16/2/18.
//  Copyright © 2016年 huangyibiao. All rights reserved.
//

#import "ViewController.h"
#import "HYBAController.h"

@interface ViewController ()

@property (nonatomic, strong) UIButton *button;
@property (nonatomic, strong) HYBAController *vc;

@end

@implementation ViewController

- (void)goToNext {
  __weak __typeof(self) weakSelf = self;
  HYBAController *vc = [[HYBAController alloc] initWithCallback:^{
    [weakSelf.button setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
  }];
//  self.vc = vc;
  [self.navigationController pushViewController:vc animated:YES];
}



- (void)viewDidLoad {
  [super viewDidLoad];
  
  UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
  [button setTitle:@"进入下一个界面" forState:UIControlStateNormal];
  button.frame = CGRectMake(50, 200, 200, 45);
  button.backgroundColor = [UIColor redColor];
  [button setTitleColor:[UIColor yellowColor] forState:UIControlStateNormal];
  [button addTarget:self action:@selector(goToNext) forControlEvents:UIControlEventTouchUpInside];
  [self.view addSubview:button];
  self.button = button;
  
  self.title = @"ViewController";

}

@end
