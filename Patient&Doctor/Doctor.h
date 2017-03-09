//
//  Doctor.h
//  Patient&Doctor
//
//  Created by Andrew Solesa on 2017-03-09.
//  Copyright © 2017 KSG. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Patient;

@interface Doctor : NSObject

@property (nonatomic) NSString *doctorName;
@property (nonatomic) NSString *specialization;

-(void) patientRequest: (Patient *) patient;

-(void) acceptPatient: (Patient*) visitor;

-(instancetype)initWithName:(NSString *)name andSpecialization: (NSString *)spec;

@end
