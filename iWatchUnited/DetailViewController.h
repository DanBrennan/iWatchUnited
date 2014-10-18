//
//  DetailViewController.h
//  iWatchUnited
//
//  Created by Daniel Brennan on 30/09/2014.
//  Copyright (c) 2014 Daniel Brennan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "VenueDetails.h"
#import <iAd/iAd.h>

@interface DetailViewController : UIViewController <ADBannerViewDelegate>

@property (strong, nonatomic) VenueDetails *detailItem;
@property (weak, nonatomic) IBOutlet UILabel *venueNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *emailLabel;
@property (weak, nonatomic) IBOutlet UITextView *commentsTextView;

@property (weak, nonatomic) IBOutlet UITextView *websiteTextView;
@property (weak, nonatomic) IBOutlet UITextView *addressTextView;

@property (weak, nonatomic) IBOutlet UITextView *phoneNumberTextView;

@end





