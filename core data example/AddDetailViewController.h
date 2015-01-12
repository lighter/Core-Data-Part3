//
//  AddDetailViewController.h
//  core data example
//
//  Created by syue yuan lai on 12/5/20.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Phone.h"
#import "AppDelegate.h"
@interface AddDetailViewController : UIViewController
{
    UITextField *name_;
    UITextField *number_;
}
@property (strong, nonatomic) IBOutlet UITextField *name;
@property (strong, nonatomic) IBOutlet UITextField *number;
@property (retain, nonatomic) AppDelegate *app;

-(IBAction)save:(id)sender;

@end
