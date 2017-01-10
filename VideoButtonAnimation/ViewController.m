//
//  ViewController.m
//  VideoButtonAnimation
//
//  Created by 孙俊 on 17/1/10.
//  Copyright © 2017年 Jun Sun. All rights reserved.
//

#import "ViewController.h"
#import "SJVideoBtn.h"

@interface ViewController ()
{
    BOOL _isRecording;
    SJVideoBtn * _btn;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _isRecording = NO;
    
    
    
    _btn = [[SJVideoBtn alloc] initWithFrame:CGRectMake(100, 200, 100, 100)];
    [_btn addTarget:self action:@selector(btnClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_btn];
}

-(void)btnClick{
    
    _isRecording = !_isRecording;
    //开始动画
    [_btn startRecording:_isRecording];

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
