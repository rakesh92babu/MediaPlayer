//
//  AudioVC.m
//  1704_AVPlayer_Rakesh
//
//  Created by student on 7/5/17.
//  Copyright © 2017 Rakesh. All rights reserved.
//

#import "AudioVC.h"

@interface AudioVC ()

@end

@implementation AudioVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.scrollView.contentSize=CGSizeMake(750, self.scrollView.frame.size.height);
    self.blurView.hidden=YES;
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//-(void)viewWillDisappear:(BOOL)animated
//{
//    [self.audioPlayer1 play];
//    
//}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/



- (IBAction)khaidiNo150Button:(id)sender {
    self.blurView.hidden=NO;
    
   // [self.audioPlayer6 play];
    self.pause6Button.hidden=YES;
    self.play6Button.hidden=YES;
    self.sngNam6Lb.hidden=YES;
    self.sngNam1Lbl.text=@"Ammadu";
    self.sngNam2Lb.text=@"Sundari";
    self.sngNam3Lb.text=@"You & Me";
    self.sngNam4Lb.text=@"Ratthalu";
    self.sngNam5Lb.text=@"Neeru Neeru";
    
    
    NSString *audioFilePath1 = [[NSBundle mainBundle]pathForResource:@"Ammadu Lets Do Kummudu" ofType:@"mp3"];
    self.audioPlayer1 = [[AVPlayer alloc]initWithURL:[NSURL fileURLWithPath:audioFilePath1]];
    NSString *audioFilePath2 = [[NSBundle mainBundle]pathForResource:@"Sundari" ofType:@"mp3"];
    self.audioPlayer2= [[AVPlayer alloc]initWithURL:[NSURL fileURLWithPath:audioFilePath2]];
    NSString *audioFilePath3 = [[NSBundle mainBundle]pathForResource:@"You & Me" ofType:@"mp3"];
    self.audioPlayer3 = [[AVPlayer alloc]initWithURL:[NSURL fileURLWithPath:audioFilePath3]];
    NSString *audioFilePath4 = [[NSBundle mainBundle]pathForResource:@"Ratthalu" ofType:@"mp3"];
    self.audioPlayer4 = [[AVPlayer alloc]initWithURL:[NSURL fileURLWithPath:audioFilePath4]];
    NSString *audioFilePath5 = [[NSBundle mainBundle]pathForResource:@"Neeru Neeru" ofType:@"mp3"];
    self.audioPlayer5 = [[AVPlayer alloc]initWithURL:[NSURL fileURLWithPath:audioFilePath5]];
    
    
    
}


- (IBAction)DJButton:(id)sender {
    self.blurView.hidden=NO;
    
    //[self.audioPlayer6 play];
    self.pause6Button.hidden=YES;
    self.play6Button.hidden=YES;
    self.sngNam6Lb.hidden=YES;
    self.sngNam1Lbl.text=@"Seeti Maar";
    self.sngNam2Lb.text=@"Box Baddhalai Poye";
    self.sngNam3Lb.text=@"DJ Saranam Bhaje Bhaje";
    self.sngNam4Lb.text=@"Gudilo Badilo Madilo";
    self.sngNam5Lb.text=@"Mecchuko";
    NSString *audioFilePath1 = [[NSBundle mainBundle]pathForResource:@"Seeti Maar" ofType:@"mp3"];
    self.audioPlayer1 = [[AVPlayer alloc]initWithURL:[NSURL fileURLWithPath:audioFilePath1]];
    NSString *audioFilePath2 = [[NSBundle mainBundle]pathForResource:@"Box Baddhalai Poye" ofType:@"mp3"];
    self.audioPlayer2= [[AVPlayer alloc]initWithURL:[NSURL fileURLWithPath:audioFilePath2]];
    NSString *audioFilePath3 = [[NSBundle mainBundle]pathForResource:@"DJ Saranam Bhaje Bhaje" ofType:@"mp3"];
    self.audioPlayer3 = [[AVPlayer alloc]initWithURL:[NSURL fileURLWithPath:audioFilePath3]];
    NSString *audioFilePath4 = [[NSBundle mainBundle]pathForResource:@"Gudilo Badilo Madilo" ofType:@"mp3"];
    self.audioPlayer4 = [[AVPlayer alloc]initWithURL:[NSURL fileURLWithPath:audioFilePath4]];
    NSString *audioFilePath5 = [[NSBundle mainBundle]pathForResource:@"Mecchuko" ofType:@"mp3"];
    self.audioPlayer5 = [[AVPlayer alloc]initWithURL:[NSURL fileURLWithPath:audioFilePath5]];
    
}

