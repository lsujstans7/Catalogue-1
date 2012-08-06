//
//  DetailViewController.m
//  Catalogue
//
//  Created by iOS Camp on 8/6/12.
//  Copyright (c) 2012 kcfancher. All rights reserved.
//

#import "DetailViewController.h"
#import "Book.h"
#import "CD.h"

@interface DetailViewController ()

@end

@implementation DetailViewController
@synthesize nameLabel = _nameLabel;
@synthesize creatorLabel = _creatorLabel;
@synthesize priceLabel = _priceLabel;
@synthesize indLabel = _indLabel;

@synthesize item = _item;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    self.priceLabel.text = [NSString stringWithFormat:@"$%.02f", self.item.price];
    self.indLabel.text =  [NSString stringWithFormat:@"%d", self.item.identificationNumber];
    if ([self.item isMemberOfClass: [Book class]]) 
    {
        Book *book = (Book *)self.item;
        self.nameLabel.text = book.title;
        self.creatorLabel.text = book.author;
    }
    else if ([self.item isMemberOfClass:[CD class]]) 
    {
        CD *cd = (CD *)self.item;
        self.nameLabel.text = cd.label;
        self.creatorLabel.text = cd.artist;
    }
}

- (void)viewDidUnload
{
    [self setNameLabel:nil];
    [self setCreatorLabel:nil];
    [self setPriceLabel:nil];
    [self setIndLabel:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
