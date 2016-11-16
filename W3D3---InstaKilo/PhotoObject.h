//
//  photoObject.h
//  W3D3---InstaKilo
//
//  Created by Dylan McCrindle on 2016-11-16.
//  Copyright © 2016 Dylan McCrindle. All rights reserved.
//

#import <Foundation/Foundation.h>
@import UIKit;

@interface PhotoObject : NSObject

@property (nonatomic, readonly) UIImage *image;
@property (nonatomic) NSString *subject;
@property (nonatomic) NSString *location;

- (instancetype)initWithName: (NSString*)name andSubject:(NSString*)subject andLocation:(NSString*)location;

@end