- (IBAction)majnuButton:(id)sender {
    self.blurView.hidden=NO;
    self.play6Button.hidden=NO;
    self.pause6Button.hidden=NO;
    self.sngNam6Lb.hidden=NO;    
    
    //[self.audioPlayer6 play];
    self.sngNam1Lbl.text=@"Aadara";
    self.sngNam2Lb.text=@"Kallumoosi";
    self.sngNam3Lb.text=@"Oorikey Ala";
    self.sngNam4Lb.text=@"Andamaina";
    self.sngNam5Lb.text=@"Jare Jare";
    self.sngNam6Lb.text=@"Oye Meghamla";
    NSString *audioFilePath1 = [[NSBundle mainBundle]pathForResource:@"Aadara" ofType:@"mp3"];
    self.audioPlayer1 = [[AVPlayer alloc]initWithURL:[NSURL fileURLWithPath:audioFilePath1]];
    NSString *audioFilePath2 = [[NSBundle mainBundle]pathForResource:@"Kallumoosi" ofType:@"mp3"];
    self.audioPlayer2= [[AVPlayer alloc]initWithURL:[NSURL fileURLWithPath:audioFilePath2]];
    NSString *audioFilePath3 = [[NSBundle mainBundle]pathForResource:@"Oorikey Ala" ofType:@"mp3"];
    self.audioPlayer3 = [[AVPlayer alloc]initWithURL:[NSURL fileURLWithPath:audioFilePath3]];
    NSString *audioFilePath4 = [[NSBundle mainBundle]pathForResource:@"Andamaina" ofType:@"mp3"];
    self.audioPlayer4 = [[AVPlayer alloc]initWithURL:[NSURL fileURLWithPath:audioFilePath4]];
    NSString *audioFilePath5 = [[NSBundle mainBundle]pathForResource:@"Jare Jare" ofType:@"mp3"];
    self.audioPlayer5 = [[AVPlayer alloc]initWithURL:[NSURL fileURLWithPath:audioFilePath5]];
    NSString *audioFilePath6 = [[NSBundle mainBundle]pathForResource:@"Oye Meghamla" ofType:@"mp3"];
    self.audioPlayer6 = [[AVPlayer alloc]initWithURL:[NSURL fileURLWithPath:audioFilePath6]];
    
    
}



- (IBAction)nenuLocalButton:(id)sender {
    
    self.blurView.hidden=NO;
    
    self.pause6Button.hidden=YES;
    self.play6Button.hidden=YES;
    self.sngNam6Lb.hidden=YES;
    self.sngNam1Lbl.text=@"Next Enti";
    self.sngNam2Lb.text=@"Arere Yekkada";
    self.sngNam3Lb.text=@"Disturb Chestha Ninnu";
    self.sngNam4Lb.text=@"Champesaave Nannu";
    self.sngNam5Lb.text=@"Side Please";
    
    NSString *audioFilePath1 = [[NSBundle mainBundle]pathForResource:@"Next Enti" ofType:@"mp3"];
    self.audioPlayer1 = [[AVPlayer alloc]initWithURL:[NSURL fileURLWithPath:audioFilePath1]];
    NSString *audioFilePath2 = [[NSBundle mainBundle]pathForResource:@"Arere Yekkada" ofType:@"mp3"];
    self.audioPlayer2= [[AVPlayer alloc]initWithURL:[NSURL fileURLWithPath:audioFilePath2]];
    NSString *audioFilePath3 = [[NSBundle mainBundle]pathForResource:@"Disturb Chestha Ninnu" ofType:@"mp3"];
    self.audioPlayer3 = [[AVPlayer alloc]initWithURL:[NSURL fileURLWithPath:audioFilePath3]];
    NSString *audioFilePath4 = [[NSBundle mainBundle]pathForResource:@"Champesaave Nannu" ofType:@"mp3"];
    self.audioPlayer4 = [[AVPlayer alloc]initWithURL:[NSURL fileURLWithPath:audioFilePath4]];
    NSString *audioFilePath5 = [[NSBundle mainBundle]pathForResource:@"Side Please" ofType:@"mp3"];
    self.audioPlayer5 = [[AVPlayer alloc]initWithURL:[NSURL fileURLWithPath:audioFilePath5]];
    
}

