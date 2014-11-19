//
//  HDToDoItem.m
//  ToDoList
//
//  Created by Ryan Hoo on 11/19/14.
//  Copyright (c) 2014 HybridSquad. All rights reserved.
//

#import "HDToDoItem.h"

@interface HDToDoItem()

@property NSDate *completionDate;

@end

@implementation HDToDoItem

- (void)markAsCompleted:(BOOL)isComplete {
    self.completed = isComplete;
    [self setCompletionDate];
}

- (void)setCompletionDate {
    if (self.completed)
        self.completionDate = [NSDate date];
    else
        self.completionDate = nil;
}

@end
