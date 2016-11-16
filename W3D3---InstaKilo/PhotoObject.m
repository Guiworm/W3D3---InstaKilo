//
//  photoObject.m
//  W3D3---InstaKilo
//
//  Created by Dylan McCrindle on 2016-11-16.
//  Copyright © 2016 Dylan McCrindle. All rights reserved.
//

#import "PhotoObject.h"

@implementation PhotoObject

- (instancetype)initWithName: (NSString*)name andSubject:(NSString*)subject andLocation:(NSString*)location
{
	self = [super init];
	if (self) {
		_image = [UIImage imageNamed:name];
		_subject = subject;
		_location = location;
	}
	return self;
}

@end
