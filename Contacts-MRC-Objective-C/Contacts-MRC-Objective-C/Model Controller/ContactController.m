//
//  ContactController.m
//  Contacts-MRC-Objective-C
//
//  Created by Seschwan on 11/19/19.
//  Copyright © 2019 Seschwan. All rights reserved.
//

#import "ContactController.h"
#import "Contact.h"

@interface ContactController ()

@property (nonatomic)NSMutableArray<Contact *> *interalContacts;

@end


@implementation ContactController

- (instancetype)init
{
    self = [super init];
    if (self) {
        _interalContacts = [[NSMutableArray alloc] init];
        
    }
    return self;
}

- (void)addedContacts
{
    Contact *contact1 = [[Contact alloc] initWithName:@"Bobbert" email:@"B@B.com" phone:@"555-555-5555"];
    Contact *contact2 = [[Contact alloc] initWithName:@"Robert" email:@"R@R.com" phone:@"444-444-4444"];
    Contact *contact3 = [[Contact alloc] initWithName:@"Glabert" email:@"G@G.com" phone:@"333-333-3333"];
    
    [_interalContacts addObject:contact1];
    [contact1 release];
    
    [_interalContacts addObject:contact2];
    [contact2 release];
    
    [_interalContacts addObject:contact3];
    [contact3 release];
}

- (NSArray<Contact *> *)contacts
{
    return [[self.interalContacts copy] autorelease];
    
}

- (void)addContact:(Contact *)contact
{
    [self.interalContacts addObject:contact];
    
}



@end
