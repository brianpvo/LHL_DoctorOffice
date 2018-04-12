//
//  Patient.h
//  DoctorOffice
//
//  Created by Brian Vo on 2018-04-12.
//  Copyright © 2018 Brian Vo. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Doctor;

@interface Patient : NSObject

@property (nonatomic) NSString* name;
@property (nonatomic) int age;
@property (nonatomic) BOOL validHealthCard;
@property (nonatomic) NSString* symptom;

- (instancetype)initWithNameAndAge:(NSString *) name :(int) age;

-(void)visitDoctor:(Doctor*) doctor;

-(void)mySymptom:(NSString *) symptom;

-(NSString *)requestMedication:(Doctor *) doctor;

@end
