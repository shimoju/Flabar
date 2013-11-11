//
//  FlabarWriteViewController.m
//  Flabar
//
//  Created by Hiroshi Shimoju on 2013/11/10.
//  Copyright (c) 2013年 dbsh. All rights reserved.
//

#import "FlabarWriteViewController.h"

@interface FlabarWriteViewController ()

- (IBAction)backgroundTapped:(id)sender;

@end

@implementation FlabarWriteViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// 背景がタップされたらキーボードを閉じる
- (IBAction)backgroundTapped:(id)sender {
    [self.view endEditing:YES];
}

@end
