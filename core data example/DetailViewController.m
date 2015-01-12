//
//  DetailViewController.m
//  core data example
//
//  Created by syue yuan lai on 12/5/20.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()
- (void)configureView;
@end

@implementation DetailViewController

@synthesize detailItem = _detailItem;
@synthesize detailNumber = _detailNumber;
@synthesize detailName = _detailName;
@synthesize app;

#pragma mark - Managing the detail item

-(IBAction)save:(id)sender
{
    app = [[UIApplication sharedApplication] delegate];
    NSManagedObjectContext *context = [app managedObjectContext];
    [self.detailItem setValue: self.detailName.text forKey:@"name"]; 
    [self.detailItem setValue: [NSNumber numberWithInteger:[self.detailNumber.text integerValue]]forKey:@"number"]; 
    [context save:nil];
    [self.navigationController popViewControllerAnimated:YES];
 }

- (void)setDetailItem:(id)newDetailItem
{
    if (_detailItem != newDetailItem) {
        _detailItem = newDetailItem;
        
        // Update the view.
        [self configureView];
    }
}

- (void)configureView
{
    // Update the user interface for the detail item.

    if (self.detailItem) {
        self.detailName.text = [[self.detailItem valueForKey:@"name"] description];
        self.detailNumber.text = [[self.detailItem valueForKey:@"number"] description];
    }
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self configureView];

}

- (void)viewDidUnload
{
    [self setDetailName:nil];
    [self setDetailNumber:nil];
    [self setDetailNumber:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    self.detailName = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
