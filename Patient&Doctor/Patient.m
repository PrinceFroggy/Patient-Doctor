//
//  Patient.m
//  Patient&Doctor
//
//  Created by Andrew Solesa on 2017-03-09.
//  Copyright © 2017 KSG. All rights reserved.
//

#import "Patient.h"

@implementation Patient

-(instancetype)initWithName:(NSString *)name andAge: (NSInteger *)age andHasValidHealthCard:(BOOL)hasValidHealthCard andSymptoms: (NSSet *)symptoms;
{
    if (self = [super init])
    {
        _name = name;
        _age = arc4random_uniform(50) +10;
        _hasValidHealthCard = YES;
        _symptoms = symptoms;
        _prescriptions = [[NSSet alloc]init];
    }
    return self;
}

- (void) visitDoctor : (Doctor *) thisDoctor
{
    NSLog(@"you have visited the doctor");
    if (self.hasValidHealthCard == YES){
        [thisDoctor acceptPatient: self];
    }
    else{
        NSLog(@"You dont have a valid health card");
    }
}

@end
