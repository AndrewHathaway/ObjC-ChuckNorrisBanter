//
//  Joke.h
//  ChuckNorrisBanter
//
//  Created by Andrew Hathaway on 01/10/2013.
//  Copyright (c) 2013 Andrew Hathaway. All rights reserved.
//

#import "JSONModel.h"

@interface Joke : JSONModel

@property (assign, nonatomic) int id;
@property (strong, nonatomic) NSString *joke;

@end
