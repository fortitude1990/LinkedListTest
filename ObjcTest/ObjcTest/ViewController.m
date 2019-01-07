//
//  ViewController.m
//  ObjcTest
//
//  Created by 李志敬 on 2018/12/6.
//  Copyright © 2018年 李志敬. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"
#import "ResponderView.h"
#import "LinkedListTest.h"





@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
//    [self arrayTest];
    
    [self responderView];
    [self listNodeTest];
    
}

- (void)arrayTest{
    
    NSMutableArray *mArray = [NSMutableArray arrayWithCapacity:0];
    [mArray addObject:@"1"];
    [mArray addObject:@"2"];
    
    NSArray *array;
    array = [mArray copy];
    
    [mArray addObject:@"3"];
    
    NSLog(@"mArray: %@", mArray);
    NSLog(@"array: %@", array);
    
    
    NSMutableDictionary *dic = [NSMutableDictionary dictionary];
    [dic setObject:@"" forKey:@"lili"];
    
    Person *person = [[Person alloc] init];
    [dic setObject:person forKey:@"person"];
    
    
    NSLog(@"%@", dic);
    
//    [[NSUserDefaults standardUserDefaults] setObject:person forKey:@"person"];
//    NSLog(@"%@", [[NSUserDefaults standardUserDefaults] objectForKey:@"person"]);
    
  
    
    
}


- (void)responderView{
    
    ResponderView *responderView = [[ResponderView alloc] init];
    responderView.backgroundColor = [UIColor yellowColor];
    responderView.frame = self.view.bounds;
    [self.view addSubview:responderView];
    
}


- (void)listNodeTest{
    
    
    [LinkedListTest test];
    
//    LinkedListTest *test = [[LinkedListTest alloc] init];
//    [test test];
    
}






@end
