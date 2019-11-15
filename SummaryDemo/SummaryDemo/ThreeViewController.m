//
//  ThreeViewController.m
//  SummaryDemo
//
//  Created by 张慧慧 on 2018/9/20.
//  Copyright © 2018年 Aisino. All rights reserved.
//

#import "ThreeViewController.h"

@interface ThreeViewController ()

@end

@implementation ThreeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
//    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(notificationLogInfo:) name:@"InterfacialTransferNotification" object:nil];
    NSString *keyStr = [[NSUserDefaults standardUserDefaults] objectForKey:@"key"];
    NSLog(@"keyStr ==== %@",keyStr);
    
    
    
    
//    NSString *index;
//    NSLog(@"1=%@",[index lastPathComponent]); //从路径中获得完整的文件名（带后缀）
//    NSLog(@"2=%@",[index stringByDeletingLastPathComponent]); //
//    NSLog(@"3=%@",[index pathExtension]);  //从路径中获得完整的文件名不带'.'）
//    NSLog(@"4=%@",[index stringByDeletingPathExtension]);//路径”标准化“
//    NSLog(@"5=%@",[index stringByAbbreviatingWithTildeInPath]);//通过把波浪号替换为当前用户的主目录，来把2013_50.zip
//    NSLog(@"6=%@",[index stringByExpandingTildeInPath]);
//    NSLog(@"7=%@",[index stringByStandardizingPath]); //返回标准格式路径
//    NSLog(@"8=%@",[index stringByResolvingSymlinksInPath]);
//    NSLog(@"9=%@",[[index lastPathComponent] stringByDeletingPathExtension]); //获取文件名字
/*
    对应结果
    
    1= 2013_50.zip
    
    2= /Users/junzoo/Library/Application Support/iPhone Simulator/7.0.3/Applications/63925F20-AF97-4610-AF1C-B6B4157D1D92/Documents/DownLoad/books
    
    3= zip
    
    4= /Users/junzoo/Library/Application Support/iPhone Simulator/7.0.3/Applications/63925F20-AF97-4610-AF1C-B6B4157D1D92/Documents/DownLoad/books/2013_50
    
    5= ~/Documents/DownLoad/books/2013_50.zip
    
    6= /Users/junzoo/Library/Application Support/iPhone Simulator/7.0.3/Applications/63925F20-AF97-4610-AF1C-B6B4157D1D92/Documents/DownLoad/books/2013_50.zip
    
    7= /Users/junzoo/Library/Application Support/iPhone Simulator/7.0.3/Applications/63925F20-AF97-4610-AF1C-B6B4157D1D92/Documents/DownLoad/books/2013_50.zip
    
    8= /Users/junzoo/Library/Application Support/iPhone Simulator/7.0.3/Applications/63925F20-AF97-4610-AF1C-B6B4157D1D92/Documents/DownLoad/books/2013_50.zip
    
    9= 2013_50
    */
  
   

    
    
}
/*
还有其他的一些文件操作
+ (NSString *)pathWithComponents（NSArray *)components
根据components中的元素来构建路径.
- (NSArray *)pathComponents
解析路径,返回构成路径的各个部分.
- (NSString *)lastPathComponent
提取路径中的最后一个组成部分
- (NSString *)pathExtension
从路径中最后一个组成部分中提取扩展名

- (NSString *)stringByAppendingPathComponent（NSString*)path
将path添加到现有路径末尾

- (NSString *)stringByAppendingPathExtension（NSString *)ext

将指定的扩展名添加到现有路径的最后一个组成部分上
- (NSString *)stringByDeletingLastPathComponent
删除路径中的最后一个组成部分
- (NSString *)stringByDeletingPathExtension
从文件的最后一部分删除扩展名
- (NSString *)stringByExpandingTildeInPath
将路径中的代字符扩展成用户主目录(~)或指定用户的主目录(~user)
- (NSString *)stringByResolvingSymlinksInPath
尝试解析路径中的符号链接
- (NSString *)stringByStandardizingPath
解析路径中的~,(..)父目录,(.)当前目录和符号链接来标准化路径.

常用的路径工具函数:
NSString * NSUserName (void);
返回当前用户的登录名
NSString * NSFullUserName (void);
返回当前用户的完整用户名
NSString * NSHomeDirectory (void);
返回当前用户主目录的路径
NSString * NSHomeDirectoryForUser ( NSString *userName)
返回用户userName的主目录

NSString * NSTemporaryDirectory (void);
返回可用于创建临时文件的路径目录

NSArray * NSSearchPathForDirectoriesInDomains (
                                               NSSearchPathDirectory directory,
                                               NSSearchPathDomainMask domainMask,
                                               BOOL expandTilde
                                               );
用户查找特定的目录,如: NSDocumentationDirectory, NSUserDirectory等等


复制文件和使用NSProcessInfo类

常用的NSProcessInfo类

+ (NSProcessInfo *)processInfo
返回当前进程信息

- (NSArray *)arguments
以NSString对象数字的形式返回当前进程的参数

- (NSDictionary *)environment
返回变量/值对字典,以描述当前的环境变量(比如PATH等等)

- (int)processIdentifier
返回进程PID

- (NSString *)processName
返回当前正在执行的进程名称

- (NSString *)globallyUniqueString
每次调用该方法时,都会返回不同的单值字符串,可以生成临时文件名

- (NSString *)hostName
返回主机系统名

- (NSUInteger)operatingSystem
返回表示操作系统的数字

- (NSString *)operatingSystemName
返回操作系统的名称

- (NSString *)operatingSystemVersionString
返回操作系统版本
 */
//- (void)notificationLogInfo:(NSNotification *)notification {
//    if ([[notification.userInfo objectForKey:@"isRefresh"] isEqualToString:@"1"]) {
//        self.view.backgroundColor = [UIColor yellowColor];
//    }
//    [[NSNotificationCenter defaultCenter] removeObserver:self name:@"InterfacialTransferNotification" object:nil];
//}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
