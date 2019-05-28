//
//  PrinterFactory.m
//  IntrtoAOBJc
//
//  Created by Julian Centurion on 5/28/19.
//  Copyright © 2019 Mercadolibre. All rights reserved.
//

#import "PrinterFactory.h"
#import "Printer.h"
#import "Audible.h"
@implementation PrinterFactory
+(id<PrinterProtocol>)createPrinter{
    return [[Printer alloc]initWithBoolValue:YES];
}
+(id<PrinterProtocol>)createPrinterForType:(PrinterEnumType)type{
    
    //1.- Primero hicimos un if
//    if(type==PrinterType){
//        return [PrinterFactory createPrinter];
//    }
//    return [[Audible alloc] init];
    
    //2.- Luego armamos un dic con los valores
    NSDictionary* typeDic = @{
                              @(PrinterType): [Printer class],
                              @(AudibleType): [Audible class]
                              };
    
    // 3.- Lo escribimos de una forma más "legible"
    NSMutableDictionary* dicMutable = [[NSMutableDictionary alloc] init];
    [dicMutable setObject:[Printer class] forKey:@(PrinterType)];
    [dicMutable setObject:[Audible class] forKey:@(AudibleType)];
    
    id object = typeDic[@(type)];
    return [[object alloc] init];
}
@end
