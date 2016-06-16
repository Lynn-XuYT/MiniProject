//
//  UITableViewCell+Custom.m
//  MiniProject
//
//  Created by Lynn on 16/6/15.
//  Copyright © 2016年 TianAndTan. All rights reserved.
//

#import "UITableViewCell+Custom.h"

@implementation UITableViewCell (Custom)

- (void)updataTableView:(UITableView *)tableView atIndexPath:(NSIndexPath *)indexPath withSeparatorStartX:(CGFloat)startX
{
    if ([[[UIDevice currentDevice] systemVersion] doubleValue] >= 8.0) {
        self.layoutMargins = UIEdgeInsetsZero;
        self.preservesSuperviewLayoutMargins = NO;
    }else if ([[[UIDevice currentDevice] systemVersion] doubleValue] >= 7.0){
        self.separatorInset = UIEdgeInsetsZero;
    }
    
    int row = indexPath.row;
    int section = indexPath.section;
    int rows = [tableView numberOfRowsInSection:section];
    
    if (row == rows -1) {
        self.separatorInset = UIEdgeInsetsMake(0, 0, 0, 0);
    }else if (startX != 0){
        self.separatorInset = UIEdgeInsetsMake(0, startX, 0, 0);
    }
}
@end
