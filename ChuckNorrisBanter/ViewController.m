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
    NSURL *_rndmEndpoint;
    NSMutableData *_receivedJoke;
    NSURLRequest *_randomJokeRequest;
}
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    _apiBase = [NSURL URLWithString:@"http://api.icndb.com/"];
    _rndmEndpoint = [NSURL URLWithString:@"jokes/random/" relativeToURL:_apiBase];
    
    _receivedJoke = [NSMutableData dataWithCapacity:0];
    _randomJokeRequest = [NSURLRequest requestWithURL:_rndmEndpoint cachePolicy:NSURLRequestUseProtocolCachePolicy timeoutInterval:60.0];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

- (IBAction)grabJokeBtn:(id)sender
{
    NSURLConnection *connection = [[NSURLConnection alloc] initWithRequest:_randomJokeRequest delegate:self];
    
    if(! connection) {
        UIAlertView *noConnectionAlert = [[UIAlertView alloc] initWithTitle:@"Damn!" message:@"There has been problems connecting" delegate:self cancelButtonTitle:nil otherButtonTitles:nil];
        [noConnectionAlert show];
    }
}

@end
