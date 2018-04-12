//
//  Doctor.m
//  DoctorOffice
//
//  Created by Brian Vo on 2018-04-12.
//  Copyright © 2018 Brian Vo. All rights reserved.
//

#import "Doctor.h"

@interface Doctor()

@property (nonatomic) NSMutableSet* patientPrescriptions;

@end

@implementation Doctor

- (instancetype)initWithNameAndSpeccialization:(NSString*)name :(NSString *)specialization
{
    self = [super init];
    if (self) {
        _name = name;
        _specialization = specialization;
        _patientPrescriptions = [[NSMutableSet alloc] init];
    }
    return self;
}

-(BOOL)acceptPatient:(Patient *) patient {
    if ([patient validHealthCard]) {
        NSLog(@"%@ has a valid health card\n", [patient name]);
        [_acceptedPatients addObject:patient];
        return TRUE;
    }
    return FALSE;
}

-(NSString *)prescribePatient:(NSString *)patientSymptom {
    [self listOfPrescription];
    for (NSString* key in [[self symptomPrescriptions] allKeys]) {
        if ([key isEqualToString:patientSymptom]) {
            
            return [[self symptomPrescriptions] objectForKey:patientSymptom];
        }
    }
    return @"Sorry your symptom is not curable\n";
}

-(void)addPatientPrescription:(NSString *) patientPrescription {
    [_patientPrescriptions addObject:patientPrescription];
    NSLog(@"%@", patientPrescription);
}

//+(NSDictionary*) listOfPrescription {
//    return @{
//                                                      @"Heartbroken": @"another companion",
//                                                      @"Annoyance": @"keep your mouth closed"
//                                                      };
//}

@end
