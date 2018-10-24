//
//  DetailViewController.m
//  iWatchUnited
//
//  Created by Daniel Brennan on 30/09/2014.
//  Copyright (c) 2014 Daniel Brennan. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()
{
    BOOL _bannerIsVisible;
    ADBannerView *_adBanner;
}
@end

@implementation DetailViewController

#pragma mark - Managing the detail item

- (void)setDetailItem:(id)newDetailItem {
    if (_detailItem != newDetailItem) {
        _detailItem = newDetailItem;
        
        self.title = _detailItem.venueName;
        [self.navigationController.navigationBar setBarTintColor:[UIColor blackColor]];
        [self.navigationController.navigationBar
         setTitleTextAttributes:@{NSForegroundColorAttributeName : [UIColor whiteColor]}];
        
//        UIImageView *backgroundView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"badge.jpeg"]];
//        [self.view addSubview:backgroundView];
//        
        
            
        // Update the view.
        [self configureView];
    }
}

- (void)configureView {
    // Update the user interface for the detail item.
    if (self.detailItem) {
        self.venueNameLabel.text = _detailItem.venueName;
        self.addressTextView.text = _detailItem.address;
        self.emailLabel.text = _detailItem.email;
        self.commentsTextView.text = _detailItem.comments;
        
//        self.websiteTextView.editable = NO;
//        self.websiteTextView.dataDetectorTypes = UIDataDetectorTypeLink;
       self.websiteTextView.text = _detailItem.website;

        
        
//        self.phoneNumberTextView.editable = NO;
//        self.phoneNumberTextView.dataDetectorTypes = UIDataDetectorTypePhoneNumber;
        self.phoneNumberTextView.text = _detailItem.phoneNumber;

    }
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self configureView];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - iAds

//- (void)viewDidAppear:(BOOL)animated
//{
//    [super viewDidAppear:animated];
//    
//    _adBanner = [[ADBannerView alloc] initWithFrame:CGRectMake(0, self.view.frame.size.height, 320, 50)];
//    _adBanner.delegate = self;
//}
//
//- (void)bannerViewDidLoadAd:(ADBannerView *)banner
//{
//    if (!_bannerIsVisible)
//    {
//        // If banner isn't part of view hierarchy, add it
//        if (_adBanner.superview == nil)
//        {
//            [self.view addSubview:_adBanner];
//        }
//        
//        [UIView beginAnimations:@"animateAdBannerOn" context:NULL];
//        
//        // Assumes the banner view is just off the bottom of the screen.
//        banner.frame = CGRectOffset(banner.frame, 0, -banner.frame.size.height);
//        
//        [UIView commitAnimations];
//        
//        _bannerIsVisible = YES;
//    }
//}
//
//
//
//- (void)bannerView:(ADBannerView *)banner didFailToReceiveAdWithError:(NSError *)error
//{
//    NSLog(@"Failed to retrieve ad");
//    
//    if (_bannerIsVisible)
//    {
//        [UIView beginAnimations:@"animateAdBannerOff" context:NULL];
//        
//        // Assumes the banner view is placed at the bottom of the screen.
//        banner.frame = CGRectOffset(banner.frame, 0, banner.frame.size.height);
//        
//        [UIView commitAnimations];
//        
//        _bannerIsVisible = NO;
//    }
//}



@end
