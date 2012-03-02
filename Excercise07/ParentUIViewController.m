//
//  ParentUIViewController.m
//  Excercise07
//
//  Created by TPG on 3/2/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ParentUIViewController.h"
#import "ChildUIViewController.h"


@implementation ParentUIViewController

@synthesize titleLabel;
@synthesize goToChildViewButton;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (IBAction) goToChildView: (id) sender {
    
    ChildUIViewController *cvc = [[ChildUIViewController alloc]
                                initWithNibName:@"ChildUIViewController"
                                bundle:nil];
    cvc.title = @"Child View";
    [self.navigationController pushViewController:cvc animated:YES];
    [cvc release];
    
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
