//
//  AppDelegate.h
//  ObjcTest
//
//  Created by 李志敬 on 2018/12/6.
//  Copyright © 2018年 李志敬. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

