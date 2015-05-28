//
//  NSString+Bounds.h
//  TestCellLayout
//
//  Created by iceboxi on 2015/5/28.
//  Copyright (c) 2015年 iceboxi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface NSString (Bounds)
- (CGSize)boundSize:(CGSize)boundSize withFont:(UIFont *)font lineBreakMode:(NSLineBreakMode)mode;
@end
