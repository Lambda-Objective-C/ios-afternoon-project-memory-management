//
//  Contact.h
//  Contacts-MRC-Objective-C
//
//  Created by Seschwan on 11/19/19.
//  Copyright © 2019 Seschwan. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Contact : NSObject

@property (nonatomic)NSString *name;
@property (nonatomic)NSString *email;
@property (nonatomic)NSString *phone;

- (instancetype)initWithName:(NSString *)name email:(NSString *)email phone:(NSString *)phone;

@end

NS_ASSUME_NONNULL_END
