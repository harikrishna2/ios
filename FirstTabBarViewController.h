//
//  FirstTabBarViewController.h
//  Assignment
//
//  Created by Paradigm Creatives on 9/9/14.
//  Copyright (c) 2014 ParadigmCreatives. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FirstTabBarViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>
//@property (nonatomic, weak) UINavigationController *navController;
//-(IBAction)buttonPressed:(id)sender;
@property (nonatomic , weak) IBOutlet UITableView *tableView;
@property (nonatomic , retain) NSMutableArray *tableData;
@end
