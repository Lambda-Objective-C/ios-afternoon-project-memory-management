//
//  Contact.m
//  Contacts-MRC-Objective-C
//
//  Created by Seschwan on 11/19/19.
//  Copyright © 2019 Seschwan. All rights reserved.
//

#import "Contact.h"

@implementation Contact

- (instancetype)initWithName:(NSString *)name email:(NSString *)email phone:(NSString *)phone
{
    if (self = [super init])
    {
        _name = name.copy;
        _email = email.copy;
        _phone = phone.copy;
    }
    return self;
}


@end
