//
//  PhotoManager.m
//  W3D3---InstaKilo
//
//  Created by Dylan McCrindle on 2016-11-16.
//  Copyright © 2016 Dylan McCrindle. All rights reserved.
//

#import "PhotoManager.h"
#import "PhotoObject.h"

@implementation PhotoManager

- (instancetype)init
{
	self = [super init];
	if (self) {
		self.photoArray = [NSMutableArray new];
	}
	return self;
}

-(NSInteger)numberOfItemsInSection:(NSInteger)section{
	NSMutableArray *arrayItem = (NSMutableArray*)self.photoArray[section];
	return arrayItem.count;
}

-(PhotoObject *)photoItemAtIndexPath:(NSIndexPath *)indexPath{
	return self.photoArray[indexPath.section][indexPath.row];
//	return self.photoArray[indexPath.row];
}

-(void)splitBySubject:(NSString *)sectionType withArray:(NSMutableArray*)splitArray{
	NSMutableArray *newSection = [NSMutableArray new];
	
	for(PhotoObject *item in splitArray){
		if([item.subject isEqualToString:sectionType]){
			[newSection addObject:item];
		}
		else if([item.location isEqualToString:sectionType]){
			[newSection addObject:item];
		}
	}
	[self.photoArray addObject:newSection];
}

@end



















