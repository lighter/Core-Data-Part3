//
//  DetailViewController.h
//  core data example
//
//  Created by syue yuan lai on 12/5/20.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Phone.h"
#import "AppDelegate.h"

@interface DetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;

@property (strong, nonatomic) IBOutlet UITextField *detailName;
@property (strong, nonatomic) IBOutlet UITextField *detailNumber;

@property (strong, nonatomic) AppDelegate *app;

-(IBAction)save:(id)sender;

@end
