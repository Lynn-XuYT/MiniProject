//
//  MNMyInfoPicCell.m
//  MiniProject
//
//  Created by Lynn on 16/6/16.
//  Copyright © 2016年 TianAndTan. All rights reserved.
//

#import "MNMyInfoPicCell.h"

@implementation MNMyInfoPicCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    
    if (self) {
        
        [self addSubviews];
    }
    
    return self;
}

- (void)addSubviews
{
    
    UIImageView *iconImg = [[UIImageView alloc] initWithFrame:CGRectMake(10, 7.5, 50, 50)];
    iconImg.image = [UIImage imageNamed:@"icon"];
    iconImg.layer.cornerRadius = 25;
    iconImg.layer.masksToBounds = YES;
    [self.contentView addSubview:iconImg];
}
@end
