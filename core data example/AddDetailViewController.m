//
//  AddDetailViewController.m
//  core data example
//
//  Created by syue yuan lai on 12/5/20.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "AddDetailViewController.h"

@interface AddDetailViewController ()

@end

@implementation AddDetailViewController
@synthesize name = name_, number = number_, app;

-(IBAction)save:(id)sender
{
    app = [[UIApplication sharedApplication] delegate];
    NSManagedObjectContext *context = [app managedObjectContext];
    Phone *phone = [NSEntityDescription insertNewObjectForEntityForName:@"Phone" inManagedObjectContext:context];
    
    if (name_.text.length <= 0 || number_.text.length <= 0 ) {
        NSLog(@"Nope");
    }
    else {
        phone.name = name_.text;
        phone.number = [NSNumber numberWithInteger:[number_.text integerValue]];
        [self.navigationController popViewControllerAnimated:YES];
    }
    
    NSError *error;
    
    if (![context save:&error]) {
        NSLog(@"Woops");
    }
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
