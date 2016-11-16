//
//  ViewController.m
//  JCAlertView
//
//  Created by jon on 16/11/14.
//  Copyright © 2016年 jon. All rights reserved.
//

#import "ViewController.h"
#import "JCAlertView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)showAlertView:(id)sender {
    [[JCAlertView sharedInstance] showAlertController:self title:@"提示" message:@"这是一个测试" cancelTitle:@"取消" actionBlock:^(NSInteger buttonTag) {
        NSLog(@"点击了%zd",buttonTag);
    } otherButtonTitles:@"确定", nil];
}

- (IBAction)showActionSheet:(id)sender {
    [[JCAlertView sharedInstance] showActionSheetController:self title:@"提示" message:@"你打开的方式不对" cancelTitle:@"取消" destructive:@"放弃" actionBlock:^(NSInteger buttonTag) {
        NSLog(@"点击了%zd",buttonTag);
    } otherButtonTitles:@"确定", nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
