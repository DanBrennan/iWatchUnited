//
//  VenueDetails.m
//  iWatchUnited
//
//  Created by Daniel Brennan on 26/09/2014.
//  Copyright (c) 2014 Daniel Brennan. All rights reserved.
//

#import "VenueDetails.h"

@implementation VenueDetails

- (id)initWithCountryName:(NSString*)country city:(NSString*)city venueName:(NSString*)venueName
              phoneNumber:(NSString*)phoneNumber
                  address:(NSString*)address email:(NSString*)email
                  website:(NSString*)website comments:(NSString*)comments redbar:(NSString*)redbar{
    
    if ((self = [super init])) {
        self.country = country;
        self.city = city;
        self.venueName = venueName;
        self.phoneNumber = phoneNumber;
        self.address = address;
        self.email = email;
        self.website = website;
        self.comments = comments;
        self.redbar = redbar;
    }
    
    return self;
    
}




@end
