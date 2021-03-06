//
//  FISHellaMasterTableViewController.m
//  HellaCells
//
//  Created by Christopher Webb-Orenstein on 6/21/16.
//  Copyright © 2016 FIS. All rights reserved.
//

#import "FISHellaMasterTableViewController.h"

@implementation FISHellaMasterTableViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
    self.tableView.accessibilityLabel = @"Table";
    self.tableView.accessibilityIdentifier=@"Table";
    
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 100;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath { UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"newCell" forIndexPath:indexPath];
    NSString *number = [NSString stringWithFormat:@"%li", indexPath.row + 1];
    cell.textLabel.text= number;
    
    
    
    // Configure the cell...
    
    return cell;
}


-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    FISHellaDetailViewController *detailVC= (FISHellaDetailViewController *)segue.destinationViewController;

    UITableViewCell *selectedCell = (UITableViewCell *)sender;
    detailVC.displayNumber = selectedCell.textLabel.text;
}


/*
 // Override to support conditional editing of the table view.
 - (BOOL)tableView:(UITableView ​*)tableView canEditRowAtIndexPath:(NSIndexPath *​)indexPath {
 // Return NO if you do not want the specified item to be editable.
 return YES;
 }
 */

/*
 // Override to support editing the table view.
 - (void)tableView:(UITableView ​*)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *​)indexPath {
 if (editingStyle == UITableViewCellEditingStyleDelete) {
 // Delete the row from the data source
 [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
 } else if (editingStyle == UITableViewCellEditingStyleInsert) {
 // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
 }
 }
 */

/*
 // Override to support rearranging the table view.
 - (void)tableView:(UITableView ​*)tableView moveRowAtIndexPath:(NSIndexPath *​)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
 }
 */

/*
 // Override to support conditional rearranging of the table view.
 - (BOOL)tableView:(UITableView ​*)tableView canMoveRowAtIndexPath:(NSIndexPath *​)indexPath {
 // Return NO if you do not want the item to be re-orderable.
 return YES;
 }
 */

/*
 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
// */
//
//
//- (void)viewDidLoad {
//    [super viewDidLoad];
//    
//    self.view.accessibilityIdentifier = @"Table";
//    
//    // Uncomment the following line to preserve selection between presentations.
//    // self.clearsSelectionOnViewWillAppear = NO;
//    
//    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
//    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
//}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
@end
