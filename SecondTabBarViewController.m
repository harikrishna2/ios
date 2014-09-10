//
//  SecondTabBarViewController.m
//  Assignment
//
//  Created by Paradigm Creatives on 9/9/14.
//  Copyright (c) 2014 ParadigmCreatives. All rights reserved.
//

#import "SecondTabBarViewController.h"

@interface SecondTabBarViewController ()

@end

@implementation SecondTabBarViewController
@synthesize label1,label;

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
    
    NSString *label11 = [[NSString alloc]init];
    label11=self.name;
    self.label1.text=label11;
    
    
    
    /*UIImage *image = [UIImage imageNamed:@"home-2.png"];
    self.imageView = [[UIImageView alloc]initWithImage:image];
    //self.label = [UILabel init];
    //[self.view addSubview:self.label];
    [self.view addSubview:self.imageView];
     */
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
