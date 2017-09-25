//
//  TalkingTomVC.m
//  1704_AVPlayer_Rakesh
//
//  Created by student on 7/7/17.
//  Copyright © 2017 Rakesh. All rights reserved.
//

#import "TalkingTomVC.h"

@interface TalkingTomVC ()

@end

@implementation TalkingTomVC

- (void)viewDidLoad {
    [super viewDidLoad];
    [self createElements];
    self.scrollView.contentSize = CGSizeMake(self.scrollView.frame.size.width, 1300);
    self.sideMenuButton.hidden=NO;
    // Do any additional setup after loading the view.
}

-(void)createElements{
    [self elementsForApp];
    for(int i=0;i<18;i++){
        self.scrollButton = [[UIButton alloc]init];
        self.scrollButton.frame=CGRectMake(21,((5+i)+(i*70)), 53, 72);
        [self.scrollButton setImage:[UIImage imageNamed:@"Talking_Tom.png"] forState:UIControlStateNormal];
        self.scrollButton.tag = i;
        [self.scrollView addSubview:self.scrollButton];
        [self.scrollButton addTarget:self action:@selector(onTomSelected:) forControlEvents:UIControlEventTouchUpInside];
    }
}

-(void)onTomSelected :(id)sender
{
    UIButton * temp = sender;
    
    for (int i=0; i<18; i++) {
        
        
        if (i == temp.tag) {
            self.imageView.animationImages = [self.imgsArray objectAtIndex:temp.tag];
            self.imageView.animationDuration = 5;
            self.imageView.animationRepeatCount = 1;
            self.scrollView.hidden=YES;
            [self.imageView startAnimating];
            self.str = [self.tomCatAudioArray objectAtIndex:temp.tag];
            break;
        }
        
        
    }
    
    NSString * audioPath = [[NSBundle mainBundle] pathForResource:self.str ofType:@"wav"];
    NSURL * url = [NSURL fileURLWithPath:audioPath];
    self.audioPlayer = [[AVPlayer alloc] initWithURL:url];
    [self.audioPlayer playImmediatelyAtRate:0.3];
    [self.audioPlayer play];
    
    
}

