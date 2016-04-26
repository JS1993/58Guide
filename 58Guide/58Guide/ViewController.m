//
//  ViewController.m
//  58Guide
//
//  Created by  江苏 on 16/4/26.
//  Copyright © 2016年 jiangsu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UIScrollViewDelegate>
@property (strong, nonatomic) IBOutlet UIImageView *sunImageView;
@property (strong, nonatomic) IBOutlet UIImageView *boyImageView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIImage* bgImage=[UIImage imageNamed:@"520_userguid_bg"];
    
    UIScrollView* scrollView=[[UIScrollView alloc]initWithFrame:self.view.bounds];
    
    scrollView.contentSize=bgImage.size;
    
    scrollView.alwaysBounceHorizontal=YES;
    
    scrollView.showsHorizontalScrollIndicator=NO;
    
    scrollView.decelerationRate=0.4;
    
    scrollView.delegate=self;
    
    UIImageView* imageView=[[UIImageView alloc]initWithFrame:CGRectMake(0, 0, bgImage.size.width, self.view.bounds.size.height)];
    
    imageView.image=bgImage;
    
    [scrollView addSubview:imageView];
    
    [self.view insertSubview:scrollView atIndex:0];
}

- (void)scrollViewWillBeginDragging:(UIScrollView *)scrollView{
    
    CGFloat offsetX=scrollView.contentOffset.x*2;
    
    int intOffsetX=(int)offsetX;
    
    self.boyImageView.image=[UIImage imageNamed:[NSString stringWithFormat:@"520_userguid_person_taitou_%d",intOffsetX%2+1]];
    self.sunImageView.transform=CGAffineTransformRotate(self.sunImageView.transform,M_PI/180.0*5.0);
    
}

@end
