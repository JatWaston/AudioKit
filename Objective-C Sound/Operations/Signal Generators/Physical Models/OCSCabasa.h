//
//  OCSCabasa.m
//  Objective-C Sound
//
//  Created by Aurelius Prochazka on 10/28/12.
//  Copyright (c) 2012 Hear For Yourself. All rights reserved.
//
//  Implementation of Csound's cabasa:
//  http://www.csounds.com/manual/html/cabasa.html
//

#import "OCSCabasa.h"

@interface OCSCabasa () {
    OCSConstant *idettack;
    OCSConstant *iamp;
    OCSConstant *inum;
    OCSConstant *idamp;
    OCSConstant *imaxshake;
}
@end

@implementation OCSCabasa

- (id)initWithDuration:(OCSConstant *)duration
             amplitude:(OCSConstant *)amplitude
{
    self = [super initWithString:[self operationName]];
    if (self) {
        idettack = duration;
        iamp = amplitude;
        
        inum = ocsp(512);
        idamp = ocsp(-0.5);
        imaxshake = ocsp(0);
        
    }
    return self;
}


- (void)setCount:(OCSConstant *)count {
	inum = count;
}

- (void)setDampingFactor:(OCSConstant *)dampingFactor {
	idamp = dampingFactor;
}

- (void)setEnergyReturn:(OCSConstant *)energyReturn {
	imaxshake = energyReturn;
}

- (NSString *)stringForCSD {
    return [NSString stringWithFormat:
            @"%@ cabasa %@, %@, %@, %@, %@",
            self, iamp, idettack, inum, idamp, imaxshake];
}

@end