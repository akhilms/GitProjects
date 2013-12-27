//
//  DataCart.h
//  XmlParser
//
//  Created by Akhil on 12/27/13.
//  Copyright (c) 2013 RapidValue. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NewsFeedObject.h"

@interface DataCart : NSObject

@property (nonatomic, strong) NSMutableArray * newsFeeds;

+(id) cart;

-(NewsFeedObject * )getNewsFeedAtIndex :(int)index;

@end

