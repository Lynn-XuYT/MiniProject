//
//  MNMyInfoViewController.m
//  MiniProject
//
//  Created by Lynn on 16/6/15.
//  Copyright © 2016年 TianAndTan. All rights reserved.
//

#import "MNMyInfoViewController.h"

#import "MNMyDetailInfoViewController.h"

// View
#import "MNMyInfoPicCell.h"
#import "UITableView+Custom.h"
#import "UITableViewCell+Custom.h"

@interface MNMyInfoViewController ()<UITableViewDelegate, UITableViewDataSource>
@property(nonatomic, strong) UITableView *tableView;
@end

@implementation MNMyInfoViewController

- (instancetype)init{
    self = [super init];
    if (self) {

    }
    return self;
}

- (void)loadView
{
    [super loadView];
    self.view.backgroundColor = [UIColor whiteColor];
    _tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
//    _tableView.backgroundColor = [UIColor clearColor];
    _tableView.delegate = self;
    _tableView.dataSource = self;
    [_tableView removeExtraTableViewSeparaterLine];
    [self.view addSubview:_tableView];
    
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"设置" style:UIBarButtonItemStylePlain target:self action:@selector(rightBarBtnClicked)];
}

- (void)rightBarBtnClicked
{
    UIViewController *vc = [[UIViewController alloc] init];
    vc.view.backgroundColor = [UIColor whiteColor];
    vc.hidesBottomBarWhenPushed = YES;
    
    [self.navigationController pushViewController:vc animated:YES];
    vc.navigationItem.backBarButtonItem.title = @"asa";
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma UITableViewDataSource
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 2;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if (section == 0) {
        return 3;
    }
    return 2;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *reuseID;
    reuseID = @"icon1";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:reuseID];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:reuseID];
    }
    
    if(indexPath.section == 0)
    {
        if (indexPath.row == 0) {
            reuseID = @"icon2";
            MNMyInfoPicCell *cell = [tableView dequeueReusableCellWithIdentifier:reuseID];
            if (cell == nil) {
                cell = [[MNMyInfoPicCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:reuseID];
                cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
            }
            [cell updataTableView:tableView atIndexPath:indexPath withSeparatorStartX:65];
            return cell;
        }
    }
    return cell;
}


#pragma UITableViewDelegate
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.section == 0 && indexPath.row == 0) {
        return 65;
    }
    return 50;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    if (indexPath.section == 0 && indexPath.row == 0) {
        MNMyDetailInfoViewController *vc = [[MNMyDetailInfoViewController alloc] init];
        vc.hidesBottomBarWhenPushed = YES;
        [self.navigationController pushViewController:vc animated:YES];
    }
}
@end
