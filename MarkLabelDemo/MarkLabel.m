//
//  MarkLabel.m
//  Demo
//
//  Created by zhm on 2017/3/13.
//  Copyright © 2017年 zhm. All rights reserved.
//

#import "MarkLabel.h"
#define HorizontalSpace  15
#define VerticalSpace  3
@implementation MarkLabel


- (id)initWithFrame:(CGRect)frame isNormal:(BOOL)normal{

    
    if (self = [super initWithFrame:frame]) {
        
        if (!normal) {
            
            self.layer.masksToBounds = YES;
            
        }else{
        
            self.isNormal = YES;
            
        }
        
        
    }
    
    return self;

}

+ (CGSize)predictTextStringNeedSizeWithFont:(CGFloat)size andText:(NSString *)text{

    CGSize perdictSize = CGSizeZero;
    
    perdictSize = [text sizeWithAttributes:@{NSFontAttributeName:[UIFont systemFontOfSize:size]}];

    return perdictSize;
}

- (void)setMarkLabelText:(NSString *)text fontSize:(CGFloat)size{

    [self setText:text];
    if (size <= 0) {
        
        size = 17;
    }

    CGSize textSize = [text sizeWithAttributes:@{NSFontAttributeName:[UIFont systemFontOfSize:size]}];

    if (textSize.width <= self.maxWidth || self.maxWidth == 0) {
        
        CGRect frame = self.frame;
        
        self.frame = CGRectMake(frame.origin.x,frame.origin.y , textSize.width + 2 *HorizontalSpace, frame.size.height);
        
    }else{
    
        CGRect frame = self.frame;
        
        self.frame = CGRectMake(frame.origin.x,frame.origin.y , self.maxWidth + 2 *HorizontalSpace, frame.size.height);
    
    }
    
    
    
}


- (void)drawRect:(CGRect)rect {
    [super drawRect:rect];
    
    if (self.isNormal == NO) {
        
        self.borderWidth = 1;
        CGRect frame = CGRectMake(self.borderWidth, self.borderWidth, rect.size.width - 2 *self.borderWidth, rect.size.height - 2 * self.borderWidth);
        UIBezierPath *maskPath = [UIBezierPath bezierPathWithRoundedRect:frame byRoundingCorners:UIRectCornerAllCorners cornerRadii:CGSizeMake(frame.size.height / 2, frame.size.height / 2)];
        
        UIColor *color = self.textColor;
        [color set];
        
        maskPath.lineWidth = 1;
        [maskPath stroke];
        
    }
   
}



@end
