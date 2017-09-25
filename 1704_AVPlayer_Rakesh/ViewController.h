//
//  ViewController.h
//  1704_AVPlayer_Rakesh
//
//  Created by student on 7/5/17.
//  Copyright © 2017 Rakesh. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>
#import <AVKit/AVKit.h>

@interface ViewController : UIViewController
@property AVPlayerViewController * avPlayerVC;
@property AVPlayerViewController * avPlayerVC1;
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;
@property (weak, nonatomic) IBOutlet UIButton *bahubaliButton;
@property (weak, nonatomic) IBOutlet UIButton *ranaButton;
- (IBAction)gopiChandButton:(id)sender;
- (IBAction)maheshButton:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *nextButton;
- (IBAction)bahubaliButton:(id)sender;
- (IBAction)ranaButton:(id)sender;

- (IBAction)naniButton:(id)sender;
@property (weak, nonatomic) IBOutlet UIImageView *displayImage;
@property (weak, nonatomic) IBOutlet UIView *buttonView;
- (IBAction)nextViewButton:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *playButton;
@property (weak, nonatomic) IBOutlet UILabel *nameLable;
- (IBAction)playButton:(id)sender;




@end

