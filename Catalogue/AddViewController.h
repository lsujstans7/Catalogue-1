//
//  AddViewController.h
//  Catalogue
//
//  Created by iOS Camp on 8/6/12.
//  Copyright (c) 2012 kcfancher. All rights reserved.
//

#import <UIKit/UIKit.h>

@class AddViewController;
@class Item;
@protocol AddViewControllerDelegate <NSObject>


-(void)addViewController:(AddViewController *)addVC didSaveItem:(Item *)newItem;
-(void)addViewControllerDidCancel:(AddViewController *)addVC;
@end



@interface AddViewController : UITableViewController

- (IBAction)cancel:(UIBarButtonItem *)sender;
- (IBAction)done:(UIBarButtonItem *)sender;

@property (weak, nonatomic) IBOutlet UITextField *nameTextField;
@property (weak, nonatomic) IBOutlet UITextField *creatorTextField;
@property (weak, nonatomic) IBOutlet UITextField *priceTextField;
@property (weak, nonatomic) IBOutlet UITextField *idTextField;
@property (weak, nonatomic) IBOutlet UISegmentedControl *itemTypeSelector;

@property (weak, nonatomic) id <AddViewControllerDelegate> delegate;

@end
