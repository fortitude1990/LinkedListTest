//
//  ResponderView.m
//  ObjcTest
//
//  Created by 李志敬 on 2018/12/28.
//  Copyright © 2018年 李志敬. All rights reserved.
//

#import "ResponderView.h"
#import "HitBtn.h"

@implementation ResponderView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (instancetype)init
{
    self = [super init];
    if (self) {
        HitBtn *btn = [HitBtn buttonWithType: UIButtonTypeSystem];
        [btn setTitle:@"点击一下" forState:UIControlStateNormal];
        [btn addTarget:self action:@selector(btnAction) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:btn];
        btn.frame = CGRectMake(100, 100, 100, 48);
        
        
    }
    return self;
}

- (UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event{
    
    return self.subviews.firstObject;
    
}

- (BOOL)pointInside:(CGPoint)point withEvent:(UIEvent *)event{
    return YES;
}

- (void)btnAction{
    
    NSLog(@"响应了");
    
    
    
}

@end