- (IBAction)bahuBali2Button:(id)sender {
    self.blurView.hidden=NO;
    
    //[self.audioPlayer6 play];
    self.pause6Button.hidden=YES;
    self.play6Button.hidden=YES;
    self.sngNam6Lb.hidden=YES;
    self.sngNam1Lbl.text=@"Bahubali2 01 Mp3";
    self.sngNam2Lb.text=@"Bahubali2 02 Mp3";
    self.sngNam3Lb.text=@"Bahubali2 03 Mp3";
    self.sngNam4Lb.text=@"Bahubali2 04 Mp3";
    self.sngNam5Lb.text=@"Bahubali2 05 Mp3";
    
    self.audioPlayer1 = [[AVPlayer alloc]initWithURL:[NSURL URLWithString:@"http://www.brninfotech.com/media/audio/01.mp3"]];
    self.audioPlayer2 = [[AVPlayer alloc]initWithURL:[NSURL URLWithString:@"http://www.brninfotech.com/media/audio/02.mp3"]];
    self.audioPlayer3 = [[AVPlayer alloc]initWithURL:[NSURL URLWithString:@"http://www.brninfotech.com/media/audio/03.mp3"]];
    self.audioPlayer4 = [[AVPlayer alloc]initWithURL:[NSURL URLWithString:@"http://www.brninfotech.com/media/audio/04.mp3"]];
    self.audioPlayer5 = [[AVPlayer alloc]initWithURL:[NSURL URLWithString:@"http://www.brninfotech.com/media/audio/05.mp3"]];
}



- (IBAction)play1Button:(id)sender {
    [self.audioPlayer2 pause];
    [self.audioPlayer3 pause];
    [self.audioPlayer4 pause];
    [self.audioPlayer5 pause];
    [self.audioPlayer6 pause];
    
    [self.audioPlayer1 play];
}

- (IBAction)play2Button:(id)sender {
    [self.audioPlayer1 pause];
    [self.audioPlayer3 pause];
    [self.audioPlayer4 pause];
    [self.audioPlayer5 pause];
    [self.audioPlayer6 pause];
    
    [self.audioPlayer2 play];
}

- (IBAction)play3Button:(id)sender {
    [self.audioPlayer2 pause];
    [self.audioPlayer1 pause];
    [self.audioPlayer4 pause];
    [self.audioPlayer5 pause];
    [self.audioPlayer6 pause];
    
    [self.audioPlayer3 play];
}

- (IBAction)play4Button:(id)sender {
    [self.audioPlayer2 pause];
    [self.audioPlayer3 pause];
    [self.audioPlayer1 pause];
    [self.audioPlayer5 pause];
    [self.audioPlayer6 pause];
    
    [self.audioPlayer4 play];
}

- (IBAction)play5Button:(id)sender {
    [self.audioPlayer2 pause];
    [self.audioPlayer3 pause];
    [self.audioPlayer4 pause];
    [self.audioPlayer1 pause];
    [self.audioPlayer6 pause];
    
    [self.audioPlayer5 play];
}

- (IBAction)play6Button:(id)sender {
    [self.audioPlayer2 pause];
    [self.audioPlayer3 pause];
    [self.audioPlayer4 pause];
    [self.audioPlayer1 pause];
    [self.audioPlayer5 pause];
    
    [self.audioPlayer6 play];
}



- (IBAction)pause1Button:(id)sender {
    [self.audioPlayer1 pause];
}

- (IBAction)pause2Button:(id)sender {
    [self.audioPlayer2 pause];
}

- (IBAction)pause3Button:(id)sender {
    [self.audioPlayer3 pause];
}

- (IBAction)pause4Button:(id)sender {
    [self.audioPlayer4 pause];
}

- (IBAction)pause5Button:(id)sender {
    [self.audioPlayer5 pause];
}

- (IBAction)pause6Button:(id)sender {
    [self.audioPlayer6 pause];
}
@end
