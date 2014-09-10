//
//  TableViewController.h
//  Assignment
//
//  Created by Paradigm Creatives on 9/9/14.
//  Copyright (c) 2014 ParadigmCreatives. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TableViewController : UIViewController<UITableViewDelegate,UITableViewDataSource>

@property (nonatomic,weak)IBOutlet UITableView *tableView;
@property (nonatomic,retain) NSMutableArray *tableData;
@end
