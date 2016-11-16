//
//  ViewController.m
//  W3D3---InstaKilo
//
//  Created by Dylan McCrindle on 2016-11-16.
//  Copyright © 2016 Dylan McCrindle. All rights reserved.
//

#import "ViewController.h"
@interface ViewController ()
@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;
@property (strong, nonatomic) PhotoManager* manager;
@end

@implementation ViewController

- (void)viewDidLoad {
	[super viewDidLoad];
	
	//create pictures
	NSMutableArray *initPics = [NSMutableArray new];

	
	[initPics addObject:[[PhotoObject alloc] initWithName:@"img0584" andSubject:@"People" andLocation:@"Toronto"]];
	[initPics addObject:[[PhotoObject alloc] initWithName:@"img0585" andSubject:@"People" andLocation:@"Toronto"]];
	[initPics addObject:[[PhotoObject alloc] initWithName:@"img0586" andSubject:@"People" andLocation:@"Toronto"]];
	[initPics addObject:[[PhotoObject alloc] initWithName:@"img0587" andSubject:@"People" andLocation:@"Halifax"]];
	[initPics addObject:[[PhotoObject alloc] initWithName:@"img0588" andSubject:@"Random" andLocation:@"Toronto"]];
	[initPics addObject:[[PhotoObject alloc] initWithName:@"img0589" andSubject:@"Face" andLocation:@"Toronto"]];
	[initPics addObject:[[PhotoObject alloc] initWithName:@"img0590" andSubject:@"People" andLocation:@"Toronto"]];
	[initPics addObject:[[PhotoObject alloc] initWithName:@"img0591" andSubject:@"Face" andLocation:@"Toronto"]];
	[initPics addObject:[[PhotoObject alloc] initWithName:@"img0592" andSubject:@"Random" andLocation:@"Halifax"]];
	[initPics addObject:[[PhotoObject alloc] initWithName:@"img0593" andSubject:@"Face" andLocation:@"Toronto"]];
	
	self.manager = [PhotoManager new];
	
	
	[self.manager splitBySubject:@"People" withArray:initPics];
	[self.manager splitBySubject:@"Random" withArray:initPics];
	[self.manager splitBySubject:@"Face" withArray:initPics];

	

	
	
	//make photos into a square
	UICollectionViewFlowLayout *layout = (UICollectionViewFlowLayout *)self.collectionView.collectionViewLayout;
	
	CGFloat width = self.view.bounds.size.width/2;
	CGFloat height = self.view.bounds.size.height/2;
	CGSize size = CGSizeMake(width, height);
	
	layout.sectionInset = UIEdgeInsetsMake(20, 0, 20, 0);
	layout.itemSize = size;
}


- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView{
	return self.manager.photoArray.count;
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
	NSMutableArray *arrayItem = self.manager.photoArray[section];
	return arrayItem.count;
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
	static NSString *idCell = @"cell";
	CustomCollectionViewCell *cell = [self.collectionView dequeueReusableCellWithReuseIdentifier:idCell forIndexPath:indexPath];
	cell.photoObject = [self.manager photoItemAtIndexPath:indexPath];
	return cell;
}

//- (UICollectionReusableView *)collectionView:(UICollectionView *)collectionView viewForSupplementaryElementOfKind:(NSString *)kind atIndexPath:(NSIndexPath *)indexPath
//{
//	UICollectionReusableView *reusableview = nil;
//	
//	if (kind == UICollectionElementKindSectionHeader) {
//		HeaderView *headerView = [collectionView dequeueReusableSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:@"headerView" forIndexPath:indexPath];
//		
//		//NSMutableArray *arrayItem = self.manager.photoArray[section];
//		NSString *title = [[NSString alloc]initWithFormat:@"%@", arrayItem[indexPath.section]];
//		headerView.title.text = title;
//		
//		reusableview = headerView;
//	}
// 
//	if (kind == UICollectionElementKindSectionFooter) {
//		UICollectionReusableView *footerview = [collectionView dequeueReusableSupplementaryViewOfKind:UICollectionElementKindSectionFooter withReuseIdentifier:@"FooterView" forIndexPath:indexPath];
//		
//		reusableview = footerview;
//	}
//	
//	return reusableview;
//}




@end
