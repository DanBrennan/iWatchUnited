//
//  VenueDetails.h
//  iWatchUnited
//
//  Created by Daniel Brennan on 26/09/2014.
//  Copyright (c) 2014 Daniel Brennan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface VenueDetails : NSObject

@property NSString *venueName;
@property NSString *phoneNumber;
@property NSString *address;
@property NSString *email;
@property NSString *website;
@property NSString *comments;

- (id)initWithVenueName:(NSString*)venueName phoneNumber:(NSString*)phoneNumber
        address:(NSString*)address email:(NSString*)email
        website:(NSString*)website comments:(NSString*)comments;


@end
