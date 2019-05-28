//
//  Printer.m
//  IntrtoAOBJc
//
//  Created by Julian Centurion on 5/28/19.
//  Copyright © 2019 Mercadolibre. All rights reserved.
//

#import "Printer.h"
@interface Printer()
@property (nonatomic) BOOL elBool;
@end

@implementation Printer

//Creamos el constructor para probar como guardar valores en las properties
-(instancetype)initWithBoolValue:(BOOL)valor{
    self = [super init];
    if (self){
        self.elBool = valor;
    }
    return self;
}
    
+ (void)print:(NSString*)string
{
    NSLog(@"Prin on pinter. %@", string);
}

- (void)print:(NSString*)string
{
    NSLog(@"Prin on pinter. %@", string);
}
-(void)printAString:(NSString *)string andOtherString:(NSString *)otherString withNumber:(NSNumber *)number{
    NSLog(@"El más largo, %@ %@ %@", string, otherString, number);
}
    
@end
