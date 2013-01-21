//
//  NSString+nLibrary.h
//  NextDay
//
//  Created by nickcheng on 13-1-21.
//  Copyright (c) 2013年 nx. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (nLibrary)

/**
 Returns the sub-string of the receiver. Length is calculated by chinese length.
 
 @param length The length you want
 
 @return String you want
 
 @see chineseLength
 */
- (NSString *)substringByChineseLength:(NSInteger)length;

/**
 Returns length of  the receiver. Two English charactor count 1.
 
 @return The length of the receiver. Two English charactor count 1.
 */
- (int)chineseLength;

@end
