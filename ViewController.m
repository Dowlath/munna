//
//  ViewController.m
//  test
//
//  Created by BSA Univ19 on 26/05/14.
//  Copyright (c) 2014 BSA Univ19. All rights reserved.
//

#import "ViewController.h"
#import "coreData.h"
#import "contactLog.h"
@interface ViewController ()

{
    NSArray *contacts;
    coreData *coredataobj;
    contactLog *contactObj;
    
}

@property (strong, nonatomic) IBOutlet UIView *ContactsView;


- (IBAction)add:(id)sender;
@property (strong, nonatomic) IBOutlet UITextField *fnmaeTextBox;
@property (strong, nonatomic) IBOutlet UITextField *lnameTextBox;
@property (strong, nonatomic) IBOutlet UITextField *numberTextBox;


- (IBAction)btSave:(id)sender;

@end


@implementation ViewController

@synthesize ContactsView,apdelobj;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return contacts.count;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *CellIdentifier=@"Cell";
    UITableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    NSManagedObjectContext *cont=[contacts objectAtIndex:indexPath.row];
    
    [cell.textLabel setText:[NSString stringWithFormat:@"%@ %@",[cont valueForKey:@"fname"], [cont valueForKey:@"lname"]]];
    [cell.detailTextLabel setText:[cont valueForKey:@"number"]];
    
    return cell;
}


- (void)viewDidLoad
{
    [super viewDidLoad];
    
    contactObj=[[contactLog alloc]init];
    ContactsView.hidden=YES;
    coredataobj=[[coreData alloc]init];

//    contacts=coredataobj.fetchCoredata;
//    NSLog(@"%@",contacts);
//    
    _fnmaeTextBox.delegate=self;
    _lnameTextBox.delegate=self;
    _numberTextBox.delegate=self;
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (IBAction)add:(id)sender {
    ContactsView.hidden=false;
}
- (IBAction)btSave:(id)sender {
    

    //Changing into Class
    contactObj.fiName=_fnmaeTextBox.text;
    contactObj.laName=_lnameTextBox.text;
    contactObj.moNumber=_numberTextBox.text;
    [contactObj SaveData];
    
    _fnmaeTextBox.text= @"";
    _lnameTextBox.text=@"";
    _numberTextBox.text=@"";
        contacts= coredataobj.fetchCoredata;
    ContactsView.hidden=true;
    [_cellContacts reloadData];

    }

-(BOOL )textFieldShouldReturn:(UITextField *)textField{
    [textField resignFirstResponder];
    return NO;
}

@end
