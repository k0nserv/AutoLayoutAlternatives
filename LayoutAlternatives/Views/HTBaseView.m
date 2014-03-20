//
//  HTBaseView.m
//  LayoutAlternatives
//
//  Created by Hugo Tunius on 20/03/14.
//  Copyright (c) 2014 Hugo Tunius. All rights reserved.
//

#import "HTBaseView.h"

@implementation HTBaseView
@synthesize views = _views;

- (id)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        NSMutableArray *mutableViews = [NSMutableArray new];

        UIView *currentView = [[UIView alloc] initWithFrame:CGRectZero];
        // rgb(65.5%, 20%, 18.4%)
        currentView.backgroundColor = [UIColor colorWithRed:0.655 green:0.2 blue:0.184 alpha:1.0];
        [mutableViews addObject:currentView];
        [self addSubview:currentView];

        currentView = [[UIView alloc] initWithFrame:CGRectZero];
        // rgb(19.2%, 32.5%, 45.9%)
        currentView.backgroundColor = [UIColor colorWithRed:0.192 green:0.325 blue:0.459 alpha:1.0];
        [mutableViews addObject:currentView];
        [self addSubview:currentView];

        currentView = [[UIView alloc] initWithFrame:CGRectZero];
        // rgb(26.3%, 67.1%, 28.6%)
        currentView.backgroundColor = [UIColor colorWithRed:0.263 green:0.671 blue:0.286 alpha:1.0];
        [mutableViews addObject:currentView];
        [self addSubview:currentView];

        currentView = [[UIView alloc] initWithFrame:CGRectZero];
        // rgb(54.1%, 18.8%, 69.4%)
        currentView.backgroundColor = [UIColor colorWithRed:0.541 green:0.188 blue:0.694 alpha:1.0];
        [mutableViews addObject:currentView];
        [self addSubview:currentView];

        _views = [mutableViews copy];
    }
    return self;
}

@end