//
//  NowShowingCollectionViewCell.h
//  IOSTrainingGraded
//
//  Created by OPS on 5/11/19.
//  Copyright © 2019 OPS. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface NowShowingCollectionViewCell : UICollectionViewCell
@property (weak, nonatomic) IBOutlet UIImageView *nowShowingMovieImageView;
@property (weak, nonatomic) IBOutlet UILabel *nowShowingMovieLabel;

@end

NS_ASSUME_NONNULL_END
