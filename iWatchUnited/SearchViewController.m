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

//{
//    NSMutableArray *_countryPickerData;
//}


@property NSMutableArray *countryPickerData;

@end

@implementation SearchViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //for loop to iterate through self.venues
    //add countries to picker array if they dont already exist in there
    
    VenueDetails *x = [[VenueDetails alloc] init];
   
    self.countryPickerData = [[NSMutableArray alloc] init];
    
    for (int i = 0; i < self.venues.count; i++)
    {
       x  = self.venues[i];
        
        if (![self.countryPickerData containsObject:x.country]){
            [self.countryPickerData addObject:x.country];
        }        
    }

    
    // Connect data
    self.countryPicker.dataSource = self;
    self.countryPicker.delegate = self;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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



#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
   //if ([segue.identifier isEqualToString:@"searchCriteriaSegue"]) {
      //  NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        
        
        CityViewController *destinationViewController = segue.destinationViewController;
        destinationViewController.myTitle = self.countryPickerValue;

    //}
    
    
}

@end
