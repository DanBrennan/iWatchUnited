//
//  DetailViewController.h
//  iWatchUnited
//
//  Created by Daniel Brennan on 30/09/2014.
//  Copyright (c) 2014 Daniel Brennan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "VenueDetails.h"

@interface DetailViewController : UIViewController

@property (strong, nonatomic) VenueDetails *detailItem;
@property (weak, nonatomic) IBOutlet UILabel *venueNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *phoneNumberLabel;



@property (weak, nonatomic) IBOutlet UILabel *addressLabel;
@property (weak, nonatomic) IBOutlet UILabel *emailLabel;
@property (weak, nonatomic) IBOutlet UILabel *websiteLabel;
@property (weak, nonatomic) IBOutlet UILabel *commentsLabel;


@end





