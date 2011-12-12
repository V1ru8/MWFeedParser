//
//  MWFeedItem+Custom.m
//  MWFeedParser
//
//  Created by Thomas Post on 12.12.11.
//  Copyright (c) 2011 Michael Waterfall. All rights reserved.
//

#import "MWFeedItem+Custom.h"

#import <objc/runtime.h>

static char CUSTOM_KEY;

@implementation MWFeedItem (Custom)

@dynamic custom;

- (void)setCustom:(NSString *)custom
{
    objc_setAssociatedObject(self, 
                             &CUSTOM_KEY,
                             custom,
                             OBJC_ASSOCIATION_COPY);
}
    
- (NSString *)custom
{
    return objc_getAssociatedObject(self, &CUSTOM_KEY);
}

@end
