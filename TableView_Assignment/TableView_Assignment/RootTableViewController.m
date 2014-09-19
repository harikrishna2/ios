//
//  RootTableViewController.m
//  TableView_Assignment
//
//  Created by Paradigm Creatives on 9/16/14.
//  Copyright (c) 2014 ParadigmCreatives. All rights reserved.
//

#import "RootTableViewController.h"
#import "SecondTableViewController.h"

@interface RootTableViewController ()


@end

@implementation RootTableViewController

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
    tableData = [[NSArray alloc]initWithObjects:@"Section1",@"Section2",@"Section3", nil];
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
    return [tableData count];
}

// Row display. Implementers should *always* try to reuse cells by setting each cell's reuseIdentifier and querying for available reusable cells with dequeueReusableCellWithIdentifier:
// Cell gets various attributes set automatically based on table (separators) and data source (accessory views, editing controls)

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath;
{
   // static NSString *cellIdentifier = @"mainArray";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"mainArray"];
    cell.textLabel.text = [tableData objectAtIndex:indexPath.row];
    return cell;
}
-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if([segue.identifier isEqualToString:@"showArrayDetails"])
    {
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        SecondTableViewController *destViewConrtoller = segue.destinationViewController;
        destViewConrtoller.sectionName = [tableData objectAtIndex:indexPath.row];
        destViewConrtoller.title = destViewConrtoller.sectionName;
        
    }
}


@end
