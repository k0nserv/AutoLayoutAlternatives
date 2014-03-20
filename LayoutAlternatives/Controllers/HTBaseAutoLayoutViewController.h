//
//  HTBaseAutoLayoutViewController.h
//  LayoutAlternatives
//
//  Created by Hugo Tunius on 20/03/14.
//  Copyright (c) 2014 Hugo Tunius. All rights reserved.
//

#import <UIKit/UIKit.h>

@class HTBaseView;

@interface HTBaseAutoLayoutViewController : UIViewController
- (instancetype)initWithViewClass:(Class)viewClass;
@end
