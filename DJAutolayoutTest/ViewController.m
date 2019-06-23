//
//  ViewController.m
//  DJAutolayoutTest
//
//  Created by ioser on 2018/12/19.
//  Copyright © 2018年 Lenny. All rights reserved.
//

#import "ViewController.h"
#import "DJLabelTestUIView.h"

@interface ViewController ()

@property (nonatomic, strong) DJLabelTestUIView *testUIView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.testUIView = [[DJLabelTestUIView alloc] initWithFrame:self.view.bounds];
    self.testUIView.backgroundColor = [UIColor yellowColor];
    [self.view addSubview:self.testUIView];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
