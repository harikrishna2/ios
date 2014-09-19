//
//  ThirdTableViewController.h
//  TableView_Assignment
//
//  Created by Paradigm Creatives on 9/16/14.
//  Copyright (c) 2014 ParadigmCreatives. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ThirdTableViewController : UITableViewController<UITableViewDelegate,UITableViewDataSource>
@property (nonatomic,strong) NSString *studentName;
@property (nonatomic,strong) NSString *sectionName;

@end
