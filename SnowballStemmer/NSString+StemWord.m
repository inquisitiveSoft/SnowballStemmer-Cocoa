//
//  NSString+StemWord.m
//  Snowball-iOS
//
//  Created by Harry Jordan on 17/09/2014.
//  Copyright (c) 2014 InquisitiveSoftware. All rights reserved.
//

#import "NSString+StemWord.h"
#import "libstemmer.h"


@implementation NSString (StemWord)


- (NSString *)stemWord
{
	NSString *input = self.lowercaseString;
	
	struct sb_stemmer *stemmer = sb_stemmer_new("en", NULL);
	
	const sb_symbol * inputWord = (sb_symbol *)[input cStringUsingEncoding:NSUTF8StringEncoding];
	const sb_symbol * stemmedWord = sb_stemmer_stem(stemmer, inputWord, (int)input.length);
	
	NSString *stem = [NSString stringWithCString:(const char *)stemmedWord encoding:NSUTF8StringEncoding];
	
	sb_stemmer_delete(stemmer);
	return stem;
}


@end
