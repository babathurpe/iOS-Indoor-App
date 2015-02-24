//
//  HelpViewController.h
//  Maps
//
//  Created by Babathurpe on 2015-02-18.
//  Copyright (c) 2015 Babathurpe. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HelpViewController : UIViewController

@property (strong, nonatomic) IBOutlet UITextView *helpGuideTextView;
@property (strong, nonatomic) IBOutlet UILabel *infoLabel;

@property (strong, nonatomic) NSArray *helpText;
@property (strong, nonatomic) NSMutableString *helpString;

@end
