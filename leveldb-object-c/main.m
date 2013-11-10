//
//  main.m
//  leveldb-object-c
//
//  Created by Tad Wang on 11/3/13.
//  Copyright (c) 2013 mountdoom. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LevelDB.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // insert code here...
        NSLog(@"Leveldb Put and Get Test.....");
        
        
        LevelDB *ldb = [LevelDB databaseInLibraryWithName:@"/hdd1/objc_db"];
        
        //test string
        [ldb putObject:@"laval" forKey:@"string_test"];
        NSLog(@"String Value: %@", [ldb getString:@"string_test"]);
        
        //test dictionary
        [ldb putObject:[NSDictionary dictionaryWithObjectsAndKeys:@"val1", @"key1", @"val2", @"key2", nil] forKey:@"dict_test"];
        NSLog(@"Dictionary Value: %@", [ldb getDictionary:@"dict_test"]);
//        [super viewDidLoad];
        
    }
    return 0;
}

