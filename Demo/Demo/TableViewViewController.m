//
//  TableViewViewController.m
//  Demo
//
//  Created by Lct on 2019/11/4.
//  Copyright © 2019 Lct. All rights reserved.
//

#import "TableViewViewController.h"

@interface TableViewViewController () <UITableViewDelegate,UITableViewDataSource>

@end

@implementation TableViewViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self initTableView];
}

-(void) initTableView{
    
    // 创建UItableView，style选择Grouped或Plain，这里我们以Grouped为例
    UITableView *tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 20, self.view.frame.size.width, self.view.frame.size.height-20) style:UITableViewStyleGrouped];
    
    // 声明 tableView 的代理和数据源
    tableView.delegate = self;
    tableView.dataSource = self;
    
    // 添加到 view 上
    [self.view addSubview:tableView];

}

// tableView 中 Section 的个数
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 6;
}

// 每个 Section 中的 Cell 个数
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 3;
}

// 设置每个 Cell
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    // 创建一个cellID，用于cell的重用
    NSString *cellID = @"cellID";
    
    // 从tableview的重用池里通过cellID取一个cell
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellID];
    if (cell == nil) {
         // 如果tableview的重用池中没有取到，就创建一个新的cell，style为Value2，并用cellID对其进行标记。
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue2 reuseIdentifier:cellID];
    }
    
    // 设置 cell 的标题
    cell.textLabel.text = [NSString stringWithFormat:@"这是第%li个cell", (long)indexPath.row];
    
    // 设置 cell 的副标题
    cell.detailTextLabel.text = @"副标题";
    
    return cell;
}

// 设置 section 的 header 文字
-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    return [NSString stringWithFormat:@"header-%li", (long)section];
}
// 设置 section 的 footer 文字
-(NSString *)tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section {
    return [NSString stringWithFormat:@"footer-%li", (long)section];
}

// 设置 section 的 header 高度
-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    return 50;
}

// 设置 section 的 footer 高度
-(CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section {
    return 50;
}

// 自定义 section 的 header
-(UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
    UIView *headerView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 100, 10)];
    headerView.backgroundColor = [UIColor redColor];
    return headerView;
}
// 自定义 section 的 footer
-(UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section {
    UIView *footerView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 100, 10)];
    footerView.backgroundColor = [UIColor orangeColor];
    return footerView;
}

// 设置 cell 的高度
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 80;
}

// cell 的文字缩进
-(NSInteger)tableView:(UITableView *)tableView indentationLevelForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 10;
}

// 选中了 cell 时触发
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    NSLog(@"选中了第%li个cell", (long)indexPath.row);
}

// 设置 cell 是否允许左滑
-(BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    return true;
}
// 设置默认的左滑按钮的title
-(NSString *)tableView:(UITableView *)tableView titleForDeleteConfirmationButtonForRowAtIndexPath:(NSIndexPath *)indexPath {
    return @"按钮钮钮";
}
// 点击左滑出现的按钮时触发
-(void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    NSLog(@"点击左滑出现的按钮时触发");
}
// 左滑结束时调用(只对默认的左滑按钮有效，自定义按钮时这个方法无效)
-(void)tableView:(UITableView *)tableView didEndEditingRowAtIndexPath:(NSIndexPath *)indexPath {
    NSLog(@"左滑结束");
}

// 自定义左滑cell时的按钮和触发方法
- (nullable NSArray<UITableViewRowAction *> *)tableView:(UITableView *)tableView editActionsForRowAtIndexPath:(NSIndexPath *)indexPath {
    // 创建第一个按钮和触发事件
    UITableViewRowAction *cellActionA = [UITableViewRowAction rowActionWithStyle:UITableViewRowActionStyleDefault title:@"按钮-1" handler:^(UITableViewRowAction *action, NSIndexPath *indexPath){
        // 在此写点击按钮时的触发事件
        // ......
        NSLog(@"点击了 按钮-1");
    }];
    // 定义按钮的颜色
    cellActionA.backgroundColor = [UIColor greenColor];

    // 创建第二个按钮和触发事件
    UITableViewRowAction *cellActionB = [UITableViewRowAction rowActionWithStyle:UITableViewRowActionStyleDefault title:@"按钮-2" handler:^(UITableViewRowAction *action, NSIndexPath *indexPath){
        // 在此写点击按钮时的触发事件
        // ......
    }];
    // 注意这里返回的是一个按钮组，即使只定义了一个按钮也要返回一个组
    return @[cellActionA, cellActionB];
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
