//
//  HTKeepLayoutView.m
//  LayoutAlternatives
//
//  Created by Hugo Tunius on 20/03/14.
//  Copyright (c) 2014 Hugo Tunius. All rights reserved.
//

#import "HTKeepLayoutView.h"

#import <KeepLayout/KeepLayout.h>

@implementation HTKeepLayoutView

- (void)setup {
    UIView *first = self.views[0], *second = self.views[1], *third = self.views[2], *fourth = self.views[3];

    CGSize size = CGSizeMake(self.bounds.size.width / 2, self.bounds.size.height / 2);
    for (UIView *v in self.views) {
        [v keepSize:size];
    }

    first.keepBottomAlignTo(self).equal = KeepRequired(0.0);
    first.keepRightAlignTo(self).equal = KeepRequired(0.0);

    second.keepLeftAlignTo(self).equal = KeepRequired(0.0);
    second.keepBottomAlignTo(self).equal = KeepRequired(0.0);

    third.keepTopAlignTo(self).equal = KeepRequired(0.0);
    third.keepRightAlignTo(self).equal = KeepRequired(0.0);

    fourth.keepTopAlignTo(self).equal = KeepRequired(0.0);
    fourth.keepLeftAlignTo(self).equal = KeepRequired(0.0);
}

@end
