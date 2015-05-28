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
    
    self.titleLabel.translatesAutoresizingMaskIntoConstraints = YES;
    self.number.translatesAutoresizingMaskIntoConstraints = YES;
    
    CGRect frame1 = self.titleLabel.frame;
    CGSize size = [self.titleLabel.text sizeWithFont:self.titleLabel.font constrainedToSize:CGSizeMake(200, frame1.size.height) lineBreakMode:NSLineBreakByTruncatingTail];
    
    self.titleLabel.frame = CGRectMake(frame1.origin.x, frame1.origin.y, size.width, size.height);
    
    CGRect frame2 = self.number.frame;
    CGSize size2 = [self.number.text sizeWithFont:self.number.font constrainedToSize:CGSizeMake(40, frame2.size.height) lineBreakMode:NSLineBreakByTruncatingTail];
    self.number.frame = CGRectMake(frame1.origin.x+size.width, frame2.origin.y, size2.width, size2.height);
    
    CGRect frame3 = self.third.frame;
    self.third.frame = CGRectMake(frame2.origin.x+size2.width, frame3.origin.y, frame3.size.width, frame3.size.height);
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
    
    // Configure the view for the selected state
}

@end
