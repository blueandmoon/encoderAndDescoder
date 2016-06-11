//
//  ViewController.m
//  encoderAndDescoder
//
//  Created by 李根 on 16/6/11.
//  Copyright © 2016年 ligen. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"
#import <objc/runtime.h>
#import "SerializeKit.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor whiteColor];
    
    Person *person = [[Person alloc] init];
    person.name = @"qingshanliuyun";
    person.age = 24;
    [person setValue:@"myFather" forKey:@"_father"];
    //  set value of superClass
    person.introInBiology = @"I am a biology on the earth!";
    
    NSLog(@"Before archiver:\n%@", [person description]);
    SERIALIZE_ARCHIVE(person, @"Person", [self filePath]);
    Person *thePerson = nil;
    SERIALIZE_UNARCHIVE(thePerson, @"Person", [self filePath]);
    
    Person *copyPerson = [person copy];
    NSLog(@"_____copyPerson: %@", [copyPerson description]);
}

- (NSString *)filePath {
    NSString *archiverFilePath = [NSString stringWithFormat:@"%@/archivers", NSHomeDirectory()];
    NSLog(@"%@", NSHomeDirectory());
    return archiverFilePath;
}















- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
