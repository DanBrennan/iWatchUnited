//
//  SearchViewController.m
//  iWatchUnited
//
//  Created by Daniel Brennan on 04/10/2014.
//  Copyright (c) 2014 Daniel Brennan. All rights reserved.
//

#import "SearchViewController.h"
#import "MasterViewController.h"

@interface SearchViewController ()

@end

@implementation SearchViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    if ([segue.identifier isEqualToString:@"searchCriteriaSegue"]) {
      //  NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        
        
        MasterViewController *destinationViewController = segue.destinationViewController;
        destinationViewController.title = @"rrr";
        
        //RecipeDetailViewController *destViewController = segue.destinationViewController;
        //destViewController.recipeName = [recipes objectAtIndex:indexPath.row];
    }
    
    
}


- (IBAction)buttonClick:(UIButton *)sender {
}


@end
