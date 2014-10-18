//
//  SearchViewController.m
//  iWatchUnited
//
//  Created by Daniel Brennan on 04/10/2014.
//  Copyright (c) 2014 Daniel Brennan. All rights reserved.
//

#import "SearchViewController.h"
#import "CityViewController.h"
#import "VenueDetails.h"


@interface SearchViewController ()
{
    BOOL _bannerIsVisible;
    ADBannerView *_adBanner;
}
@property NSMutableArray *countryPickerData;

@end

@implementation SearchViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //for loop to iterate through self.venues
    //add countries to picker array if they dont already exist in there
    
    VenueDetails *venue = [[VenueDetails alloc] init];
   
    self.countryPickerData = [[NSMutableArray alloc] init];
    
    for (int i = 0; i < self.venues.count; i++)
    {
       venue  = self.venues[i];
        
        if (![self.countryPickerData containsObject:venue.country]){
            [self.countryPickerData addObject:venue.country];
        }
    }

    // Connect data
    self.countryPicker.dataSource = self;
    self.countryPicker.delegate = self;
    
    
}

#pragma mark - Picker

// The number of columns of data
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 1;
}

// The number of rows of data
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    return self.countryPickerData.count;
}

// The data to return for the row and component (column) that's being passed in
- (NSString*)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    
    return self.countryPickerData[row];
}

// Catpure the picker view selection
- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
    // This method is triggered whenever the user makes a change to the picker selection.
    // The parameter named row and component represents what was selected.
    
    
    self.countryPickerValue = self.countryPickerData[row];

    
}

//-(UIView *)pickerView:(UIPickerView *)pickerView viewForRow:(NSInteger)row forComponent:(NSInteger)component reusingView:(UIView *)view
//{
//    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, pickerView.frame.size.width, 44)];
//  //  label.backgroundColor = [UIColor lightGrayColor];
//    label.textColor = [UIColor blackColor];
//    label.font = [UIFont fontWithName:@"HelveticaNeue-Bold" size:18];
//   // label.text = [NSString stringWithFormat:@"  %d", row+1];
//    return label;
//}

//- (UIView *)pickerView:(UIPickerView *)pickerView viewForRow:(NSInteger)row forComponent:(NSInteger)component reusingView:(UIView *)view{
//    UILabel* tView = (UILabel*)view;
//    if (!tView){
//        tView = [[UILabel alloc] init];
//        tview.
//    }
//    // Fill the label text here
//
//    return tView;
//}



#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
   //if ([segue.identifier isEqualToString:@"searchCriteriaSegue"]) {
      //  NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
    
        CityViewController *destinationViewController = segue.destinationViewController;
        destinationViewController.myTitle = self.countryPickerValue;
    
        destinationViewController.venues = self.venues;

    //}
    
    
}

#pragma mark - iAds

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
    _adBanner = [[ADBannerView alloc] initWithFrame:CGRectMake(0, self.view.frame.size.height, 320, 50)];
    _adBanner.delegate = self;
}

- (void)bannerViewDidLoadAd:(ADBannerView *)banner
{
    if (!_bannerIsVisible)
    {
        // If banner isn't part of view hierarchy, add it
        if (_adBanner.superview == nil)
        {
            [self.view addSubview:_adBanner];
        }
        
        [UIView beginAnimations:@"animateAdBannerOn" context:NULL];
        
        // Assumes the banner view is just off the bottom of the screen.
        banner.frame = CGRectOffset(banner.frame, 0, -banner.frame.size.height);
        
        [UIView commitAnimations];
        
        _bannerIsVisible = YES;
    }
}



- (void)bannerView:(ADBannerView *)banner didFailToReceiveAdWithError:(NSError *)error
{
    NSLog(@"Failed to retrieve ad");
    
    if (_bannerIsVisible)
    {
        [UIView beginAnimations:@"animateAdBannerOff" context:NULL];
        
        // Assumes the banner view is placed at the bottom of the screen.
        banner.frame = CGRectOffset(banner.frame, 0, banner.frame.size.height);
        
        [UIView commitAnimations];
        
        _bannerIsVisible = NO;
    }
}


@end
