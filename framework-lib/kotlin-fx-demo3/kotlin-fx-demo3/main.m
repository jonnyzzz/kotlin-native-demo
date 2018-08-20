//
//  main.m
//  kotlin-fx-demo3
//
//  Created by Evgeny Petrenko on 06.08.18.
//  Copyright © 2018 Evgeny Petrenko. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Demo/Demo.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        [[DemoObject object] field];
        
        DemoClazz* clazz = [[ DemoClazz alloc] init];
        [clazz memberP:42];
        
        [Demo forIntegersB:1 s:1 i:3 l:[NSNumber numberWithLongLong:4]];
        [Demo forIntegersB:1 s:1 i:3 l:nil];
        
        [Demo forFloatsF:2.71 d:[NSNumber numberWithDouble:2.71]];
        [Demo forFloatsF:2.71 d:nil];
        
        NSString* ret = [Demo acceptFunF:^NSString * _Nullable(NSString * it) {
            return [it stringByAppendingString:@" Kotlin is fun"];
        }];
        
        NSLog(@"%@", ret);
        return 0;
    }
}
