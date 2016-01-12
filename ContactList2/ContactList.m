//
//  ContactList.m
//  ContactList2
//
//  Created by Benson Huynh on 2016-01-12.
//  Copyright © 2016 Benson Huynh. All rights reserved.
//

#import "ContactList.h"

@implementation ContactList

- (instancetype)init
{
    self = [super init];
    if (self) {
        
        _storedContacts = [[NSMutableArray alloc] init];
        
    }
    return self;
}

-(void)addContact:(Contact *)newContact {
    
    [self.storedContacts addObject:newContact];
}

-(void)listAllContacts {
    for (Contact *contact in self.storedContacts) {
        NSLog(@"%@, %@", contact.name , contact.email);
    }
}


@end
