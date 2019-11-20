//
//  ContactController.h
//  Contacts-MRC-Objective-C
//
//  Created by Seschwan on 11/19/19.
//  Copyright © 2019 Seschwan. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Contact;

//NS_ASSUME_NONNULL_BEGIN

@interface ContactController : NSObject

@property (nonatomic, readonly, copy)NSArray<Contact *> *contacts;
- (void)addedContacts;
- (void)addContact:(Contact *)contact;

@end

//NS_ASSUME_NONNULL_END
