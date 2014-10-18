//
//  CityViewController.h
//  iWatchUnited
//
//  Created by Daniel Brennan on 06/10/2014.
//  Copyright (c) 2014 Daniel Brennan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>
#import <iAd/iAd.h>

@interface CityViewController : UITableViewController <NSFetchedResultsControllerDelegate, ADBannerViewDelegate>

@property (strong, nonatomic) NSFetchedResultsController *fetchedResultsController;
@property (strong, nonatomic) NSManagedObjectContext *managedObjectContext;
@property (strong, nonatomic) NSString *myTitle;
@property (weak, nonatomic) NSMutableArray *venues;


@end
