//
//  MYSFormNumberToStringValueTransformer.m
//  MYSForms
//
//  Created by Adam Kirk on 5/14/14.
//  Copyright (c) 2014 Mysterious Trousers. All rights reserved.
//

#import "MYSFormNumberToStringValueTransformer.h"

@implementation MYSFormNumberToStringValueTransformer

+ (Class)transformedValueClass
{
    return [UIImage class];
}

+ (BOOL)allowsReverseTransformation
{
    return YES;
}

- (NSString *)transformedValue:(NSNumber *)value
{
    return [NSString stringWithFormat:@"%@", value];
}

- (NSNumber *)reverseTransformedValue:(NSString *)value
{
    return [NSNumber numberWithFloat:[value floatValue]];
}

@end
