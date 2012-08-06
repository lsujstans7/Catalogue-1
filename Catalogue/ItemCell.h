//
//  ItemCell.h
//  Catalogue
//
//  Created by kcfancher on 8/3/12.
//  Copyright (c) 2012 kcfancher. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ItemCell : UITableViewCell

// Here we had to create our IBOutlet connections manually
// Since we are using a UITableViewCell subclass instance
// Xcode does not allow us to drag the outlets directly to
// the class.
@property (nonatomic,weak) IBOutlet UILabel *mainLabel;
@property (nonatomic,weak) IBOutlet UILabel *smallLabel;
@property (nonatomic,weak) IBOutlet UILabel *rightLabel;
@property (nonatomic,weak) IBOutlet UIImageView *itemImage;
@end
