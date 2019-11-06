//
//  ViewController.m
//  IOSTrainingGraded
//
//  Created by OPS on 5/11/19.
//  Copyright © 2019 OPS. All rights reserved.
//

#import "ViewController.h"
#import "Collections/TopRatedMoviesCollectionViewCell.h"
#import "Collections/NowShowingCollectionViewCell.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.topRatedCollectionView registerNib:[UINib nibWithNibName:@"TopRatedMoviesCollectionViewCell" bundle:nil] forCellWithReuseIdentifier:@"TopRatedMovieCell"];
    [self.nowShowingCollectionView registerNib:[UINib nibWithNibName:@"NowShowingCollectionViewCell" bundle:nil] forCellWithReuseIdentifier:@"NowShowingCell"];
    
    _nowShowingMovies = [[NSArray alloc]initWithObjects:
                                                      @{ @"photo" : @"Now1",
                                                         @"name" : @"Allone Made" },
                                                      @{ @"photo" : @"Now2",
                                                         @"name" : @"The Summer Hooting" },
                                                      @{ @"photo" : @"Now3",
                                                         @"name" : @"Rario" },
                                                      @{ @"photo" : @"Now4",
                                                         @"name" : @"A Yank Doll" },
                                                      @{ @"photo" : @"Now5",
                                                         @"name" : @"Doombroom" },
                                                      @{ @"photo" : @"Now6",
                                                         @"name" : @"Last Sessions" },
                                                      @{ @"photo" : @"Now7",
                                                         @"name" : @"The International IT Martial" },
                                                      @{ @"photo" : @"Now8",
                                                         @"name" : @"The Big World" },
                                                      @{ @"photo" : @"Now9",
                                                         @"name" : @"The City" },
                                                      @{ @"photo" : @"Now10",
                                                         @"name" : @"Speaks" },
                                                     @{ @"photo" : @"Now11",
                                                        @"name" : @"Drive Street" },
                                                     @{ @"photo" : @"Now12",
                                                        @"name" : @"The One Movie" },
                                                     @{ @"photo" : @"Now13",
                                                        @"name" : @"The Love About A New Decides" },
                                                     @{ @"photo" : @"Now14",
                                                        @"name" : @"Another Women" },
                                                     @{ @"photo" : @"Now15",
                                                        @"name" : @"The Cast Indoced" },
                                                     @{ @"photo" : @"Now16",
                                                        @"name" : @"Straten Project: The Friends" },
                                                     @{ @"photo" : @"Now17",
                                                        @"name" : @"Suspect" },
                                                     @{ @"photo" : @"Now18",
                                                        @"name" : @"Heart of the Man" },
                                                     @{ @"photo" : @"Now19",
                                                        @"name" : @"The Best Woman" },
                                                     @{ @"photo" : @"Now20",
                                                        @"name" : @"The Queen of Mo Nades" },nil];
    // Do any additional setup after loading the view.
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    if (collectionView == self.topRatedCollectionView)
    {
        return 5;
    }
    else {
        return 20;
    }
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    if (collectionView == self.topRatedCollectionView)
    {
        TopRatedMoviesCollectionViewCell *cell = [_topRatedCollectionView dequeueReusableCellWithReuseIdentifier:@"TopRatedMovieCell" forIndexPath:indexPath];
        NSString *imageNumber = [NSString stringWithFormat: @"%ld",(long)indexPath.item + 1];
        NSString *imageName = @"Top";
        imageName = [imageName stringByAppendingString:imageNumber];
        cell.topRatedImageView.image = [UIImage imageNamed:imageName];
        return cell;
    }
    else {
        NowShowingCollectionViewCell *cell = [_nowShowingCollectionView dequeueReusableCellWithReuseIdentifier:@"NowShowingCell" forIndexPath:indexPath];
        NSDictionary *nowShowingMovie = [_nowShowingMovies objectAtIndex:indexPath.item];
        cell.nowShowingMovieImageView.image = [UIImage imageNamed:nowShowingMovie[@"photo"]];
        cell.nowShowingMovieLabel.text = nowShowingMovie[@"name"];
        return cell;
    }
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    CGRect screenBound = [[UIScreen mainScreen] bounds];
    CGSize screenSize = screenBound.size;
    
    CGFloat computedHeight = screenSize.height / 2;
    CGFloat computedWidth = screenSize.width / 2;
    return CGSizeMake(computedWidth, computedHeight);
}

@end
