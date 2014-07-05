//
//  ViewController.m
//  Grain
//
//  Created by Aurelius Prochazka on 6/30/14.
//  Copyright (c) 2014 Hear For Yourself. All rights reserved.
//

#import "ViewController.h"
#import "AKFoundation.h"
#import "GrainInstrument.h"

@interface ViewController () {
    GrainInstrument *grainInstrument;
}

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    AKOrchestra *orch = [[AKOrchestra alloc] init];
    grainInstrument = [[GrainInstrument alloc] init];
    [orch addInstrument:grainInstrument];
    [[AKManager sharedAKManager] runOrchestra:orch];
}


- (IBAction)start:(id)sender {
    [grainInstrument play];
}
- (IBAction)stop:(id)sender {
    [grainInstrument stop];
}


@end