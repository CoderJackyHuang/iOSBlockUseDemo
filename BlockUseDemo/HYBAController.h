//
//  HYBAController.h
//  BlockUseDemo
//
//  Created by huangyibiao on 16/2/18.
//  Copyright © 2016年 huangyibiao. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^HYBCallbackBlock)();

@interface HYBAController : UIViewController

- (instancetype)initWithCallback:(HYBCallbackBlock)callback;

@end
