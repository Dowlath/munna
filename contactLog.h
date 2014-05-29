//
//  contacts.h
//  test
//
//  Created by BSA Univ19 on 26/05/14.
//  Copyright (c) 2014 BSA Univ19. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AppDelegate.h"
@interface contactLog: NSObject

@property NSString *fiName, *laName, *moNumber;
@property AppDelegate *apdelobj;

-(void)SaveData;
@end
