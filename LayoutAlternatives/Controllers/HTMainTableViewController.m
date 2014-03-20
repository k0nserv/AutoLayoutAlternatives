//
//  HTMainTableViewController.m
//  LayoutAlternatives
//
//  Created by Hugo Tunius on 19/03/14.
//  Copyright (c) 2014 Hugo Tunius. All rights reserved.
//

#import "HTMainTableViewController.h"

// Controllers
#import "HTBaseAutoLayoutViewController.h"

// View
#import "HTStandardAutoLayoutView.h"
#import "HTUIViewAutoLayoutView.h"
#import "HTKeepLayoutView.h"
#import "HTMasonryView.h"

static NSString *const kViewClass = @"viewClass";
static NSString *const kNameKey = @"name";

@interface HTMainTableViewController ()
@property(nonatomic, readonly) NSArray *availableControllers;
@end

@implementation HTMainTableViewController
@synthesize availableControllers = _availableControllers;

- (NSArray *)availableControllers {
    if (nil == _availableControllers) {
        _availableControllers = @[
            @{ kNameKey : @"Standard AutoLayout", kViewClass : [HTStandardAutoLayoutView class] },
            @{ kNameKey : @"Keeplayout", kViewClass : [HTKeepLayoutView class] },
            @{ kNameKey : @"Masonry", kViewClass : [HTMasonryView class] },
            @{ kNameKey : @"UIView + AutoLayout", kViewClass : [HTUIViewAutoLayoutView class] }
        ];
    }

    return _availableControllers;
}

- (id)initWithStyle:(UITableViewStyle)style {
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.availableControllers.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *const cellIdentifier = @"CellIdentifier";

    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];

    if (nil == cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    }

    NSDictionary *current = self.availableControllers[indexPath.row];
    cell.textLabel.text = current[kNameKey];

    return cell;
}

#pragma mark - UITableViewDelegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    NSDictionary *current = self.availableControllers[indexPath.row];
    Class viewClass = current[kViewClass];

    id newController = [[HTBaseAutoLayoutViewController alloc] initWithViewClass:viewClass];

    [self.navigationController pushViewController:newController animated:YES];
}

@end