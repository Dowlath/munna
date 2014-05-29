//
//  coreData.m
//  test
//
//  Created by BSA Univ19 on 26/05/14.
//  Copyright (c) 2014 BSA Univ19. All rights reserved.
//

#import "coreData.h"

@implementation coreData
@synthesize apdelobj;

-(NSArray *)fetchCoredata{
    
    NSArray *contact=[[NSArray alloc]init];
    
    apdelobj =[UIApplication sharedApplication].delegate;
    NSManagedObjectContext *managedObjectContext=apdelobj.managedObjectContext;
    NSFetchRequest *fetchRequest=[[NSFetchRequest alloc]initWithEntityName:@"Contacts"];
    contact=[[managedObjectContext executeFetchRequest:fetchRequest error:nil]mutableCopy];
    return contact;
}


@end
