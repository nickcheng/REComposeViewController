//
//  NSString+nLibrary.m
//  NextDay
//
//  Created by nickcheng on 13-1-21.
//  Copyright (c) 2013年 nx. All rights reserved.
//

#import "NSString+nLibrary.h"

@implementation NSString (nLibrary)

- (NSString *)substringByChineseLength:(NSInteger) length {
  float number = 0.f;
  for (int i = 0; i < self.length; i++) {
    NSString *character = [self substringWithRange:NSMakeRange(i, 1)];
    if ([character lengthOfBytesUsingEncoding:NSUTF8StringEncoding] == 3) {
      number++;
    } else {
      number = number + 0.5;
    }
    
    if (number >= length)
      return [self substringWithRange:NSMakeRange(0, i + 1)];
  }
  
  return self;
}

-(int)chineseLength {
  float number = 0.0;
  for (int index = 0; index < [self length]; index++) {
    NSString *character = [self substringWithRange:NSMakeRange(index, 1)];
    
    if ([character lengthOfBytesUsingEncoding:NSUTF8StringEncoding] == 3) {
      number++;
    } else {
      number = number + 0.5;
    }
  }
  return ceil(number);
}

@end
