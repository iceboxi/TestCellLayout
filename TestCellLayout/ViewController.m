//
//  ViewController.m
//  TestCellLayout
//
//  Created by iceboxi on 2015/5/27.
//  Copyright (c) 2015年 iceboxi. All rights reserved.
//

#import "ViewController.h"
#import "MyTableViewCell.h"

@interface ViewController () {
    NSMutableString *string;
}
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation ViewController

#pragma mark - UITableView DataSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 100;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *CellIdentifier = @"MyTableViewCell";
    MyTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil)
    {
        [tableView registerNib:[UINib nibWithNibName:CellIdentifier bundle:nil] forCellReuseIdentifier:CellIdentifier];
        cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    }
    [cell setSelectionStyle:UITableViewCellSelectionStyleGray];
    
    [cell.textLabel setText:[string substringWithRange:NSMakeRange(0, indexPath.row)]];
    
    return cell;
}

#pragma mark - UITableView Delegate

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    string = [NSMutableString new];
    [string setString:@"我超長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長長"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
