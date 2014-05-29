//
//  ViewController.h
//  test
//
//  Created by BSA Univ19 on 26/05/14.
//  Copyright (c) 2014 BSA Univ19. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"

@interface ViewController : UIViewController<UITableViewDelegate,UITableViewDataSource,UITextFieldDelegate>

@property (nonatomic,retain) AppDelegate *apdelobj;
@property (strong, nonatomic) IBOutlet UITableView *cellContacts;



@end
