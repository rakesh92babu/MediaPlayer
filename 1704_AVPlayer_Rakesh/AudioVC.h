//
//  AudioVC.h
//  1704_AVPlayer_Rakesh
//
//  Created by student on 7/5/17.
//  Copyright © 2017 Rakesh. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>
#import <AVKit/AVKit.h>

@interface AudioVC : UIViewController
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;
- (IBAction)khaidiNo150Button:(id)sender;
- (IBAction)DJButton:(id)sender;
- (IBAction)majnuButton:(id)sender;
- (IBAction)nenuLocalButton:(id)sender;
- (IBAction)bahuBali2Button:(id)sender;
- (IBAction)play1Button:(id)sender;
- (IBAction)play2Button:(id)sender;
- (IBAction)play3Button:(id)sender;
- (IBAction)play4Button:(id)sender;
- (IBAction)play5Button:(id)sender;
- (IBAction)play6Button:(id)sender;
- (IBAction)pause1Button:(id)sender;
- (IBAction)pause2Button:(id)sender;
- (IBAction)pause3Button:(id)sender;
- (IBAction)pause4Button:(id)sender;
- (IBAction)pause5Button:(id)sender;
- (IBAction)pause6Button:(id)sender;
@property (weak, nonatomic) IBOutlet UILabel *sngNam1Lbl;
@property (weak, nonatomic) IBOutlet UILabel *sngNam2Lb;
@property (weak, nonatomic) IBOutlet UILabel *sngNam3Lb;
@property (weak, nonatomic) IBOutlet UILabel *sngNam4Lb;
@property (weak, nonatomic) IBOutlet UILabel *sngNam5Lb;
@property (weak, nonatomic) IBOutlet UILabel *sngNam6Lb;
@property (weak, nonatomic) IBOutlet UIVisualEffectView *blurView;

@property NSMutableArray * khaidi150Array;
@property NSMutableArray * majnuArray;
@property NSMutableArray * nenuLocalArray;
@property NSMutableArray * DJArray;
@property NSMutableArray * songsArray;

@property (weak, nonatomic) IBOutlet UIButton *play6Button;
@property (weak, nonatomic) IBOutlet UIButton *pause6Button;

@property AVPlayer * audioPlayer1;
@property AVPlayer * audioPlayer2;
@property AVPlayer * audioPlayer3;
@property AVPlayer * audioPlayer4;
@property AVPlayer * audioPlayer5;
@property AVPlayer * audioPlayer6;









@end
