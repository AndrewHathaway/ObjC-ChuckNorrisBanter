//
//  ViewController.m
//  ChuckNorrisBanter
//
//  Created by Andrew Hathaway on 30/09/2013.
//  Copyright (c) 2013 Andrew Hathaway. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{

    NSURL *_apiBase;
    NSURL *_rndmBase;
}
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    _apiBase = [NSURL URLWithString:@"http://api.icndb.com/"];
    _rndmBase = [NSURL URLWithString:@"jokes/random/" relativeToURL:_apiBase];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

- (IBAction)grabJokeBtn:(id)sender {
    
}

@end
