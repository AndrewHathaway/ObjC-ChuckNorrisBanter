//
//  JokeResponse.h
//  ChuckNorrisBanter
//
//  Created by Andrew Hathaway on 01/10/2013.
//  Copyright (c) 2013 Andrew Hathaway. All rights reserved.
//

#import "Joke.h"
#import "JSONModel.h"

@interface JokeResponse : JSONModel

@property (strong , nonatomic) NSString *type;
@property (strong , nonatomic) Joke *value;

@end