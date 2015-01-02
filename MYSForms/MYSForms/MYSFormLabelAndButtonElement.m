//
//  MYSFormLabelAndButtonElement.m
//  MYSForms
//
//  Created by Adam Kirk on 5/7/14.
//  Copyright (c) 2014 Mysterious Trousers. All rights reserved.
//

#import "MYSFormLabelAndButtonElement.h"


@interface MYSFormLabelAndButtonElement () <MYSFormLabelAndButtonCellDelegate>
@end


@implementation MYSFormLabelAndButtonElement

+ (instancetype)labelAndButtonElementWithLabel:(NSString *)label button:(MYSFormButton *)button
{
    MYSFormLabelAndButtonElement *element = [self new];
    element.label = label;
    element.button = button;
    return element;
}

- (void)setCell:(MYSFormLabelAndButtonCell *)cell
{
    [super setCell:cell];
    cell.labelAndButtonCellDelegate = self;
}


#pragma mark - DELEGATE label and button cell

- (void)formLabelAndButtonCell:(MYSFormLabelAndButtonCell *)cell didTapButton:(MYSFormButton *)button
{
    if (button.action) button.action(self);
}

@end
