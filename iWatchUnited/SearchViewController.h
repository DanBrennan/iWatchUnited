//
//  SearchViewController.h
//  iWatchUnited
//
//  Created by Daniel Brennan on 04/10/2014.
//  Copyright (c) 2014 Daniel Brennan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <iAd/iAd.h>

@interface SearchViewController : UIViewController<UIPickerViewDataSource, UIPickerViewDelegate, ADBannerViewDelegate>

@property (weak, nonatomic) IBOutlet UIButton *buttonDone;
@property (weak, nonatomic) NSString *countryPickerValue;
@property (weak, nonatomic) NSMutableArray *venues;

@property (weak, nonatomic) IBOutlet UIPickerView *countryPicker;



@end
