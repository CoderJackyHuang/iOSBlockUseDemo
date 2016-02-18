//
//  HYBAView.h
//  BlockUseDemo
//
//  Created by huangyibiao on 16/2/18.
//  Copyright © 2016年 huangyibiao. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^HYBFeedbackBlock)(id model);

@interface HYBAView : UIView

- (instancetype)initWithBlock:(HYBFeedbackBlock)block;

@end
