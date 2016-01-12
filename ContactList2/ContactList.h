//
//  ContactList.h
//  ContactList2
//
//  Created by Benson Huynh on 2016-01-12.
//  Copyright © 2016 Benson Huynh. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Contact.h"

@interface ContactList : NSObject

@property (strong, nonatomic) NSMutableArray *storedContacts;


-(void)addContact:(Contact *)newContact;
-(void)listAllContacts;

@end
