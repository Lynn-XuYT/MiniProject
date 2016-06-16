//
//  MNMyDetailInfoViewController.m
//  MiniProject
//
//  Created by Lynn on 16/6/16.
//  Copyright © 2016年 TianAndTan. All rights reserved.
//

#import "MNMyDetailInfoViewController.h"


@interface MNMyDetailInfoViewController ()
{
    UIImageView *_imgView;
}

@end

@implementation MNMyDetailInfoViewController

- (void)loadView
{
    [super loadView];

}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:YES];
    _imgView = [[UIImageView alloc] initWithFrame:CGRectMake(50, 50, 50, 50)];
    _imgView.image = [UIImage imageNamed:@"icon"];
    [self.view addSubview:_imgView];
}

- (void)dealloc
{
    [_imgView removeFromSuperview];
    
}
@end
