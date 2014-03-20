//
//  HTBaseAutoLayoutViewController.m
//  LayoutAlternatives
//
//  Created by Hugo Tunius on 20/03/14.
//  Copyright (c) 2014 Hugo Tunius. All rights reserved.
//

#import "HTBaseAutoLayoutViewController.h"

@interface HTBaseAutoLayoutViewController ()
@property(nonatomic, strong) Class viewClass;
@end

@implementation HTBaseAutoLayoutViewController

- (instancetype)initWithViewClass:(Class)viewClass {
    self = [super initWithNibName:nil bundle:nil];

    if (self) {
        self.viewClass = viewClass;
    }

    return self;
}

- (void)loadView {
    self.view = [[_viewClass alloc] initWithFrame:[UIScreen mainScreen].bounds];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor grayColor];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
