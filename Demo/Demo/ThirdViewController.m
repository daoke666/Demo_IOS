//
//  ThirdViewController.m
//  Demo
//
//  Created by Lct on 2019/11/4.
//  Copyright © 2019 Lct. All rights reserved.
//

#import "ThirdViewController.h"

@interface ThirdViewController ()

@end

@implementation ThirdViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UIButton* button = [[UIButton alloc] initWithFrame:CGRectMake(50, 200, 250, 100)];
           
    //按钮背景
    button.backgroundColor = [UIColor redColor];
    [button setTitle:@"ThirdViewController" forState:UIControlStateNormal];
       

    [button addTarget:self action:@selector(onbtnClick)forControlEvents:UIControlEventTouchUpInside];
   
    [self.view addSubview:button];
    
}

- (void)onbtnClick
{
    [self dismissViewControllerAnimated:YES completion:nil];
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
