//
//  IntrtoAOBJcTests.m
//  IntrtoAOBJcTests
//
//  Created by Julian Centurion on 5/28/19.
//  Copyright © 2019 Mercadolibre. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "../IntrtoAOBJc/PrinterFactory.h"
#import "../IntrtoAOBJc/Printer.h"
#import "../IntrtoAOBJc/Audible.h"

@interface IntrtoAOBJcTests : XCTestCase

@end

@implementation IntrtoAOBJcTests
//1.- Ggeneramos tests para el factory
-(void)testPrinterType{
    
    id<PrinterProtocol> object = [PrinterFactory createPrinterForType:PrinterType];
    
    XCTAssertEqual([object class], [Printer class]);
}
    
-(void)testAudibleType{
    
    id<PrinterProtocol> object = [PrinterFactory createPrinterForType:AudibleType];
    
    XCTAssertEqual([object class], [Audible class]);
}
@end