-(void)elementsForApp
{
    self.view.backgroundColor = [UIColor colorWithRed:0.47 green:0.73 blue:0.98 alpha:1.0];
    
    self.imgsArray = [[NSMutableArray alloc] init];
    
    self.imgsArray1 = [[NSMutableArray alloc] init];
    self.imgsArray2 = [[NSMutableArray alloc] init];
    self.imgsArray3 = [[NSMutableArray alloc] init];
    self.imgsArray4 = [[NSMutableArray alloc] init];
    self.imgsArray5 = [[NSMutableArray alloc] init];
    self.imgsArray6 = [[NSMutableArray alloc] init];
    self.imgsArray7 = [[NSMutableArray alloc] init];
    self.imgsArray8 = [[NSMutableArray alloc] init];
    self.imgsArray9 = [[NSMutableArray alloc] init];
    self.imgsArray10 = [[NSMutableArray alloc] init];
    self.imgsArray11 = [[NSMutableArray alloc] init];
    self.imgsArray12 = [[NSMutableArray alloc] init];
    self.imgsArray13 = [[NSMutableArray alloc] init];
    self.imgsArray14 = [[NSMutableArray alloc] init];
    self.imgsArray15 = [[NSMutableArray alloc] init];
    self.imgsArray16 = [[NSMutableArray alloc] init];
    self.imgsArray17 = [[NSMutableArray alloc] init];
    self.imgsArray18 = [[NSMutableArray alloc] init];
    
    self.tomLblArray = [[NSMutableArray alloc] init];
    //self.tomCatAudioArray = [[NSMutableArray alloc] init];
    
    for (int i=0; i<18; i++) {
        
        [self.tomLblArray addObject:[NSString stringWithFormat:@"CAT%d",i+1]];
    }
    
    
    
    for (int i=0; i<26; i++) {
        if (i<10) {
            [self.imgsArray1 addObject:[UIImage imageNamed:[NSString stringWithFormat:@"cat_angry000%d.png",i]]];
        } else {
            [self.imgsArray1 addObject:[UIImage imageNamed:[NSString stringWithFormat:@"cat_angry00%d.png",i]]];
        }
    }        [self.imgsArray addObject:self.imgsArray1];
    
    for (int i=0; i<3; i++) {
        if (i<10) {
            [self.imgsArray2 addObject:[UIImage imageNamed:[NSString stringWithFormat:@"cat_blink000%d.png",i]]];
        } else {
            [self.imgsArray2 addObject:[UIImage imageNamed:[NSString stringWithFormat:@"cat_blink00%d.png",i]]];
        }
    }        [self.imgsArray addObject:self.imgsArray2];
    
    for (int i=0; i<12; i++) {
        if (i<10) {
            [self.imgsArray3 addObject:[UIImage imageNamed:[NSString stringWithFormat:@"cat_cymbal000%d.png",i]]];
        } else {
            [self.imgsArray3 addObject:[UIImage imageNamed:[NSString stringWithFormat:@"cat_cymbal00%d.png",i]]];
        }
    }        [self.imgsArray addObject:self.imgsArray3];
    
    
    
    
    
    
    for (int i=0; i<80; i++) {
        if (i<10) {
            [self.imgsArray4 addObject:[UIImage imageNamed:[NSString stringWithFormat:@"cat_drink000%d.png",i]]];
        } else {
            [self.imgsArray4 addObject:[UIImage imageNamed:[NSString stringWithFormat:@"cat_drink00%d.png",i]]];
        }
    }        [self.imgsArray addObject:self.imgsArray4];
    
    for (int i=0; i<39; i++) {
        if (i<10) {
            [self.imgsArray5 addObject:[UIImage imageNamed:[NSString stringWithFormat:@"cat_eat000%d.png",i]]];
        } else {
            [self.imgsArray5 addObject:[UIImage imageNamed:[NSString stringWithFormat:@"cat_eat00%d.png",i]]];
        }
    }        [self.imgsArray addObject:self.imgsArray5];
    
    for (int i=0; i<28; i++) {
        if (i<10) {
            [self.imgsArray6 addObject:[UIImage imageNamed:[NSString stringWithFormat:@"cat_fart000%d.png",i]]];
        } else {
            [self.imgsArray6 addObject:[UIImage imageNamed:[NSString stringWithFormat:@"cat_fart00%d.png",i]]];
        }
    }       [self.imgsArray addObject:self.imgsArray6];
    
    for (int i=0; i<29; i++) {
        if (i<10) {
            [self.imgsArray7 addObject:[UIImage imageNamed:[NSString stringWithFormat:@"cat_foot_left000%d.png",i]]];
        } else {
            [self.imgsArray7 addObject:[UIImage imageNamed:[NSString stringWithFormat:@"cat_foot_left00%d.png",i]]];
        }
    }      [self.imgsArray addObject:self.imgsArray7];
    
    for (int i=0; i<29; i++) {
        if (i<10) {
            [self.imgsArray8 addObject:[UIImage imageNamed:[NSString stringWithFormat:@"cat_foot_right000%d.png",i]]];
        } else {
            [self.imgsArray8 addObject:[UIImage imageNamed:[NSString stringWithFormat:@"cat_foot_right00%d.png",i]]];
        }
    }      [self.imgsArray addObject:self.imgsArray8];
    
    for (int i=0; i<28; i++) {
        if (i<10) {
            [self.imgsArray9 addObject:[UIImage imageNamed:[NSString stringWithFormat:@"cat_happy000%d.png",i]]];
        } else {
            [self.imgsArray9 addObject:[UIImage imageNamed:[NSString stringWithFormat:@"cat_happy00%d.png",i]]];
        }
    }      [self.imgsArray addObject:self.imgsArray9];
    
    for (int i=0; i<24; i++) {
        if (i<10) {
            [self.imgsArray10 addObject:[UIImage imageNamed:[NSString stringWithFormat:@"cat_happy_simple000%d.png",i]]];
        } else {
            [self.imgsArray10 addObject:[UIImage imageNamed:[NSString stringWithFormat:@"cat_happy_simple00%d.png",i]]];
        }
    }   [self.imgsArray addObject:self.imgsArray10];
    
    for (int i=0; i<80; i++) {
        if (i<10) {
            [self.imgsArray11 addObject:[UIImage imageNamed:[NSString stringWithFormat:@"cat_knockout000%d.png",i]]];
        } else {
            [self.imgsArray11 addObject:[UIImage imageNamed:[NSString stringWithFormat:@"cat_knockout00%d.png",i]]];
        }
    }     [self.imgsArray addObject:self.imgsArray11];
    
    for (int i=0; i<11; i++) {
        if (i<10) {
            [self.imgsArray12 addObject:[UIImage imageNamed:[NSString stringWithFormat:@"cat_listen000%d.png",i]]];
        } else {
            [self.imgsArray12 addObject:[UIImage imageNamed:[NSString stringWithFormat:@"cat_listen00%d.png",i]]];
        }
    }     [self.imgsArray addObject:self.imgsArray12];
    
    for (int i=0; i<22; i++) {
        if (i<10) {
            [self.imgsArray13 addObject:[UIImage imageNamed:[NSString stringWithFormat:@"cat_pie000%d.png",i]]];
        } else {
            [self.imgsArray13 addObject:[UIImage imageNamed:[NSString stringWithFormat:@"cat_pie00%d.png",i]]];
        }
    }       [self.imgsArray addObject:self.imgsArray13];
    
    for (int i=0; i<55; i++) {
        if (i<10) {
            [self.imgsArray14 addObject:[UIImage imageNamed:[NSString stringWithFormat:@"cat_scratch000%d.png",i]]];
        } else {
            [self.imgsArray14 addObject:[UIImage imageNamed:[NSString stringWithFormat:@"cat_scratch00%d.png",i]]];
        }
    }    [self.imgsArray addObject:self.imgsArray14];
    
    for (int i=0; i<13; i++) {
        if (i<10) {
            [self.imgsArray15 addObject:[UIImage imageNamed:[NSString stringWithFormat:@"cat_sneeze000%d.png",i]]];
        } else {
            [self.imgsArray15 addObject:[UIImage imageNamed:[NSString stringWithFormat:@"cat_sneeze00%d.png",i]]];
        }
    }   [self.imgsArray addObject:self.imgsArray15];
    
    for (int i=0; i<33; i++) {
        if (i<10) {
            [self.imgsArray16 addObject:[UIImage imageNamed:[NSString stringWithFormat:@"cat_stomach000%d.png",i]]];
        } else {
            [self.imgsArray16 addObject:[UIImage imageNamed:[NSString stringWithFormat:@"cat_stomach00%d.png",i]]];
        }
    }     [self.imgsArray addObject:self.imgsArray16];
    
    for (int i=0; i<15; i++) {
        if (i<10) {
            [self.imgsArray17 addObject:[UIImage imageNamed:[NSString stringWithFormat:@"cat_talk000%d.png",i]]];
        } else {
            [self.imgsArray17 addObject:[UIImage imageNamed:[NSString stringWithFormat:@"cat_talk00%d.png",i]]];
        }
    }      [self.imgsArray addObject:self.imgsArray17];
    
    for (int i=0; i<30; i++) {
        if (i<10) {
            [self.imgsArray18 addObject:[UIImage imageNamed:[NSString stringWithFormat:@"cat_zeh000%d.png",i]]];
        } else {
            [self.imgsArray18 addObject:[UIImage imageNamed:[NSString stringWithFormat:@"cat_zeh00%d.png",i]]];
        }
    }    [self.imgsArray addObject:self.imgsArray18];
    
    
    
    self.tomCatAudioArray = [[NSMutableArray alloc] initWithObjects:@"angry_8000",@"slap5_8000",@"cymbal_8000",@"p_drink_milk_8000",@"p_eat_8000",@"fart001_8000",@"p_foot3_8000",@"p_foot4_8000",@"p_belly1_8000",@"p_belly2_8000",@"p_meuu_8000",@"p_noo_8000",@"p_sneeze_8000",@"p_stars2s_8000",@"p_yawn2_11a_8000",@"p_yawn3_11a_8000",@"pour_milk_8000",@"purr_8000",@"slap1_8000",@"splat5_8000",@"tafel_kratzen_8000",nil];
    
    
}

- (void)viewWillDisappear:(BOOL)animated // Called when the view is dismissed, covered or otherwise hidden. Default does nothing
{
    [self.audioPlayer pause];
    self.audioPlayer = nil;
    [self.view removeFromSuperview];
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)sideMenuButton:(id)sender {
    self.scrollView.hidden=NO;
}
@end
