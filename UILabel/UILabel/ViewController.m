//
//  ViewController.m
//  UILabel
//
//  Created by 李璇 on 2017/10/14.
//  Copyright © 2017年 Lxxxxx. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //文本标签 UILabel
    //展示文字
    
    //初始化方法 通过构造方法直接给label的frame赋值
    UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(100, 100, 300, 100)];
    //赋值要显示的文字
    label.text = @"我是一个Label";
    //改变字体大小
    label.font = [UIFont systemFontOfSize:14];
    //改变文字颜色
    label.textColor = [UIColor redColor];
    //设置阴影颜色
    label.shadowColor = [UIColor purpleColor];
    //设置阴影偏移量  第一个参数 正为左 负为右 ，第二个参数 正为向上偏移，负为向下偏移
    label.shadowOffset = CGSizeMake(10, 10);
    //设置对其方式
    /*
     NSTextAlignmentLeft      = 0,    // 左对齐
     NSTextAlignmentCenter    = 1,    // 居中对齐
     NSTextAlignmentRight     = 2,    // 右对齐
     NSTextAlignmentJustified = 3,    // 自动对齐
     NSTextAlignmentNatural   = 4,    // 自然对齐
     */
    label.textAlignment = NSTextAlignmentNatural;
    //设置label的超出范围文字显示方式
    /*
     NSLineBreakByWordWrapping = 0,     	//默认
     NSLineBreakByCharWrapping,		// 只停留在字符边界
     NSLineBreakByClipping,         // 多余部分剪切
     NSLineBreakByTruncatingHead,	// Truncate at head of line: "...wxyz" 省略头
     NSLineBreakByTruncatingTail,	// Truncate at tail of line: "abcd..." 省略尾
     NSLineBreakByTruncatingMiddle	// Truncate middle of line:  "ab...yz" 省略中间
     */
    label.lineBreakMode = NSLineBreakByWordWrapping;
    //设置attributed文字
    label.attributedText = [[NSAttributedString alloc]initWithString:@"我是一个attributed标签"];
    //是否可以高亮显示 默认为NO
    label.highlighted = YES;
    //设置高亮状态下文字显示颜色
    label.highlightedTextColor = [UIColor blueColor];
    //设置是否可以与用户交互 默认NO
    label.userInteractionEnabled = YES;
    //设置是否被禁用
    label.enabled = YES;
    //设置文字可以显示几行，如1 就只显示1行文字 2 同理 以此类推，设置为0，可以默认匹配，自动换行
    label.numberOfLines = 0;
    //是否自动适配文字的宽度 默认为NO
    label.adjustsFontSizeToFitWidth = YES;
    //设置基线的对齐方式
    /*
     UIBaselineAdjustmentAlignBaselines = 0, 默认 对齐基线
     UIBaselineAdjustmentAlignCenters,  对齐中心
     UIBaselineAdjustmentNone,  无
     */
    label.baselineAdjustment = UIBaselineAdjustmentAlignCenters;
    //最小缩放比例
    label.minimumScaleFactor = 0.0;
    //首选 最大布局宽度
    label.preferredMaxLayoutWidth = 300;
    //添加到视图上
    [self.view addSubview:label];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
