//
//  ViewController.m
//  SummaryDemo
//
//  Created by 张慧慧 on 2018/9/18.
//  Copyright © 2018年 Aisino. All rights reserved.
//

#import "ViewController.h"
#import "NextViewController.h"
/*
 Notification  顺向传值失败，需要逆向传值
 */
@interface ViewController ()

@property (nonatomic, strong) UIButton *blockBtn;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    /*
     https://blog.csdn.net/zhangshichi/article/details/51329321
     */
    /**/
    self.view.backgroundColor = [UIColor whiteColor];
    self.navigationItem.title = @"总结";
    self.blockBtn = [[UIButton alloc] initWithFrame:CGRectMake(0, 100, 100, 20)];
    self.blockBtn.backgroundColor = [UIColor redColor];
    [self.blockBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [self.blockBtn addTarget:self action:@selector(blockClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.blockBtn];
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(notificationLogInfo:) name:@"notificationMessageLogRefresh" object:nil];
    
    
    
}
- (void)notificationLogInfo:(NSNotification *)notification {
    if ([[notification.userInfo objectForKey:@"isRefresh"] isEqualToString:@"1"]) {
        self.view.backgroundColor = [UIColor yellowColor];
    }
    [[NSNotificationCenter defaultCenter] removeObserver:self name:@"notificationMessageLogRefresh" object:nil];
}
- (void)blockClick {
    NextViewController *NVC = [[NextViewController alloc] init];
    NVC.nameBlock = ^(NSString *nameStr) {
        [self.blockBtn setTitle:nameStr forState:UIControlStateNormal];
    };
    [self.navigationController pushViewController:NVC animated:YES];


    [[NSUserDefaults standardUserDefaults] setObject:@"123" forKey:@"key"];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void)dealloc{
    NSLog(@"释放");
}

@end
