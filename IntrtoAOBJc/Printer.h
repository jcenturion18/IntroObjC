//
//  Printer.h
//  IntrtoAOBJc
//
//  Created by Julian Centurion on 5/28/19.
//  Copyright © 2019 Mercadolibre. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PrinterProtocol.h"

NS_ASSUME_NONNULL_BEGIN

//1.- Primero armamos una clase con dos métodos
//@interface Printer : NSObject
//+ (void)print:(NSString*)string;
//- (void)print:(NSString*)string;
//@end

//2.- Luego hicimos el protocolo, borramos el método definido en el mismo
//@interface Printer : NSObject <PrinterProtocol>
//+ (void)print:(NSString*)string;
//@end

//3.- Agregamos un init with a value para overridear el constructor
@interface Printer : NSObject <PrinterProtocol>
+ (void)print:(NSString*)string;
-(instancetype)initWithBoolValue:(BOOL)valor;
@end

NS_ASSUME_NONNULL_END
