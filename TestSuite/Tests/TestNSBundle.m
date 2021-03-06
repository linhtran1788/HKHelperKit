//
//  TestNSBundle.m
//  HelperKit
//
//  Created by Alex Wayne on 3/24/10.
//  Copyright 2010 Beautiful Pixel. All rights reserved.
//

#import "TestNSBundle.h"


@implementation TestNSBundle

- (void)tests {
    NSBundle *bundle = [NSBundle mainBundle];
    
    [self assert:@"pathForResource: should return a resource path" do:^{
        return (BOOL)([[bundle pathForResource:@"Home.png" ofType:nil] isEqualToString:[bundle pathForResource:@"Home.png"]]);
    }];
    
    [self assert:@"urlForResource: should return a resource file url" do:^{
        NSURL *actual = [bundle urlForResource:@"Home.png"];
        NSURL *expected = [NSURL fileURLWithPath:[bundle pathForResource:@"Home.png"]];
        return (BOOL)([[expected absoluteString] isEqualToString:[actual absoluteString]]);
    }];
    
    [self assert:@"urlForResource:ofType: should return a resource file url" do:^{
        NSURL *actual = [bundle urlForResource:@"Home" ofType:@"png"];
        NSURL *expected = [NSURL fileURLWithPath:[bundle pathForResource:@"Home.png"]];
        return (BOOL)([[expected absoluteString] isEqualToString:[actual absoluteString]]);
    }];
    
// -(NSString*)nibName:(NSString*)baseName forDevice:(BOOL)useDevice forOrientation:(BOOL)useOrientation;
//    [self assert:@"" do:^{
//        
//    }];
}

@end
