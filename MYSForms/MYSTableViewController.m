//
//  MYSTableViewController.m
//  MYSForms
//
//  Created by Adam Kirk on 5/2/14.
//  Copyright (c) 2014 Mysterious Trousers. All rights reserved.
//

#import "MYSTableViewController.h"
#import "MYSFormViewController.h"

// test models
#import "MYSFakeUser.h"


@implementation MYSTableViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.clearsSelectionOnViewWillAppear = NO;
}



#pragma mark - Actions

- (void)logInButtonWasTapped:(id)sender
{
    NSLog(@"Log in button was tapped");
}



#pragma mark - DELEGATE table view

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    // log in form
    if (indexPath.row == 0) {
        MYSFakeUser *user = [MYSFakeUser new];
        MYSFormViewController *formViewController = [MYSFormViewController newFormViewControllerWithModel:user];
        [formViewController addHeadlineElementWithString:@"Log In"];
        [formViewController addFootnoteElementWithString:@"A table view displays a list of items in a single column. UITableView is a subclass of UIScrollView, which allows users to scroll through the table, although UITableView allows vertical scrolling only. The cells comprising the individual items of the table are UITableViewCell objects; UITableView uses these objects to draw the visible rows of the table."];
        [formViewController addTextInputElementWithModelKeyPath:@"email" label:@"E-mail" placeholder:@"john@example.com"];
        [formViewController addTextInputElementWithModelKeyPath:@"password" label:@"Password" placeholder:nil];
        [formViewController addButtonElementWithTitle:@"Log In" target:self action:@selector(logInButtonWasTapped:)];
        [self.navigationController pushViewController:formViewController animated:YES];
    }
}






@end
