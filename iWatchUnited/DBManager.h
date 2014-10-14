//
//  DBManager.h
//  iWatchUnited
//
//  Created by Daniel Brennan on 02/10/2014.
//  Copyright (c) 2014 Daniel Brennan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DBManager : NSObject

@property (nonatomic) NSMutableArray *venues;

//make this a + to manage memory?
-(NSMutableArray *)getVenueData;

@end
