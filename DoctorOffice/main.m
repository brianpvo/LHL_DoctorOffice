//
//  main.m
//  DoctorOffice
//
//  Created by Brian Vo on 2018-04-12.
//  Copyright © 2018 Brian Vo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Doctor.h"
#import "Patient.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Patient *patient1 = [[Patient alloc] initWithNameAndAge:@"Bob" :20];
        Patient *patient2 = [[Patient alloc] initWithNameAndAge:@"Danny" :15];
        
        Doctor *doctor = [[Doctor alloc] initWithNameAndSpeccialization:@"Dr. McLovin" :@"Love"];
        
        //[[doctor symptomPrescriptions] setObject:@"another companion" forKey:@"Heartbroken"];
        [patient1 mySymptom:@"Heartbroken"];
        
        
        if ([doctor acceptPatient:patient1]) {
            NSString *patientSymptom = [patient1 requestMedication:doctor];
            
            NSString *patientPrescription = [NSString stringWithFormat:@"I, %@ will prescribe you %@", [doctor name], [doctor prescribePatient:patientSymptom]];
            
            [doctor addPatientPrescription:patientPrescription];
        
        }
        
        
    }
    return 0;
}
