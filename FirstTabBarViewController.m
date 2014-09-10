//
//  FirstTabBarViewController.m
//  Assignment
//
//  Created by Paradigm Creatives on 9/9/14.
//  Copyright (c) 2014 ParadigmCreatives. All rights reserved.
//

#import "FirstTabBarViewController.h"
#import "SecondTabBarViewController.h"
@interface FirstTabBarViewController ()

@end

@implementation FirstTabBarViewController
@synthesize tableView,tableData;

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
    tableData = [[NSMutableArray alloc] initWithObjects:@"hari",@"ramana",@"Shivajee",@"vamsi",@"anusha",@"manojna",nil];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section

{
    
    return [tableData count];
    
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath

{
    
    static NSString *simpleTableIdentifier = @"SimpleTableItem";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    
    if (cell == nil) {
        
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIdentifier];
        
    }
    
    cell.textLabel.text = [tableData objectAtIndex:indexPath.row];
    
    cell.imageView.image = [UIImage imageNamed:@"geekPic.jpg"];
    
    return cell;
    
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    SecondTabBarViewController *second = [[SecondTabBarViewController alloc] initWithNibName:@"SecondTabBarViewController" bundle:nil];
    //second.label.text = @"hari";
    second.name =[tableData objectAtIndex:indexPath.row];
    //second.label = @"hari";
    [self.navigationController pushViewController:second animated:YES];
}


@end
