//
//  ContactsVC.m
//  Contacts-MRC-Objective-C
//
//  Created by Seschwan on 11/19/19.
//  Copyright © 2019 Seschwan. All rights reserved.
//

#import "ContactsVC.h"
#import "ContactsDetailVC.h"
#import "ContactController.h"
#import "Contact.h"

@interface ContactsVC ()

@property (retain, nonatomic) IBOutlet UITableView *tableView;


@end

@implementation ContactsVC

//- (instancetype)initWithCoder:(NSCoder *)coder
//{
//    self = [super initWithCoder:coder];
//    if (self) {
//    }
//    return self;
//}

- (void)viewDidLoad {
    [super viewDidLoad];
    _controller = [[ContactController alloc] init];
    [self.controller addedContacts];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [self.tableView reloadData];
//    if (!self.controller)
//    {
//        self.controller = [[ContactController alloc] init];
//
//    }
    [self.tableView reloadData];
    
}


- (void)dealloc {
    [_tableView release];
    [_controller release];
    [super dealloc];
}



- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return _controller.contacts.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    
    Contact *contact = [self.controller.contacts objectAtIndex:indexPath.row];
    cell.textLabel.text = contact.name;
   
    
    return cell;
}


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"EditContact"])
    {
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        ContactsDetailVC *detailVC = segue.destinationViewController;
        detailVC.controller = self.controller;
        detailVC.contact = [self.controller.contacts objectAtIndex:indexPath.row];
    } else if ([segue.identifier isEqualToString:@"AddContact"])
    {
        ContactsDetailVC *detailVC = segue.destinationViewController;
        detailVC.controller = self.controller;
    }
    
}
@end
