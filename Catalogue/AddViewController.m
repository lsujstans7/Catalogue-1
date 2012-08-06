//
//  AddViewController.m
//  Catalogue
//
//  Created by iOS Camp on 8/6/12.
//  Copyright (c) 2012 kcfancher. All rights reserved.
//

#import "AddViewController.h"
#import "Item.h"
#import "Book.h"
#import "CD.h"

@interface AddViewController ()

@end

@implementation AddViewController
@synthesize nameTextField;
@synthesize creatorTextField;
@synthesize priceTextField;
@synthesize idTextField;
@synthesize itemTypeSelector;
@synthesize delegate = _delegate;

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)viewDidUnload
{
    [self setNameTextField:nil];
    [self setCreatorTextField:nil];
    [self setPriceTextField:nil];
    [self setIdTextField:nil];
    [self setItemTypeSelector:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (IBAction)cancel:(UIBarButtonItem *)sender {
    [self dismissModalViewControllerAnimated:YES];
    [self.delegate addViewControllerDidCancel:self];
}

- (IBAction)done:(UIBarButtonItem *)sender {
    [self dismissModalViewControllerAnimated:YES];
    
    Item *newItem;
    
    if (self.itemTypeSelector.selectedSegmentIndex == 0) 
    {
        //if 0 then book type selected
        newItem = [Book bookWithTitle:self.nameTextField.text 
                               author:self.creatorTextField.text 
                                price:[self.priceTextField.text floatValue] 
                 identificationNumber:[self.idTextField.text intValue]];
                   
    }
    else if (self.itemTypeSelector.selectedSegmentIndex == 1) 
    {
        newItem = [CD cdWithArtist:self.creatorTextField.text 
                             label:self.nameTextField.text 
                             price:[self.priceTextField.text floatValue] 
              identificationNumber:[self.idTextField.text intValue]];
    }
    [self.delegate addViewController:self didSaveItem:newItem];
}
@end
