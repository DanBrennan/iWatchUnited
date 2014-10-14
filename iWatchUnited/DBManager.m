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
    
    // maybe for debugging...
   // NSLog(@"contents: %@", fileContents);
    
    
    self.venues = [[NSMutableArray alloc] init];
    
    //VenueDetails *venue = [VenueDetails alloc];
    
//    NSArray* rows =
//    [fileContents componentsSeparatedByCharactersInSet:
//     [NSCharacterSet newlineCharacterSet]];
    
    NSArray* rows = [fileContents componentsSeparatedByString:@"\n"];
    
    for (NSString *row in rows){
        NSArray* columns = [row componentsSeparatedByString:@","];
        
//        *venue =  [[VenueDetails alloc] initWithCountryName:columns[0] city:columns[1] venueName:columns[2] phoneNumber:columns[3] address:columns[4] email:columns[5]
//                  website:columns[6] comments:columns[7]];
//        
//        [_venues addObject:venue];
        
        NSLog(@"adding: %@", row);
        
        [_venues addObject:[[VenueDetails alloc] initWithCountryName:columns[0] city:columns[1] venueName:columns[2] phoneNumber:columns[3] address:columns[4] email:columns[5]
                                                             website:columns[6] comments:columns[7]]];
    
    }
    

    
    
    
//    VenueDetails *venue1 = [[VenueDetails alloc] initWithCountryName:@"England" city:@"London" venueName:@"The Pub Next Door" phoneNumber:@"020891929219" address:@"12 Old Street, London, W1 4GF" email:@"admin@thepubnextdoor" website:@"thepubnextdoor.com" comments:@"If it's televised - it's on!"];
//    VenueDetails *venue2 = [[VenueDetails alloc] initWithCountryName:@"England" city:@"London" venueName:@"Crest Hotel Sports Bar" phoneNumber:@"(02) 9358 2755 " address:@"111 Darlinghurst Road, Sydney 2011, Australia" email:@"" website:@"" comments:@""];
//    VenueDetails *venue3 = [[VenueDetails alloc] initWithCountryName:@"England" city:@"London" venueName:@"Elephant & Wheelbarrow" phoneNumber:@"03 9639 8444 " address:@"94-96 Bourke Street, Melbourne VIC 3000" email:@"" website:@"www.bourkest.elephantandwheelbarrow.com.au" comments:@"On the corner of Bourke St and Exhibition St"];
//    VenueDetails *venue4 = [[VenueDetails alloc] initWithCountryName:@"England" city:@"London" venueName:@"Moondyne Joe's" phoneNumber:@"08 9430 5513" address:@"173 Wray Ave, (Cnr Hampton Road), Fremantle, Western Australia 6160" email:@"" website:@"" comments:@"The big screen TV in the Sports Bar telecasts all AFL, UK Football, Rugby, NRL, Boxing, International Cricket and other major sporting events on channels such as Fox Sport, ESPN and Setanta, All events, where possible are shown live."];
//    
//   return _venues = [NSMutableArray arrayWithObjects:venue1, venue2, venue3, venue4, nil];
    
   NSLog(@"return: %@", _venues);
    
    return _venues;
    
    
}



@end
