//
//  HTBaseView.h
//  LayoutAlternatives
//
//  Created by Hugo Tunius on 20/03/14.
//  Copyright (c) 2014 Hugo Tunius. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HTBaseView : UIView
@property(nonatomic, readonly) NSArray *views;

- (void)setup;
@end
