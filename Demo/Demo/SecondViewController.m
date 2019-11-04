//
//  SecondViewController.m
//  Demo
//
//  Created by Lct on 2019/11/4.
//  Copyright © 2019 Lct. All rights reserved.
//

#import "SecondViewController.h"
#import "ThirdViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //button
    UIButton* button = [[UIButton alloc] initWithFrame:CGRectMake(50, 200, 250, 100)];
    
    //按钮背景
    button.backgroundColor = [UIColor redColor];
    
    //按钮文字
    [button setTitle:@"SecondViewController" forState:UIControlStateNormal];
    [button setTitle:@"高亮Button" forState:UIControlStateHighlighted];
    
    
    [button addTarget:self action:@selector(clickClick) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:button];
}


-(void)clickClick{
    NSLog(@"click btn");
    
    ThirdViewController *third = [[ThirdViewController alloc]init];
    [self.navigationController pushViewController:third animated:YES];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
