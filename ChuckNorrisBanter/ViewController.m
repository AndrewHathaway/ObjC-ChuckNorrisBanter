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
    NSURLConnection *_theConnection;
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
    _theConnection = [[NSURLConnection alloc] initWithRequest:_randomJokeRequest delegate:self];
    
    if(! _theConnection) {
        UIAlertView *noConnectionAlert = [[UIAlertView alloc] initWithTitle:@"Damn!" message:@"There has been problems connecting" delegate:self cancelButtonTitle:nil otherButtonTitles:nil];
        [noConnectionAlert show];
    }
}

- (void)connection:(NSURLConnection *)connection didReceiveResponse:(NSURLResponse *)response
{
    [_receivedJoke setLength:0];
}

- (void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data
{
    [_receivedJoke appendData:data];
}

- (void)connection:(NSURLConnection *)connection didFailWithError:(NSError *)error
{
    _theConnection = nil;
    _receivedJoke = nil;
    
    UIAlertView *noConnectionAlert = [[UIAlertView alloc] initWithTitle:@"Damn!" message:@"There has been problems grabbing a tweet" delegate:self cancelButtonTitle:nil otherButtonTitles:nil];
    
    [noConnectionAlert show];}

@end
