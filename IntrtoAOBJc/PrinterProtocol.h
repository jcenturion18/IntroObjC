//
//  PrinterProtocol.h
//  IntrtoAOBJc
//
//  Created by Julian Centurion on 5/28/19.
//  Copyright © 2019 Mercadolibre. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol PrinterProtocol <NSObject>
- (void)print:(NSString*)string;
- (void)printAString:(NSString*)string andOtherString:(NSString*)otherString withNumber:(NSNumber*)number;
@end

NS_ASSUME_NONNULL_END
