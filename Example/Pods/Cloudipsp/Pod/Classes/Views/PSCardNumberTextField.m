//
//  PSCardNumberEdit.m
//  Cloudipsp
//
//  Created by Nadiia Dovbysh on 1/26/16.
//  Copyright © 2016 Сloudipsp. All rights reserved.
//

#import "PSCardNumberTextField.h"
#import "PSCardInputView.h"

@implementation PSCardNumberTextField

- (BOOL)isParentClass:(NSString *)className {
    return ([className isEqualToString:NSStringFromClass([PSCardNumberTextField class])] ||
            [className isEqualToString:NSStringFromClass([UITextField class])] ||
            [className isEqualToString:NSStringFromClass([PSCardInputView class])]);
}

- (void)checkCaller {
    NSString *sourceString = [[NSThread callStackSymbols] objectAtIndex:2];
    NSCharacterSet *separatorSet = [NSCharacterSet characterSetWithCharactersInString:@" -[]+?.,"];
    NSMutableArray *array = [NSMutableArray arrayWithArray:[sourceString  componentsSeparatedByCharactersInSet:separatorSet]];
    [array removeObject:@""];

    if (![self isParentClass:[array objectAtIndex:3]]) {
        @throw [NSException exceptionWithName:@"PSUnsupportedOperationExeption" reason:@"unsupported operation" userInfo:nil];
    }
}

- (NSString *)text {
   // [self checkCaller];
    return [super text];
}

- (void)setText:(NSString *)text {
    //[self checkCaller];
    return [super setText:text];
}

@end
