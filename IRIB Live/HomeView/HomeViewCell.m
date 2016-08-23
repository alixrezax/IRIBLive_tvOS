//
//  HomeViewCell.m
//  IRIB Live
//
//  Created by Alireza Khoddam on 10/21/15.
//
//

#import "HomeViewCell.h"
#import "UIFont+Core.h"

@implementation HomeViewCell

-(void)awakeFromNib{
    self.channelLabel.font = [UIFont iranSansWithWeight:KHFontWeightRegular size:30];
    self.channelLabel.textColor = [UIColor lightGrayColor];
}

- (void)didUpdateFocusInContext:(UIFocusUpdateContext *)context withAnimationCoordinator:(UIFocusAnimationCoordinator *)coordinator
{
    [coordinator addCoordinatedAnimations:^{
        if (self.focused) {
            self.channelLabel.textColor = [UIColor blackColor];
            self.channelLabel.font = [UIFont iranSansWithWeight:KHFontWeightRegular size:40];
        } else {
            self.channelLabel.textColor = [UIColor lightGrayColor];
            self.channelLabel.font = [UIFont iranSansWithWeight:KHFontWeightRegular size:30];
        }
        
    } completion:nil];
}

@end
