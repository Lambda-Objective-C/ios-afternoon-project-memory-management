//
//  ContactsDetailVC.h
//  Contacts-MRC-Objective-C
//
//  Created by Seschwan on 11/19/19.
//  Copyright © 2019 Seschwan. All rights reserved.
//

#import <UIKit/UIKit.h>

//NS_ASSUME_NONNULL_BEGIN

@class Contact;
@class ContactController;

@interface ContactsDetailVC : UIViewController

@property ContactController *controller;
@property Contact *contact;


@end

//NS_ASSUME_NONNULL_END
