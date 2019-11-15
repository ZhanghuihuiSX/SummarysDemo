//
//  NextViewController.m
//  SummaryDemo
//
//  Created by 张慧慧 on 2018/9/18.
//  Copyright © 2018年 Aisino. All rights reserved.
//

#import "NextViewController.h"
#import "ThreeViewController.h"
@interface NextViewController ()

@end

@implementation NextViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    self.navigationItem.title = @"第二个界面";
    if (self.nameBlock) {
        self.nameBlock(@"张大宝");
    }

    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [[NSNotificationCenter defaultCenter] postNotificationName:@"notificationMessageLogRefresh" object:self userInfo:@{@"isRefresh":@"1"}];
    });
    
    
    UIButton *jumpBtn = [[UIButton alloc] initWithFrame:CGRectMake(100, 200, 100, 200)];
    [jumpBtn setBackgroundColor:[UIColor blueColor]];
    [jumpBtn addTarget:self action:@selector(jumpClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:jumpBtn];
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(getObjecgt:) name:@"SecondViewControllerCenter" object:nil];

}

- (void)getObjecgt:(NSNotification *)notification
{
    NSLog(@"notification.object = %@",notification.object);
}

- (void) jumpClick {
    ThreeViewController *TVC = [[ThreeViewController alloc] init];
    [self.navigationController pushViewController:TVC animated:YES];
}

- (void)dealloc{
    NSLog(@"释放");
}
//网络请求失败的code
/*
 -1（未知的错误）
 
 -999（请求被取消）
 
 -1000（请求的URL错误，无法启动请求）
 
 -1001（请求超时）
 
 -1002（不支持的URL Scheme）
 
 -1003（URL的host名称无法解析，即DNS有问题）
 
 -1004（连接host失败）
 
 -1005（连接过程中被中断）
 
 -1006（同- -1003）
 
 -1007（重定向次数超过限制）
 
 -1008（无法获取所请求的资源）
 
 -1009（断网状态）
 
 -1010（重定向到一个不存在的位置）
 
 -1011（服务器返回数据有误）
 
 -1012（身份验证请求被用户取消）
 
 -1013（访问资源需要身份验证）
 
 -1014（服务器报告URL数据不为空，却未返回任何数据）
 
 -1015（响应数据无法解码为已知内容编码）
 
 -1016（请求数据存在未知内容编码）
 
 -1017（响应数据无法解析）
 
 -1018（漫游时请求数据，但是漫游开关已关闭）
 
 -1019（EDGE、GPRS等网络不支持电话和流量同时进行，当正在通话过程中，请求失败错误码）
 
 -1020（手机网络不允许连接）
 
 -1021（请求的body流被耗尽）
 
 -1100（请求的文件路径上文件不存在）
 
 -1101（请求的文件只是一个目录，而非文件）
 
 -1102（缺少权限无法读取文件）
 
 -1103（资源数据大小超过最大限制）
 
 // SSL errors
 
 -1200（安全连接失败）
 -1201（服务器证书过期）
 -1202（不受信任的根服务器签名证书）
 -1203（服务器证书没有任何根服务器签名）
 -1204（服务器证书还未生效）
 -1205（服务器证书被拒绝）
 -1206（需要客户端证书来验证SSL连接）
 -2000（请求只能加载缓存中的数据，无法加载网络数据）
 // Download and file I/O errors
 
 -3000（下载操作无法创建文件）
 -3001（下载操作无法打开文件）
 -3002（下载操作无法关闭文件）
 -3003（下载操作无法写文件）
 -3004（下载操作无法删除文件）
 -3005（下载操作无法移动文件）
 -3006（下载操作在下载过程中，对编码文件进行解码时失败）
 -3007（下载操作在下载完成后，对编码文件进行解码时失败）
 */
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
