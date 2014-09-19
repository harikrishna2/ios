//
//  SecondTableViewController.m
//  TableView_Assignment
//
//  Created by Paradigm Creatives on 9/16/14.
//  Copyright (c) 2014 ParadigmCreatives. All rights reserved.
//

#import "SecondTableViewController.h"
#import "ThirdTableViewController.h"

@interface SecondTableViewController ()


@end

@implementation SecondTableViewController
{
    NSArray *section1;
    NSArray *section2;
    NSArray *section3;
}
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
    section1 = [[NSArray alloc]initWithObjects:@"hari",@"ramu",@"ravi", nil];
    section2 = [[NSArray alloc]initWithObjects:@"ramu",@"ravi",@"hari",@"aditya", nil];
    section3 = [[NSArray alloc]initWithObjects:@"ravi",@"ramu",@"hari",@"aditya",@"venu", nil];

    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if([_sectionName isEqualToString:@"Section1"])
    return [section1 count];
    else if([_sectionName isEqualToString:@"Section2"])
    return [section2 count];
    else
        return [section3 count];
}

// Row display. Implementers should *always* try to reuse cells by setting each cell's reuseIdentifier and querying for available reusable cells with dequeueReusableCellWithIdentifier:
// Cell gets various attributes set automatically based on table (separators) and data source (accessory views, editing controls)

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath;
{
    // static NSString *cellIdentifier = @"mainArray";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"secondArray"];
    if([_sectionName isEqualToString:@"Section1"])
    {
        cell.textLabel.text = [section1 objectAtIndex:indexPath.row];
        return cell;
    }
    if([_sectionName isEqualToString:@"Section2"])
    {
        cell.textLabel.text = [section2 objectAtIndex:indexPath.row];
        return cell;
    }
    else
    {
        cell.textLabel.text = [section3 objectAtIndex:indexPath.row];
        return cell;
    }

}
-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if([segue.identifier isEqualToString:@"showStudentDetails"])
    {
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        ThirdTableViewController *destViewConrtoller = segue.destinationViewController;
        destViewConrtoller.studentName = [section1 objectAtIndex:indexPath.row];
        destViewConrtoller.title = destViewConrtoller.studentName;
        
    }
}



@end
