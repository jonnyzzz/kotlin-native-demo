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
    
    [[DemoDemoObject demoObject] field];
    
    DemoDemoClazz* clazz = [[ DemoDemoClazz alloc] init];
    [clazz memberFunctionP:42];
    
    [Demo forIntegersB:1 s:1 i:3 l:4];
   
    NSString* ret = [Demo stringsStr:(@"That is string")];
    return 0;
}
