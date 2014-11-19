//
//  HDAddToDoItemViewController.m
//  ToDoList
//
//  Created by Ryan Hoo on 11/18/14.
//  Copyright (c) 2014 HybridSquad. All rights reserved.
//

#import "HDAddToDoItemViewController.h"

@interface HDAddToDoItemViewController ()

@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *buttonDone;

@end

@implementation HDAddToDoItemViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    if (sender != self.buttonDone) return;
    if (self.textField.text.length > 0) {
        self.toDoItem = [[HDToDoItem alloc] init];
        self.toDoItem.itemName = self.textField.text;
        self.toDoItem.completed = NO;
    }
}

@end
