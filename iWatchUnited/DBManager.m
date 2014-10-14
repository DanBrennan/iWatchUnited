//
//  DBManager.m
//  iWatchUnited
//
//  Created by Daniel Brennan on 02/10/2014.
//  Copyright (c) 2014 Daniel Brennan. All rights reserved.
//

#import "DBManager.h"
#import "VenueDetails.h"

@implementation DBManager

@synthesize venues = _venues;


- (NSMutableArray *)getVenueData{
   
    NSError *error;
    NSString *path = [[NSBundle mainBundle] pathForResource:@"RNDataUTF8" ofType:@"txt"];
        
    NSString *fileContents = [NSString stringWithContentsOfFile:path encoding:NSUTF8StringEncoding error:&error];
    
    if (error)
        NSLog(@"Error reading file: %@", error.localizedDescription);
    
    
    self.venues = [[NSMutableArray alloc] init];
    
    NSArray* rows = [fileContents componentsSeparatedByString:@"\n"];
    
    for (NSString *row in rows){
        NSArray* columns = [row componentsSeparatedByString:@","];
        
        [_venues addObject:[[VenueDetails alloc] initWithCountryName:columns[0] city:columns[1] venueName:columns[2] phoneNumber:columns[3] address:columns[4] email:columns[5] website:columns[6] comments:columns[7]]];
    
    }

    
   // NSLog(@"return: %@", _venues);
    
    return _venues;
    
    
}



@end
