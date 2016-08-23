//
//  HomeViewController.m
//  IRIB Live
//
//  Created by Alireza Khoddam on 10/20/15.
//
//

#import "HomeViewController.h"
#import "HomeViewCell.h"
#import <AVKit/AVKit.h>

@interface HomeViewController (){
    NSArray *channels;
    NSArray *channelsURL;
}

@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view setTransform:CGAffineTransformMakeScale(-1, 1)];
    
    channels = @[@"شبکه یک",
                 @"شبکه دو",
                 @"شبکه سه",
                 @"شبکه چهار",
                 @"شبکه پنج",
@"شبکه خبر",
@"شبکه نسیم",
@"شبکه ورزش",
                 @"جام جم",];
                 
    channelsURL = @[@"http://cdn2.live.irib.ir:1935/e-tv/tv1-300k.stream/playlist.m3u8",
                    @"http://cdn2.live.irib.ir:1935/e-tv/tv2-300k.stream/playlist.m3u8",
                    @"http://cdn2.live.irib.ir:1935/e-tv/tv3-300k.stream/playlist.m3u8",
                    @"http://cdn2.live.irib.ir:1935/e-tv/tv4-300k.stream/playlist.m3u8",
                    @"http://cdn2.live.irib.ir:1935/e-tv/tehran-300k.stream/playlist.m3u8",
                    @"http://cdn2.live.irib.ir:1935/e-tv/irinn-300k.stream/playlist.m3u8",
                    @"http://cdn2.live.irib.ir:1935/e-tv/nasim-300k.stream/playlist.m3u8",
                    @"http://cdn2.live.irib.ir:1935/e-tv/varzesh-300k.stream/playlist.m3u8",
                    @"http://cdn2.live.irib.ir:1935/e-tv/jj1-300k.stream/playlist.m3u8",];

}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

#pragma mark <UICollectionViewDataSource>

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return channels.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    HomeViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"Cell" forIndexPath:indexPath];
    [cell setTransform:CGAffineTransformMakeScale(-1, 1)];

    cell.backgroundImageView.image = [UIImage imageNamed:[NSString stringWithFormat:@"tv%ldbg",(long)indexPath.row + 1]];
    cell.logoImageView.image = [UIImage imageNamed:[NSString stringWithFormat:@"tv%ld",(long)indexPath.row + 1]];
    cell.channelLabel.text = channels[indexPath.row];
    
    return cell;
}

#pragma mark <UICollectionViewDelegate>

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{
    NSURL *videoURL = [NSURL URLWithString:channelsURL[indexPath.row]];
    AVPlayer *player = [AVPlayer playerWithURL:videoURL];
    AVPlayerViewController *playerViewController = [AVPlayerViewController new];
    playerViewController.player = player;
    [self presentViewController:playerViewController animated:YES completion:^{
        [player play];
    }];
}


@end
