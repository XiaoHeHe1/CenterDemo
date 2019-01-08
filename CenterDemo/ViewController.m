//
//  ViewController.m
//  CenterDemo
//
//  Created by YYY on 2019/1/8.
//  Copyright © 2019 YYY. All rights reserved.
//

#import "ViewController.h"
#import "UIView+YYY.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //
    //父视图 高度会跟着屏幕变
    //
    UIView *superView_ = [[UIView alloc]initWithFrame:CGRectMake(0, 100, 320, [UIScreen mainScreen].bounds.size.height * 0.2 )];
    superView_.backgroundColor = [UIColor yellowColor];
    [self.view addSubview:superView_];

    
    //
    //需要居中的UILabel
    //
    
    /*
    UILabel *label_ = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 200, 10)];
    label_.text = @"扣款成功克服超市老板VR发";
    [superView_ addSubview:label_];
    */
    
    //两个问题：1事先写好坐标后 文字可能展示不全   2居中也会有问题
    
    
    //
    //合理的代码 只看纵向居中
    //
    
    /*
    UILabel *label_ = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 0, 0)];
    label_.text = @"扣款成功克服超市老板VR发";
    [label_ sizeToFit];
    CGPoint center = CGPointMake(label_.center.x, superView_.frame.size.height / 2.0);
    label_.center = center;
    [superView_ addSubview:label_];
    */

    //一个问题：center我们只改y可是它是结构体 能不能节省代码  可以为UIView添加一个centerY的方法
    
    
    //
    //优化后的代码
    //
    UILabel *label_ = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 0, 0)];
    label_.text = @"扣款成功克服超市老板VR发";
    [label_ sizeToFit];
    label_.centerY = superView_.frame.size.height / 2.0;
    [superView_ addSubview:label_];
}




@end
