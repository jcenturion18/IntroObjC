//
//  PrinterFactory.h
//  IntrtoAOBJc
//
//  Created by Julian Centurion on 5/28/19.
//  Copyright © 2019 Mercadolibre. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PrinterProtocol.h"
NS_ASSUME_NONNULL_BEGIN
typedef enum : NSUInteger {
    PrinterType,
    AudibleType
} PrinterEnumType;

@interface PrinterFactory : NSObject
//1.- Primero creamos el printer
+(id<PrinterProtocol>)createPrinter;

//2.- Creamos un nuevo método que crea el printer a partir del type
+(id<PrinterProtocol>)createPrinterForType:(PrinterEnumType)type;
@end

NS_ASSUME_NONNULL_END
