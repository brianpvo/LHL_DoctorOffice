//
//  Doctor.h
//  DoctorOffice
//
//  Created by Brian Vo on 2018-04-12.
//  Copyright © 2018 Brian Vo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PrescriptionManager.h"
#import "Patient.h"

@interface Doctor : PrescriptionManager

@property (nonatomic) NSString* name;
@property (nonatomic) NSString* specialization;
@property (nonatomic) NSMutableSet* acceptedPatients;

- (instancetype)initWithNameAndSpeccialization:(NSString*)name :(NSString *)specialization;

-(BOOL)acceptPatient:(Patient *) patient;

-(NSString *)prescribePatient:(NSString *) patientSymptom;

-(void)addPatientPrescription:(NSString *) patientPrescription;

//-(NSMutableSet *) prescriptionHistory;

@end
