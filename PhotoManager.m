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
		self.categoryDict = [NSMutableDictionary new];
	}
	return self;
}

-(NSInteger)numberOfItemsInSection:(NSString *)section{
	NSInteger new = [self.categoryDict[section] count];
	return new;
}

-(PhotoObject *)photoItemAtIndexPath:(NSIndexPath *)indexPath{
	return self.photoArray[indexPath.section][indexPath.row];
//	return self.photoArray[indexPath.row];
}

-(void)splitBySubject:(NSString *)sectionType withArray:(NSMutableArray*)splitArray{
	NSMutableArray *newSection = [NSMutableArray new];
	
	for(PhotoObject *item in splitArray){
		if([item.subject isEqualToString:sectionType]){
			//Create a subject Array
			if([self.categoryDict objectForKey:@"Subject"] == nil){
				//create new array in dictionary with the section type
				self.categoryDict[@"Subject"] = [NSMutableArray new];
			}
			[newSection addObject:item];
		}
		else if([item.location isEqualToString:sectionType]){
			if([self.categoryDict objectForKey:@"Location"] == nil){
				//create new array in dictionary with the section type
				self.categoryDict[@"Location"] = [NSMutableArray new];
			}
			[newSection addObject:item];
		}
	}
	//[self.photoArray addObject:newSection];
	
	//Check the first object to see if it should be put in a location or subject view
	PhotoObject *photoObject = newSection[0];
	
	//add the array to the section type in the dictionary
	if([photoObject.subject isEqualToString:sectionType]){
		[self.categoryDict[@"Subject"] addObject: newSection];
	}
	else if([photoObject.location isEqualToString:sectionType]){
		[self.categoryDict[@"Location"] addObject: newSection];
	}
//	[self.categoryDict[@"location"][1] addObject:foo]
}

@end



















