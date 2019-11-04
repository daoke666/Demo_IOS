//
//  ViewController.m
//  Demo
//
//  Created by Lct on 2019/11/1.
//  Copyright © 2019 Lct. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self initButtonLable];
}


-(void)initButtonLable{
    //lable
    int w = self.view.frame.size.width;
    int h = self.view.frame.size.height;
    
    UILabel* lable = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 300, 50)];
    
    lable.center = CGPointMake(w/2, h/2);
    lable.textAlignment = UITextAlignmentCenter;
    lable.backgroundColor = [UIColor clearColor];
    lable.text = @"代码布局 Hello World! ViewController";
    [self.view addSubview:lable];
    
    //button
    UIButton* button = [[UIButton alloc] initWithFrame:CGRectMake(100, 200, 150, 100)];
    
    //按钮背景
    button.backgroundColor = [UIColor redColor];
    
    //按钮文字
    [button setTitle:@"普通Button" forState:UIControlStateNormal];
    [button setTitle:@"高亮Button" forState:UIControlStateHighlighted];
    
    //Button监听事件，非常重要
    /**
     *addTarget:目标（让谁做这个事情）
     *action:方法（做什么事情-->方法）
     *forControlEvents:事件
     */
    [button addTarget:self action:@selector(onbtnClick:)forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:button];
}

-(void)onbtnClick:(UIButton*)sender{
    
    NSLog(@"click btn");
    

    //页面跳转
    SecondViewController *secondViewController = [[SecondViewController alloc] init];
    secondViewController.view.backgroundColor = [UIColor blueColor];
    
    //导航控制器入栈的方式切换页面
    [self.navigationController pushViewController:secondViewController animated:YES];
    
    //模态切换的方式切换页面
    //[self presentViewController:secondViewController animated:YES completion:nil];
    
    //self.modalPresentationStyle = UIModalPresentationFullScreen;
    //[self presentModalViewController:secondViewController animated:YES];
    

    /*
     //初始化提示框
     UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"提示" message:@"按钮被点击了" preferredStyle:  UIAlertControllerStyleAlert];
    
     [alert addAction:[UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
         
         NSLog(@"click btn ok");
     }]];
    
     [alert addAction:[UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        
        NSLog(@"click btn cancle");
     }]];
    
     //弹出提示框；
     [self presentViewController:alert animated:true completion:nil];
     */
}

@end
