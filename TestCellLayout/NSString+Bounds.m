//
//  NSString+Bounds.m
//  TestCellLayout
//
//  Created by iceboxi on 2015/5/28.
//  Copyright (c) 2015年 iceboxi. All rights reserved.
//

#import "NSString+Bounds.h"

@implementation NSString (Bounds)
- (CGSize)boundSize:(CGSize)boundSize withFont:(UIFont *)font lineBreakMode:(NSLineBreakMode)mode {
    CGSize resultSize = CGSizeZero;
    if (font == nil)
        return resultSize;
    
    NSMutableParagraphStyle *paragraphStyle = [NSMutableParagraphStyle new];
    paragraphStyle.lineBreakMode = mode;
    NSDictionary *attributes = @{NSFontAttributeName : font,
                                 NSParagraphStyleAttributeName : paragraphStyle};
    
    resultSize = [self boundingRectWithSize:boundSize options:(NSStringDrawingUsesLineFragmentOrigin | NSStringDrawingUsesFontLeading) attributes:attributes context:nil].size;
    
    resultSize.height = ceil(resultSize.height);
    resultSize.width = ceil(resultSize.width);
    if (resultSize.width > boundSize.width) {
        resultSize.width = boundSize.width;
    }
    
    return resultSize;
}
@end
