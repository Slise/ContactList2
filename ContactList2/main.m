//
//  main.m
//  ContactList2
//
//  Created by Benson Huynh on 2016-01-12.
//  Copyright © 2016 Benson Huynh. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputCollector.h"
#import "ContactList.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        InputCollector* inputCollector = [[InputCollector alloc] init];
        ContactList* storedInfo = [[ContactList alloc] init];
        
        int quit = 1;
        
        while (quit == 1) {
            
            NSString *prompt = @"What would you like do next?\n new - Create a new contact\n list - List all contacts\n quit - exit";
            NSString* userInput =  [inputCollector inputForPrompt:prompt];
            
            if ([userInput isEqualToString:@"new"]) {
                
                Contact* userContact = [[Contact alloc] init];
                userContact.name = [inputCollector inputForPrompt:@"type full name:\n"];
                userContact.email = [inputCollector inputForPrompt:@"type email address:"];
                
                [storedInfo addContact:userContact];
                
            }
            else if ([userInput isEqualToString:@"list"]) {
                [storedInfo listAllContacts];
                
            }
            else if ([userInput isEqualToString:@"quit"]){
                quit = 0;
                
            }
            
        }
        
        return 0;
    }
}