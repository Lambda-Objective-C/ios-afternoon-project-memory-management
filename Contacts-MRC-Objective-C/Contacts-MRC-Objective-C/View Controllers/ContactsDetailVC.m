//
//  ContactsDetailVC.m
//  Contacts-MRC-Objective-C
//
//  Created by Seschwan on 11/19/19.
//  Copyright © 2019 Seschwan. All rights reserved.
//

#import "ContactsDetailVC.h"
#import "ContactController.h"
#import "Contact.h"

@interface ContactsDetailVC ()

@property (retain, nonatomic) IBOutlet UITextField *nameTextField;
@property (retain, nonatomic) IBOutlet UITextField *phoneTextField;
@property (retain, nonatomic) IBOutlet UITextField *emailTextField;


@end

@implementation ContactsDetailVC

- (instancetype)init
{
    self = [super init];
    if (self) {
        _controller = [[ContactController alloc] init];
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    if (self.contact)
    {
        // Hide the save button
    }
    [self updateViews];
}


- (void)updateViews
{
    self.title = self.contact.name ?: @"Add A New Contact";
    
    if (!self.isViewLoaded || !self.contact) { return; }
    self.nameTextField.text = self.contact.name;
    self.phoneTextField.text = self.contact.phone;
    self.emailTextField.text = self.contact.email;
}

- (IBAction)saveBtnPressed:(UIBarButtonItem *)sender {
    Contact *contact = [[Contact alloc] initWithName:self.nameTextField.text email:self.emailTextField.text phone:self.phoneTextField.text];
    [self.controller addContact:contact];
    [self.navigationController popViewControllerAnimated:YES];
    [contact release];
    
}



- (void)dealloc {
    [_nameTextField release];
    [_phoneTextField release];
    [_emailTextField release];
    [super dealloc];
}
@end
