//
//  DetailViewController.m
//  iWatchUnited
//
//  Created by Daniel Brennan on 30/09/2014.
//  Copyright (c) 2014 Daniel Brennan. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

#pragma mark - Managing the detail item

- (void)setDetailItem:(id)newDetailItem {
    if (_detailItem != newDetailItem) {
        _detailItem = newDetailItem;
        
        self.title = _detailItem.venueName;
            
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
        self.commentsLabel.text = _detailItem.comments;
        
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

@end
