//
//  ViewController.m
//  SocialConnect
//
//  Created by SDT-1 on 2014. 1. 21..
//  Copyright (c) 2014년 SDT-1. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
- (IBAction)showActivityVC:(id)sender {
    UIImage *image = [UIImage imageNamed:@"image.png"];
    NSArray *items = @[@"액티비티 뷰 컨트롤러 테스팅!", image];
    
    // 액티비티 뷰 컨트롤러 생성
    UIActivityViewController * vc = [[UIActivityViewController alloc] initWithActivityItems:items applicationActivities:nil];
    
    // 액티비티가 종료된 다음에 동작할 핸들러
    vc.completionHandler = ^(NSString *activityType, BOOL completed){
        NSLog(@"%@의 동작을 마쳤습니다.", activityType);
    };
    
    // 모달로 표시
    [self presentViewController:vc animated:YES completion:nil];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
