//
//  FlabarWriteViewController.m
//  Flabar
//
//  Created by Hiroshi Shimoju on 2013/12/16.
//  Copyright (c) 2013年 dbsh. All rights reserved.
//

#import "FlabarWriteViewController.h"
#import "InfinitePagingView.h"

@interface FlabarWriteViewController ()

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

    NSArray *colorPalette =
    @[
      [UIColor colorWithRed:255/255.0 green:97/255.0 blue:97/255.0 alpha:1.0],
      [UIColor colorWithRed:241/255.0 green:145/255.0 blue:73/255.0 alpha:1.0],
      [UIColor colorWithRed:230/255.0 green:220/255.0 blue:101/255.0 alpha:1.0],
      [UIColor colorWithRed:153/255.0 green:224/255.0 blue:169/255.0 alpha:1.0],
      [UIColor colorWithRed:126/255.0 green:206/255.0 blue:244/255.0 alpha:1.0],
      [UIColor colorWithRed:170/255.0 green:137/255.0 blue:189/255.0 alpha:1.0],
     ];

    InfinitePagingView *pagingView = [[InfinitePagingView alloc] initWithFrame:self.view.bounds];
    [self.view addSubview:pagingView];

    for (UIColor *color in colorPalette) {
        UIView *view = [[UIView alloc] initWithFrame:self.view.bounds];
        view.backgroundColor = color;
        [pagingView addPageView:view];
    }

    [self.view sendSubviewToBack:pagingView];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
