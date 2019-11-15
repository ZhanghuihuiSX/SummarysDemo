//
//  NextViewController.h
//  SummaryDemo
//
//  Created by 张慧慧 on 2018/9/18.
//  Copyright © 2018年 Aisino. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void (^nameBlock)(NSString *nameStr);

@interface NextViewController : UIViewController

@property (nonatomic, copy) nameBlock nameBlock;


@end
