//
//  VenueDetails.m
//  iWatchUnited
//
//  Created by Daniel Brennan on 26/09/2014.
//  Copyright (c) 2014 Daniel Brennan. All rights reserved.
//

#import "VenueDetails.h"

@implementation VenueDetails

- (id)initWithVenueName:(NSString*)venueName phoneNumber:(NSString*)phoneNumber
                address:(NSString*)address email:(NSString*)email
                website:(NSString*)website comments:(NSString*)comments{
    
    
    if ((self = [super init])) {
        self.venueName = venueName;
        self.phoneNumber = phoneNumber;
        self.address = address;
        self.email = email;
        self.website = website;
        self.comments = comments;
    }
    
    return self;
}


@end
