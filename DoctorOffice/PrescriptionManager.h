//
//  PatientManager.h
//  DoctorOffice
//
//  Created by Brian Vo on 2018-04-12.
//  Copyright © 2018 Brian Vo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PrescriptionManager : NSObject

@property (nonatomic) NSMutableDictionary *symptomPrescriptions;
@property (nonatomic) NSMutableDictionary *patientPrescriptionHistory;

-(void) listOfPrescription;

@end
