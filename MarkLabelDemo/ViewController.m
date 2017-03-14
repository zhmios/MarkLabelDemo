//
//  ViewController.m
//  Demo
//
//  Created by zhm on 2017/3/13.
//  Copyright © 2017年 zhm. All rights reserved.
//

#import "ViewController.h"
#import "MarkLabel.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet MarkLabel *markLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    MarkLabel *label = [[MarkLabel alloc]initWithFrame:CGRectMake(10, 90, 10, 30)isNormal:NO];
    [self.view addSubview:label];
    label.font = [UIFont systemFontOfSize:15];
    label.textColor = [UIColor blueColor];
    label.textAlignment = NSTextAlignmentCenter;
    NSString *labelText = @"恰同学少年，风华正茂";
    [label setMarkLabelText:labelText fontSize:15];
    

    MarkLabel *label2 = [[MarkLabel alloc]initWithFrame:CGRectMake(10, 160, 10, 30)isNormal:NO];
    [self.view addSubview:label2];
    [label2 setMarkLabelText:@"Genius only means hard-working all one's life." fontSize:15];
    label2.font = [UIFont systemFontOfSize:15];
    label2.textColor = [UIColor orangeColor];
    label2.backgroundColor = [UIColor purpleColor];
    label2.layer.masksToBounds = YES;
    label2.layer.cornerRadius = label2.frame.size.height / 2;
    label2.textAlignment = NSTextAlignmentCenter;
    
    
    
    
    
}





@end
