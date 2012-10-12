//
//  OCSPhasingControl.m
//  Sonification
//
//  Created by Adam Boulanger on 10/11/12.
//  Copyright (c) 2012 Adam Boulanger. All rights reserved.
//

#import "OCSPhasingControl.h"

@interface OCSPhasingControl () {
    OCSControl *freq;
    OCSConstant *phs;
}

@end

@implementation OCSPhasingControl

- (id)initWithFrequency:(OCSControl *)frequency
{
    self = [super initWithString:[self operationName]];
    if (self) {
        freq = frequency;
        phs  = ocsp(0);
    }
    return self;
}

- (void)setPhase:(OCSConstant *)phase {
    phs = phase;
}

- (NSString *)stringForCSD {
    return [NSString stringWithFormat:
            @"%@ phasor %@, %@",
            self, freq, phs];
}

@end