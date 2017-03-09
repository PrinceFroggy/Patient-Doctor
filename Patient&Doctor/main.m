//
//  main.m
//  Patient&Doctor
//
//  Created by Andrew Solesa on 2017-03-09.
//  Copyright © 2017 KSG. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Doctor.h"
#import "Patient.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Doctor *doctor = [[Doctor alloc]initWithName:@"John" andSpecialization: @"Nutrition"];
        NSLog(@"Doctor: %@  Specialization: %@", doctor.doctorName, doctor.specialization);
        
        Patient *patient = [[Patient alloc]initWithName:@"Pam" andAge:23 andHasValidHealthCard:YES andSymptoms:@"cough"];
        NSLog(@"Patient: %@", patient.name);
        
        [patient visitDoctor : (Doctor *) doctor];
        
        [doctor patientRequest: (Patient *) patient];
        
    }
    return 0;
}
