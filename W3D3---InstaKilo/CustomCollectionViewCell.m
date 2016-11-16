//
//  CustomCollectionViewCell.m
//  W3D3---InstaKilo
//
//  Created by Dylan McCrindle on 2016-11-16.
//  Copyright © 2016 Dylan McCrindle. All rights reserved.
//

#import "CustomCollectionViewCell.h"
#import "PhotoObject.h"
@interface CustomCollectionViewCell ()
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@end

@implementation CustomCollectionViewCell



-(void)setPhotoObject:(PhotoObject *)photoObject{
	//set the image
	self.imageView.image = photoObject.image;
	_photoObject = photoObject;
}


@end
