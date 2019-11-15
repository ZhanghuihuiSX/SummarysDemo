//
//  AppDelegate.h
//  SummaryDemo
//
//  Created by 张慧慧 on 2018/9/18.
//  Copyright © 2018年 Aisino. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

