//
//  MyTableViewCell.h
//  TestCellLayout
//
//  Created by iceboxi on 2015/5/27.
//  Copyright (c) 2015年 iceboxi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MyTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *number;
@property (weak, nonatomic) IBOutlet UILabel *third;

@end
