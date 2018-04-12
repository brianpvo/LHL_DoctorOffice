//
//  PatientManager.m
//  DoctorOffice
//
//  Created by Brian Vo on 2018-04-12.
//  Copyright © 2018 Brian Vo. All rights reserved.
//

#import "PrescriptionManager.h"

@implementation PrescriptionManager

- (instancetype)init
{
    self = [super init];
    if (self) {
        _symptomPrescriptions = [[NSMutableDictionary alloc] init];
    }
    return self;
}

// TO DO: ADD patientPrescriptionHistory and allow patient to be key and object to be prescription

-(void) listOfPrescription {
    [_symptomPrescriptions addEntriesFromDictionary:@{
                                                      @"Heartbroken": @"another companion",
                                                      @"Annoyance": @"keep your mouth closed"
                                                      }];
}

@end
