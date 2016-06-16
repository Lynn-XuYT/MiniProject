//
//  UITableViewCell+Custom.h
//  MiniProject
//
//  Created by Lynn on 16/6/15.
//  Copyright © 2016年 TianAndTan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UITableViewCell (Custom)

- (void)updataTableView:(UITableView *)tableView atIndexPath:(NSIndexPath *)indexPath withSeparatorStartX:(CGFloat)startX;
@end
