//
//  CQDesignerController.m
//  iOS_Storage
//
//  Created by caiqiang on 2019/5/28.
//  Copyright © 2019 蔡强. All rights reserved.
//

#import "CQDesignerController.h"
#import "CQClassClusterController.h"
#import "CQSimpleFactoryViewController.h"

@interface CQDesignerController ()<UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) NSArray *dataArray;

@end

@implementation CQDesignerController

- (NSArray *)dataArray {
    if (!_dataArray) {
        _dataArray = @[@"类簇",
                       @"简单工厂"];
    }
    return _dataArray;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.tableView = [[UITableView alloc] initWithFrame:self.view.bounds];
    [self.view addSubview:self.tableView];
    self.tableView.dataSource = self;
    self.tableView.delegate = self;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.dataArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *cellReuseID = @"cellReuseID";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellReuseID];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellReuseID];
    }
    cell.textLabel.text = self.dataArray[indexPath.row];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    CQBaseViewController *vc;
    switch (indexPath.row) {
        case 0:
        {
            vc = [[CQClassClusterController alloc] init];
        }
            break;
            
        case 1:
        {
            vc = [[CQSimpleFactoryViewController alloc] init];
        }
            break;
            
        default:
            break;
    }
    [self.navigationController pushViewController:vc animated:YES];
}

@end
