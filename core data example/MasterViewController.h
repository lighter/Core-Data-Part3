//
//  MasterViewController.h
//  core data example
//
//  Created by syue yuan lai on 12/5/20.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

#import <CoreData/CoreData.h>

#import "Phone.h"

@interface MasterViewController : UITableViewController <NSFetchedResultsControllerDelegate,UISearchDisplayDelegate, UISearchBarDelegate>
{
    BOOL savedSearchTerm;
}
@property (strong, nonatomic) NSFetchedResultsController *fetchedResultsController;
@property (strong, nonatomic) NSManagedObjectContext *managedObjectContext;

@property (nonatomic, retain) NSMutableArray *searchResults;
@property (nonatomic, retain) NSIndexPath *indexP;

@end
