//
//  HDToDoItem.h
//  ToDoList
//
//  Created by Ryan Hoo on 11/19/14.
//  Copyright (c) 2014 HybridSquad. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HDToDoItem : NSObject

@property NSString *itemName;
@property (assign, nonatomic) BOOL completed;
@property (readonly) NSDate *creationDate;

- (void)markAsCompleted:(BOOL)isComplete;

@end
