//
//  HelpViewController.m
//  Maps
//
//  Created by Babathurpe on 2015-02-18.
//  Copyright (c) 2015 Babathurpe. All rights reserved.
//

#import "HelpViewController.h"

@interface HelpViewController ()

@end

@implementation HelpViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.infoLabel.text = @"\u00A9 2014. Babathurpe";
    NSString *help2 = @"Room number all have this format: \n \t M123\n M represents the main hallway.\n 1 represents the first floor.\n";
    NSString *help3 = @"The first to characters are the most inportant to get around.";
    NSString *help4 = @"You can search floors independently.";
    NSString *help5 = @"Help 5";
    
    //Load the help text string into an array
    self.helpText = [[NSArray alloc] initWithObjects:help2, help3, help4, help5, nil];
    
    
    self.helpString = [NSMutableString stringWithCapacity:[self.helpText count]];
    
    //Append a rounded bullet to the strings found in the array.
    for(NSString *s in self.helpText){
        [self.helpString appendFormat:@"\u2022 %@\n", s];
    }
    //Raises the text in the Text View to to top.
    self.automaticallyAdjustsScrollViewInsets = false;
    
    //Loads the appended text from the array into the text view.
    self.helpGuideTextView.text = self.helpString;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
