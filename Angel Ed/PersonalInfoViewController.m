//
//  PersonalInfoViewController.m
//  Angel Ed
//
//  Created by Иван on 4/26/14.
//  Copyright (c) 2014 Global App Initiative. All rights reserved.
//

#import "PersonalInfoViewController.h"
#import "Posts.h"
#import "MPTextView.h"

@interface PersonalInfoViewController ()

@end

@implementation PersonalInfoViewController

@synthesize enterNameTextView;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    ((MPTextView *)enterNameTextView).placeholderText = kNamePlaceholder;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)viewWillAppear:(BOOL)animated {
    
    NSMutableDictionary *personalInfo = [Posts getPersonalInfo];
    NSString *currentName = [personalInfo objectForKey:kPersonName];
    
    enterNameTextView.text = currentName;
    
    [self.enterNameTextView becomeFirstResponder];
}

-(void)saveData {
    NSString *newName = kDefaultTitle;
    newName = self.enterNameTextView.text;
    [Posts setPersonalName:newName];
}

-(void)viewWillDisappear:(BOOL)animated {
    [self saveData];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)doneButton:(id)sender {
    [self saveData];
    
    [self.navigationController popViewControllerAnimated:YES];
}
@end
