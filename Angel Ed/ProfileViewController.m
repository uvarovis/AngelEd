//
//  ProfileViewController.m
//  Angel Ed
//
//  Created by Иван on 4/26/14.
//  Copyright (c) 2014 Global App Initiative. All rights reserved.
//

#import "ProfileViewController.h"
#import "GAIMasterViewController.h"
#import "Posts.h"

#define UIColorHex(rgbValue) [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]

@interface ProfileViewController ()

@end

@implementation ProfileViewController

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
    
    [self.networkingButton.layer setBorderWidth:1];
    [self.networkingButton.layer setBorderColor:[[self color:5] CGColor]];
    [self.networkingButton setContentEdgeInsets:UIEdgeInsetsMake(0, 5, 1, 0)];
    [self.networkingButton setTintColor:[self color:2]];
    
    [self.academicButton.layer setBorderWidth:1];
    [self.academicButton.layer setBorderColor:[[self color:5] CGColor]];
    [self.academicButton setContentEdgeInsets:UIEdgeInsetsMake(0, 5, 1, 0)];
    [self.academicButton setTintColor:[self color:0]];
    
    [self.professionalButton.layer setBorderWidth:1];
    [self.professionalButton.layer setBorderColor:[[self color:5] CGColor]];
    [self.professionalButton setContentEdgeInsets:UIEdgeInsetsMake(0, 5, 1, 0)];
    [self.professionalButton setTintColor:[self color:1]];
    
    [self.communityButton.layer setBorderWidth:1];
    [self.communityButton.layer setBorderColor:[[self color:5] CGColor]];
    [self.communityButton setContentEdgeInsets:UIEdgeInsetsMake(0, 5, 1, 0)];
    [self.communityButton setTintColor:[self color:3]];
    
    
}

-(void)viewWillAppear:(BOOL)animated {
    
    self.nameLabel.text = [[Posts getPersonalInfo] objectForKey:kPersonName];
    
}

- (UIColor*)color:(int)i
{
    switch (i) {
        case 0:
            // red
            return UIColorHex(0xE54EAB);
        case 1:
            // blue
            return UIColorHex(0x2751AE);
        case 2:
            // green
            return UIColorHex(0x4AB14E);
        case 3:
            // orange
            return UIColorHex(0xFACB09);
        case 4:
            // white
            return UIColorHex(0xFFFFFF)/*UIColorHex(0xE9F2DF)*/;
        case 5:
            // light blue
            return UIColorHex(0X36A1D4);
        default:
            break;
    }
    return nil;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    GAIMasterViewController *vc = [segue destinationViewController];
    
    // Get button tag number (or do whatever you need to do here, based on your object
    NSNumber *tagIndex = [NSNumber numberWithInteger:[(UIButton *)sender tag]];
    
    // Pass the information to your destination view
    [vc setSelectedButton:tagIndex];
    
}

@end
