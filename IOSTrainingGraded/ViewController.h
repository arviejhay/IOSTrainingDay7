//
//  ViewController.h
//  IOSTrainingGraded
//
//  Created by OPS on 5/11/19.
//  Copyright © 2019 OPS. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout>
@property (weak, nonatomic) IBOutlet UICollectionView *topRatedCollectionView;
@property (weak, nonatomic) IBOutlet UICollectionView *nowShowingCollectionView;

@property (copy, readwrite) NSArray *nowShowingMovies;

@end

