//
//  MyTableViewCell.m
//  TestCellLayout
//
//  Created by iceboxi on 2015/5/27.
//  Copyright (c) 2015年 iceboxi. All rights reserved.
//

#import "MyTableViewCell.h"

@implementation MyTableViewCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)layoutSubviews {
    [super layoutSubviews];
    
    CGRect frame = self.myLabel.frame;
    CGSize size = [self.myLabel.text sizeWithFont:self.myLabel.font constrainedToSize:CGSizeMake(frame.size.width, frame.size.height) lineBreakMode:NSLineBreakByTruncatingTail];
    
    self.myLabel.frame = CGRectMake(frame.origin.x, frame.origin.y, size.width, size.height);
    
    CGRect frame2 = self.number.frame;
    self.number.frame = CGRectMake(frame.origin.x+size.width, frame2.origin.y, frame2.size.width, frame2.size.height);
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
    
    // Configure the view for the selected state
}

@end
