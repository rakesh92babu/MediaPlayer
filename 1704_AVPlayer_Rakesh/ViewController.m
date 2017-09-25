//
//  ViewController.m
//  1704_AVPlayer_Rakesh
//
//  Created by student on 7/5/17.
//  Copyright © 2017 Rakesh. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.scrollView.showsHorizontalScrollIndicator=YES;
    self.scrollView.contentSize=CGSizeMake(750, self.scrollView.frame.size.height);
    self.displayImage.hidden=YES;
    self.buttonView.hidden=YES;
    
    // Do any additional setup after loading the view, typically from a nib.
}

-(void)viewWillDisappear:(BOOL)animated
{
    [self.avPlayerVC.player pause];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)buttonTag:(id)sender
{
    UIButton * temp = sender;
    if(temp.tag==0)
    {
        [self.avPlayerVC.view removeFromSuperview];
        self.displayImage.hidden=NO;
        self.buttonView.hidden=NO;
        self.displayImage.image=[UIImage imageNamed:@"Ninnu Kori.jpg"];
        self.nameLable.text=@"Nani";
        
        NSString * videoFilePath = [[NSBundle mainBundle]pathForResource:@"NinnuKori" ofType:@"mp4"];
        self.avPlayerVC = [[AVPlayerViewController alloc]init];
        self.avPlayerVC.view.frame=CGRectMake(0, 40, self.view.frame.size.width, 360);
        
        self.avPlayerVC.player = [[AVPlayer alloc]initWithURL:[NSURL fileURLWithPath:videoFilePath]];
    }
    else if (temp.tag==1)
    {
        [self.avPlayerVC.view removeFromSuperview];
        [self.avPlayerVC.player pause];
        self.displayImage.hidden=NO;
        self.buttonView.hidden=NO;
        self.displayImage.image=[UIImage imageNamed:@"Spyder1.jpg"];
        self.nameLable.text=@"Mahesh Babu";
        
        NSString * videoFilePath = [[NSBundle mainBundle]pathForResource:@"Spyder" ofType:@"mp4"];
        self.avPlayerVC = [[AVPlayerViewController alloc]init];
        self.avPlayerVC.view.frame=CGRectMake(0, 40, self.view.frame.size.width, 360);
        
        self.avPlayerVC.player = [[AVPlayer alloc]initWithURL:[NSURL fileURLWithPath:videoFilePath]];
        
    }
    else if (temp.tag==2)
    {
        [self.avPlayerVC.view removeFromSuperview];
        [self.avPlayerVC.player pause];
        self.displayImage.hidden=NO;
        self.buttonView.hidden=NO;
        self.displayImage.image=[UIImage imageNamed:@"Gautham Nanda.jpg"];
        self.nameLable.text=@"Gopi Chand";
        NSString * videoFilePath = [[NSBundle mainBundle]pathForResource:@"Gautham Nanda" ofType:@"mp4"];
        self.avPlayerVC = [[AVPlayerViewController alloc]init];
        self.avPlayerVC.view.frame=CGRectMake(0, 40, self.view.frame.size.width, 360);
        
        self.avPlayerVC.player = [[AVPlayer alloc]initWithURL:[NSURL fileURLWithPath:videoFilePath]];
        
    }
    else if(temp.tag==3)
    {
        [self.avPlayerVC.view removeFromSuperview];
        [self.avPlayerVC.player pause];
        self.displayImage.hidden=NO;
        self.buttonView.hidden=NO;
        self.displayImage.image=[UIImage imageNamed:@"Nene Raju Nene Mantri.jpg"];
        self.nameLable.text=@"Rana";
        NSString * videoFilePath = [[NSBundle mainBundle]pathForResource:@"Nene Raju Nene Mantri" ofType:@"mp4"];
        self.avPlayerVC = [[AVPlayerViewController alloc]init];
        self.avPlayerVC.view.frame=CGRectMake(0, 40, self.view.frame.size.width, 360);
        
        self.avPlayerVC.player = [[AVPlayer alloc]initWithURL:[NSURL fileURLWithPath:videoFilePath]];
        
    }
    else if (temp.tag==4)
    {
        [self.avPlayerVC.view removeFromSuperview];
        [self.avPlayerVC.player pause];
        self.displayImage.hidden=NO;
        self.buttonView.hidden=NO;
        self.displayImage.image=[UIImage imageNamed:@"Bahubali.jpeg"];
        self.nameLable.text=@"Prabhas";
        
        self.avPlayerVC = [[AVPlayerViewController alloc]init];
        self.avPlayerVC.view.frame=CGRectMake(0, 40, self.view.frame.size.width, 360);
        
        self.avPlayerVC.player = [[AVPlayer alloc]initWithURL:[NSURL URLWithString:@"http://www.brninfotech.com/media/video/01.mp4"]];
    }
}
- (IBAction)gopiChandButton:(id)sender
{
    [self buttonTag:sender];
}
- (IBAction)maheshButton:(id)sender
{
    
    [self buttonTag:sender];
}
- (IBAction)bahubaliButton:(id)sender
{
    [self buttonTag:sender];
}
- (IBAction)ranaButton:(id)sender
{
    [self buttonTag:sender];
}
- (IBAction)naniButton:(id)sender
{
    [self buttonTag:sender];
}
-(void)playButtonTag:(id)sender{
    UIButton * temp1 = sender;
    if(temp1.tag==0){
        [self.avPlayerVC.player play];
        [self.view addSubview:self.avPlayerVC.view];
        
    }else if(temp1.tag==1){
        [self.avPlayerVC.player play];
        [self presentViewController:self.avPlayerVC animated:YES completion:nil];
            }
}
-(IBAction)nextViewButton:(id)sender
{
    [self.avPlayerVC.view removeFromSuperview];
    self.displayImage.hidden=NO;
    [self playButtonTag:sender];
}
-(IBAction)playButton:(id)sender
{
    [self.avPlayerVC.view removeFromSuperview];
    self.displayImage.hidden=YES;
    [self playButtonTag:sender];
}
@end
