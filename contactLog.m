//
//  contacts.m
//  test
//
//  Created by BSA Univ19 on 26/05/14.
//  Copyright (c) 2014 BSA Univ19. All rights reserved.
//

#import "contactLog.h"
#import "AppDelegate.h"

@implementation contactLog
@synthesize laName,fiName,moNumber,apdelobj;

-(void)SaveData
{
    apdelobj =[UIApplication sharedApplication].delegate;
    NSManagedObjectContext *newContact =[NSEntityDescription insertNewObjectForEntityForName:@"Contacts" inManagedObjectContext:apdelobj.managedObjectContext];
    [newContact setValue:fiName forKeyPath:@"fname"];
    [newContact setValue:laName forKeyPath:@"lname"];
    [newContact setValue:moNumber forKeyPath:@"number"];
    
    
    
    NSError *error=nil;
    
    if(![apdelobj.managedObjectContext save:&error]){
        NSLog(@"Not Saved");
        
    }
}

@end
