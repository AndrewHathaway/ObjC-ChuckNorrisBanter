//
//  JokeResponse.h
//  ChuckNorrisBanter
//
//  Created by Andrew Hathaway on 01/10/2013.
//  Copyright (c) 2013 Andrew Hathaway. All rights reserved.
//

#import "JSONModel.h"
#import "Joke.h"

@interface JokeResponse : JSONModel

@property (strong, nonatomic) NSString *type;
@property (strong, nonatomic) Joke *value;

@end
