//
//  main.m
//  IntrtoAOBJc
//
//  Created by Julian Centurion on 5/28/19.
//  Copyright © 2019 Mercadolibre. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import "Printer.h"
#import "Audible.h"
#import "PrinterFactory.h"

int main(int argc, char * argv[]) {
    @autoreleasepool {
        
        
        //1.- Probando objetos y prints
//        NSString* aString = @"Hola";
//
//        NSString* lo = [NSString stringWithFormat:@"%f", 10.0];
//
//        NSArray *array = @[@"Hola", @"mundo"];
//
//        for (NSString *string in array) {
//            NSLog(@"%@", string);
//        }
//
//        NSDictionary<NSString*, NSString*> * dic= @{
//                               @"Hola":@"mundo",
//                               @"key": @"10"
//                               };
//
//        NSLog(@"%@", lo);
        
        // 2.- Creamos un objeto Printer y armamos la lógica ahí adentro. Solo tiene un método print:NSString
//        Printer *printer = [[Printer alloc] init];
//        [printer print:@"Hola mundo"]; -> método de instancia
//        [Printer print:@"Hola mundo"]; -> método de clase
        
        //3.- Creamos PrinterProtocol y llevamos los métodos de objeto ahí
//        id <PrinterProtocol> printer = [[Printer alloc] init];
        
        //4.- Agremamos un segundo método y revisamos la sintaxis
//        [printer printAString:@"A string" andOtherString:@"Other sting" withNumber:@10];
        
        //5.- Creamos el objeto Audible que extiende del protocolo
//        id <PrinterProtocol> printer = [[Audible alloc] init];
        
        //6. Creamos un factory con un método estático que nos da un Printer
//        id <PrinterProtocol> printer = [PrinterFactory createPrinter];
        
        //7.- Creamos un nuevo método estatico que a partir de un type (enum) nos da un  id<printerProtocol>
        id <PrinterProtocol> printer = [PrinterFactory createPrinterForType:AudibleType];
    
        [printer print:@"Hola mundo"];
        
        [printer printAString:@"A string" andOtherString:@"Other sting" withNumber:@10];
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}
