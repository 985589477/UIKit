//
//  ViewController.m
//  UIButton
//
//  Created by 李璇 on 2017/10/13.
//  Copyright © 2017年 Lxxxxx. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //初始化UIButton 使用工厂方法buttonWithType: 选择出适合什么类型的button
    
    /*
     
     UIButtonTypeCustom = 0,        //自定义类型，比如要自己将图片放到按钮上 需要使用此类型
     
     UIButtonTypeSystem NS_ENUM_AVAILABLE_IOS(7_0),  //系统类型默认
     
     UIButtonTypeDetailDisclosure,  //用于显示当前列表项的详情
     
     UIButtonTypeInfoLight,          //该按钮类型 亮
     
     UIButtonTypeInfoDark,          //该按钮类型 暗
     
     UIButtonTypeContactAdd,        //该按钮通常用于添加联系人
     
     UIButtonTypeRoundedRect = UIButtonTypeSystem, //圆角
     
     */
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
    
    //设置button位置
    
    button.frame = CGRectMake(100, 100, 200, 30);
    
    //设置标题
    
    [button setTitle:@"按钮" forState:UIControlStateNormal];
    
    //设置标题颜色
    
    [button setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    
    //设置button边框宽度
    
    button.layer.borderWidth = 0.2;
    
    //设置button边框颜色
    
    button.layer.borderColor = [UIColor redColor].CGColor;
    
    //设置button 内容内边距
    
    button.contentEdgeInsets = UIEdgeInsetsMake(3, 3, 3, 3);
    
    //设置button 标题内边距
    
    button.titleEdgeInsets = UIEdgeInsetsMake(3, 3, 3, 3);
    
    //设置button 图片内边距
    
    button.imageEdgeInsets = UIEdgeInsetsMake(3, 3, 3, 3);;
    
    //默认为NO 当高亮状态下逆转标题阴影
    
    button.reversesTitleShadowWhenHighlighted = YES;
    
    //adjustsImageWhenHighlighted 在高亮状态下调整图片 默认 YES
    
    //adjustsImageWhenDisabled    在不可用状态下调整图片 默认 YES
    
    //showsTouchWhenHighlighted  在高亮状态下展示反馈 默认 NO
    
    //在没有手动设置颜色的时候 可以改变按钮的着色
    
    button.tintColor = [UIColor blueColor];
    
    //设置button阴影颜色
    
    [button setTitleShadowColor:[UIColor grayColor] forState:UIControlStateNormal];
    
    //设置button图片
    
    [button setImage:[UIImage imageNamed:@""] forState:UIControlStateNormal];
    
    //设置button背景图片
    
    [button setBackgroundImage:[UIImage imageNamed:@""] forState:UIControlStateNormal];
    
    //设置attributed的标题文字
    
    [button setAttributedTitle:[[NSAttributedString alloc]initWithString:@"attributed按钮"]forState:UIControlStateNormal];
    
    //添加到视图上
    
    [self.view addSubview:button];
    
    //currentTitle  获取当前标题
    
    //currentTitleColor 获取当前标题颜色
    
    //currentTitleShadowColor 获取当前阴影颜色
    
    //currentImage 获取当前图片
    
    //currentBackgroundImage 获取当前背景图片
    
    //currentAttributedTitle 获取当前attributed标题
    
    //titleLabel 该属性为添加在button上文字的label，可以通过修改此属性
    
    //imageView 该属性为修改button图片的imageView
    
    /*
     
     backgroundRectForBounds:(CGRect)bounds //改变对button的Bounds显示的backgroundRect
     
     contentRectForBounds:(CGRect)bounds    //改变对button的bounds显示的contentRect
     
     titleRectForContentRect:(CGRect)contentRect //改变对内容Rect里 title的Rect
     
     imageRectForContentRect:(CGRect)contentRect //改变对内容Rect里 image的Rect
     
     */
    
    /*
     
     //获取各种state下 button中显示的内容 的各种 属性
     
     - (nullable NSString *)titleForState:(UIControlState)state;          // 获取该状态下标题
     
     - (nullable UIColor *)titleColorForState:(UIControlState)state;  // 获取该状态下标题颜色
     
     - (nullable UIColor *)titleShadowColorForState:(UIControlState)state; // 获取该状态下标题阴影颜色
     
     - (nullable UIImage *)imageForState:(UIControlState)state;  // 获取该状态下图片
     
     - (nullable UIImage *)backgroundImageForState:(UIControlState)state;    //获取该状态下的背景图
     
     - (nullable NSAttributedString *)attributedTitleForState:(UIControlState)state //获取该状态下attributed标题
     */
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
