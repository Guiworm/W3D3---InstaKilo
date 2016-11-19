//
//  PhotoManager.h
//  W3D3---InstaKilo
//
//  Created by Dylan McCrindle on 2016-11-16.
//  Copyright © 2016 Dylan McCrindle. All rights reserved.
//

#import <Foundation/Foundation.h>
@class PhotoObject;

@interface PhotoManager : NSObject

@property NSMutableArray *photoArray;
@property NSMutableDictionary *categoryDict;

-(NSInteger)numberOfItemsInSection:(NSString *)section;
-(PhotoObject *)photoItemAtIndexPath:(NSIndexPath *)indexPath;
-(void)splitBySubject:(NSString *)sectionType withArray:(NSMutableArray*)splitArray;

@end
