//
//  ASViewController.m
//  ASVitamio
//
//  Created by sdglyuan00 on 06/27/2017.
//  Copyright (c) 2017 sdglyuan00. All rights reserved.
//

#import "ASViewController.h"
#import "ASVitamio.h"

@interface ASViewController ()<VMediaPlayerDelegate>

@end

@implementation ASViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [[VMediaPlayer sharedInstance] setupPlayerWithCarrierView:self.view withDelegate:self];
    [[VMediaPlayer sharedInstance] setDataSource:[NSURL URLWithString:@"rtmp://agqj.yzbabyu.com/tz01/8-11"]];
    [[VMediaPlayer sharedInstance] prepareAsync];
    [UIApplication sharedApplication].idleTimerDisabled = YES;
}

#pragma mark --- VMediaPlayerDelegate
- (void)mediaPlayer:(VMediaPlayer *)player didPrepared:(id)arg {
    @try {
        [player start];
    } @catch (NSException *exception) {
    } @finally {
        
    }
}

- (void)mediaPlayer:(VMediaPlayer *)player playbackComplete:(id)arg {
    [player reset];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
