//
//  ViewController.m
//  ChuckNorrisBanter
//
//  Created by Andrew Hathaway on 30/09/2013.
//  Copyright (c) 2013 Andrew Hathaway. All rights reserved.
//

#import "ViewController.h"
#import "JokeResponse.h"
#import "JSONModel.h"
#import "JSONModel+networking.h"

@interface ViewController ()
{
    NSURL *_apiBase;
    JokeResponse *_newJoke;
    NSURL *_rndmEndpoint;
}
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    _apiBase = [NSURL URLWithString:@"http://api.icndb.com/"];
    _rndmEndpoint = [NSURL URLWithString:@"jokes/random/" relativeToURL:_apiBase];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

- (IBAction)grabJokeBtn:(id)sender
{
    _newJoke = [[JokeResponse alloc] initFromURLWithString:[_rndmEndpoint absoluteString]
                                                       completion:^(JSONModel *model, JSONModelError *err) {
                                                           NSLog(@"Loaded: %@", _newJoke.value.joke);
                                                       }];
}


@end
