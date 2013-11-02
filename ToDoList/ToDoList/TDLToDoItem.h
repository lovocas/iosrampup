//
//  TDLToDoItem.h
//  ToDoList
//
//  Created by Mou, Jian on 10/31/13.
//  Copyright (c) 2013 Jianaggie. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TDLToDoItem : NSObject
@property NSString *itemName;
@property BOOL completed;
@property (readonly) NSDate *creationDate;

@end
