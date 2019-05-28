//
//  Audible.m
//  IntrtoAOBJc
//
//  Created by Julian Centurion on 5/28/19.
//  Copyright © 2019 Mercadolibre. All rights reserved.
//

#import "Audible.h"

@implementation Audible

- (void)print:(NSString*)string
    {
        NSLog(@"Prin on Audible. %@", string);
    }
-(void)printAString:(NSString *)string andOtherString:(NSString *)otherString withNumber:(NSNumber *)number{
    NSLog(@"Audible El más largo, %@ %@ %@", string, otherString, number);
}
    
@end
