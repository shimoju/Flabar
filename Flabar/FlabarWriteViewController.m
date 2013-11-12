//
//  FlabarWriteViewController.m
//  Flabar
//
//  Created by Hiroshi Shimoju on 2013/11/10.
//  Copyright (c) 2013年 dbsh. All rights reserved.
//

#import "FlabarWriteViewController.h"
#import "REPagedScrollView/REPagedScrollView.h"

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

	REPagedScrollView *scrollView = [[REPagedScrollView alloc] initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, self.view.bounds.size.height - 49)];
    scrollView.pageControl.pageIndicatorTintColor = [[UIColor whiteColor] colorWithAlphaComponent:0.5];
    scrollView.pageControl.currentPageIndicatorTintColor = [UIColor whiteColor];
    [self.view addSubview:scrollView];

    UIView *test = [[UIView alloc] initWithFrame:self.view.bounds];
    test.backgroundColor = [UIColor colorWithRed:255/255.0 green:97/255.0 blue:97/255.0 alpha:1.0];
    [scrollView addPage:test];

    test = [[UIView alloc] initWithFrame:self.view.bounds];
    test.backgroundColor = [UIColor colorWithRed:241/255.0 green:145/255.0 blue:73/255.0 alpha:1.0];
    [scrollView addPage:test];

    test = [[UIView alloc] initWithFrame:self.view.bounds];
    test.backgroundColor = [UIColor colorWithRed:230/255.0 green:220/255.0 blue:101/255.0 alpha:1.0];
    [scrollView addPage:test];

    test = [[UIView alloc] initWithFrame:self.view.bounds];
    test.backgroundColor = [UIColor colorWithRed:153/255.0 green:224/255.0 blue:169/255.0 alpha:1.0];
    [scrollView addPage:test];

    test = [[UIView alloc] initWithFrame:self.view.bounds];
    test.backgroundColor = [UIColor colorWithRed:126/255.0 green:206/255.0 blue:244/255.0 alpha:1.0];
    [scrollView addPage:test];

    test = [[UIView alloc] initWithFrame:self.view.bounds];
    test.backgroundColor = [UIColor colorWithRed:170/255.0 green:137/255.0 blue:189/255.0 alpha:1.0];
    [scrollView addPage:test];

    UITextView *textView = [[UITextView alloc] initWithFrame:CGRectMake(30, 100, self.view.frame.size.width - 60, 200)];
    textView.backgroundColor = [[UIColor whiteColor] colorWithAlphaComponent:0.8];
    [self.view addSubview:textView];
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
