//
//  UITableView+Custom.m
//  MiniProject
//
//  Created by Lynn on 16/6/15.
//  Copyright © 2016年 TianAndTan. All rights reserved.
//

#import "UITableView+Custom.h"

@implementation UITableView (Custom)

- (void)removeExtraTableViewSeparaterLine
{
    if (self.tableFooterView == nil) {
        UIView *footerView = [[UIView alloc] init];
        footerView.backgroundColor = [UIColor clearColor];
        self.tableFooterView = footerView;
    }
}
@end
