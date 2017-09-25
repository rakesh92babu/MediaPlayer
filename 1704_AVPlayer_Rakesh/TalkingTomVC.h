//
//  TalkingTomVC.h
//  1704_AVPlayer_Rakesh
//
//  Created by student on 7/7/17.
//  Copyright © 2017 Rakesh. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVKit/AVKit.h>
#import <AVFoundation/AVFoundation.h>

@interface TalkingTomVC : UIViewController
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UIButton *sideMenuButton;
@property UIButton * scrollButton;
- (IBAction)sideMenuButton:(id)sender;

@property (strong, nonatomic) NSMutableArray * imgsArray;

@property (strong, nonatomic) NSMutableArray * imgsArray1;
@property (strong, nonatomic) NSMutableArray * imgsArray2;
@property (strong, nonatomic) NSMutableArray * imgsArray3;
@property (strong, nonatomic) NSMutableArray * imgsArray4;
@property (strong, nonatomic) NSMutableArray * imgsArray5;
@property (strong, nonatomic) NSMutableArray * imgsArray6;
@property (strong, nonatomic) NSMutableArray * imgsArray7;
@property (strong, nonatomic) NSMutableArray * imgsArray8;
@property (strong, nonatomic) NSMutableArray * imgsArray9;
@property (strong, nonatomic) NSMutableArray * imgsArray10;
@property (strong, nonatomic) NSMutableArray * imgsArray11;
@property (strong, nonatomic) NSMutableArray * imgsArray12;
@property (strong, nonatomic) NSMutableArray * imgsArray13;
@property (strong, nonatomic) NSMutableArray * imgsArray14;
@property (strong, nonatomic) NSMutableArray * imgsArray15;
@property (strong, nonatomic) NSMutableArray * imgsArray16;
@property (strong, nonatomic) NSMutableArray * imgsArray17;
@property (strong, nonatomic) NSMutableArray * imgsArray18;

@property (strong, nonatomic) NSMutableArray * tomCatAudioArray;


@property (strong, nonatomic) NSMutableArray * tomLblArray;


@property (strong, nonatomic) AVPlayer * audioPlayer;

@property NSString * str;
@property int tommmmm;


@end
