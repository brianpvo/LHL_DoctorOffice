//
//  Patient.m
//  DoctorOffice
//
//  Created by Brian Vo on 2018-04-12.
//  Copyright © 2018 Brian Vo. All rights reserved.
//

#import "Patient.h"
#import "Doctor.h"

@implementation Patient

- (instancetype)initWithNameAndAge:(NSString *) name :(int) age
{
    self = [super init];
    if (self) {
        _name = name;
        _age = age;
        _validHealthCard = TRUE;
    }
    return self;
}

-(void)mySymptom:(NSString *) symptom {
    _symptom = symptom;
}

-(NSString *)requestMedication:(Doctor *) doctor {
    NSLog(@"%@: Please prescribe me medicine for %@\n", _name, _symptom);
    return _symptom;
}

@end
