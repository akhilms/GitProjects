//
//  DataCart.m
//  XmlParser
//
//  Created by Akhil on 12/27/13.
//  Copyright (c) 2013 RapidValue. All rights reserved.
//

#import "DataCart.h"

@implementation DataCart
@synthesize newsFeeds;

+(id)cart {

    static DataCart *sharedCart = nil;
    @synchronized(self) {
        if (sharedCart == nil)
            sharedCart = [[self alloc] init];
    }
    return sharedCart;
}

-(void)initValues{
    
    if(!newsFeeds) {
        newsFeeds = [[NSMutableArray alloc] init];
    }
    
}

-(NewsFeedObject *)getNewsFeedAtIndex:(int)index
{
    [self initValues];
    NewsFeedObject * currentNewsCell =  [[NewsFeedObject alloc]init];
    currentNewsCell =[newsFeeds objectAtIndex:index];
    return currentNewsCell;
}



@end
