//
//  MarkLabel.h
//  Demo
//
//  Created by zhm on 2017/3/13.
//  Copyright © 2017年 zhm. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MarkLabel : UILabel

@property(nonatomic,assign) CGFloat borderWidth;
@property(nonatomic,assign) CGFloat maxWidth;
@property(nonatomic,assign) BOOL isNormal;
- (id)initWithFrame:(CGRect)frame isNormal:(BOOL)normal;
- (void)setMarkLabelText:(NSString *)text fontSize:(CGFloat)size;

+ (CGSize)predictTextStringNeedSizeWithFont:(CGFloat)size andText:(NSString *)text;

@end
