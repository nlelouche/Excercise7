//
//  ParentUIViewController.h
//  Excercise07
//
//  Created by TPG on 3/2/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ParentUIViewController : UIViewController



@property (nonatomic, retain) IBOutlet UIButton *goToChildViewButton;
@property (nonatomic, retain) IBOutlet UILabel *titleLabel;

- (IBAction) goToChildView: (id) sender;

@end
