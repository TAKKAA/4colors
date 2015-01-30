//
//  GameViewController.m
//  4 colors
//
//  Created by 中山　貴仁 on 2015/01/23.
//  Copyright (c) 2015年 Nakayama Takahito. All rights reserved.
//

#import "GameViewController.h"

@interface GameViewController ()

@end

@implementation GameViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //カウントダウンタイマー
    Countdown_timer = [NSTimer scheduledTimerWithTimeInterval:1.0
                                                       target:self
                                                     selector:@selector(countdown)
                                                     userInfo:nil
                                                      repeats:YES];
    countdown = 4;
    [Countdown_timer fire];
    
    //色ランダム配列
    
    UIColor *red = [UIColor redColor];
    UIColor *blue = [UIColor blueColor];
    UIColor *green = [UIColor greenColor];
    UIColor *yellow = [UIColor yellowColor];
    
    colors = [NSArray arrayWithObjects:red,blue,green,yellow, nil];

    
}

//カウントダウン
-(void)countdown{
    
    countdown -= 1;
    
    count.text = [NSString stringWithFormat:@"%d",countdown];
    
    
    if(countdown == 0){
        
        count.text = [NSString stringWithFormat:@"Start!"];
        count.font = [UIFont fontWithName:@"Helvetica-Bold" size:80];
        
    }
    if(countdown == -1){
        
        count.hidden = YES;
        
        [Countdown_timer invalidate];
        
        //[self random];
        
        [self animation];
        
        //[self speedTimer];

    }
    
}

//アニメーション
-(void)animation{
    
    
    for (int i = 0; i < 3; i++) {
        
    number1[i] = arc4random() % 4;
        NSLog(@"%d",number1[i]);
    
    number2[i] = 6 + arc4random() % 4;
        
        //X座標の位置
    x[i] = 30 + arc4random() % 261 ;

    
    switch (number1[i]) {
        case 0:
            [self makeRed];
            redView.frame = CGRectMake(x[i], y, 35, 35);
            NSLog(@"X座標　%f",x[i]);
            NSLog(@"Y座標　%f",y);
            [UIView beginAnimations:nil context:nil];
            [UIView setAnimationDuration:number2[i]];
            redView.center = CGPointMake(x[i], 470.5);
            [UIView setAnimationCurve:UIViewAnimationCurveLinear];
            [UIView commitAnimations];
            break;
            
        case 1:
            [self makeBlue];
            blueView.frame = CGRectMake(x[i], y, 35, 35);
            NSLog(@"X座標　%f",x[i]);
            NSLog(@"Y座標　%f",y);
            [UIView beginAnimations:nil context:nil];
            [UIView setAnimationDuration:number2[i]];
            blueView.center = CGPointMake(x[i], 470.5);
            [UIView setAnimationCurve:UIViewAnimationCurveLinear];
            [UIView commitAnimations];
            break;

            
        case 2:
            [self makeGreen];
            greenView.frame = CGRectMake(x[i], y, 35, 35);
            NSLog(@"X座標　%f",x[i]);
            NSLog(@"Y座標　%f",y);
            [UIView beginAnimations:nil context:nil];
            [UIView setAnimationDuration:number2[i]];
            greenView.center = CGPointMake(x[i], 470.5);
            [UIView setAnimationCurve:UIViewAnimationCurveLinear];
            [UIView commitAnimations];
            break;

            
        case 3:
            [self makeYellow];
            yellowView.frame = CGRectMake(x[i], y, 35, 35);
            NSLog(@"X座標　%f",x[i]);
            NSLog(@"Y座標　%f",y);
            [UIView beginAnimations:nil context:nil];
            [UIView setAnimationDuration:number2[i]];
            yellowView.center = CGPointMake(x[i], 470.5);
            [UIView setAnimationCurve:UIViewAnimationCurveLinear];
            [UIView commitAnimations];
            break;

            
        default:
            break;
    }
    }
}


-(void)makeRed{
        
        redView = [[UIView alloc]init];
        
        redView.backgroundColor = [UIColor clearColor];
        
        [self.view addSubview:redView];
    
    //UIViewに表示する文字のラベル
    
    number3 = arc4random_uniform(4);
    
    UILabel *label = [[UILabel alloc]initWithFrame:CGRectZero];
    
    label.backgroundColor = [UIColor clearColor];
    
    label.font = [UIFont systemFontOfSize:30];
    
    label.text = @"赤";
    
    label.textColor = colors[number3];
    
    [label sizeToFit];
    
    [label.superview convertRect:label.frame toView:redView];
    
    [redView addSubview:label];
    
    }

    
-(void)makeBlue{
        
        blueView = [[UIView alloc]init];
        
        blueView.backgroundColor = [UIColor clearColor];
        
        [self.view addSubview:blueView];
    
    //UIViewに表示する文字のラベル
    
    number3 = arc4random_uniform(4);
    
    UILabel *label = [[UILabel alloc]initWithFrame:CGRectZero];
    
    label.backgroundColor = [UIColor clearColor];
    
    label.font = [UIFont systemFontOfSize:30];
    
    label.text = @"青";
    
    label.textColor = colors[number3];
    
    [label sizeToFit];
    
    [label.superview convertRect:label.frame toView:blueView];
    
    [blueView addSubview:label];
        
        
        
    }
    
-(void)makeGreen{
        
        greenView = [[UIView alloc]init];
        
        greenView.backgroundColor = [UIColor clearColor];
        
        [self.view addSubview:greenView];
    
    //UIViewに表示する文字のラベル
    
    number3 = arc4random_uniform(4);
    
    UILabel *label = [[UILabel alloc]initWithFrame:CGRectZero];
    
    label.backgroundColor = [UIColor clearColor];
    
    label.font = [UIFont systemFontOfSize:30];
    
    label.text = @"緑";
    
    label.textColor = colors[number3];
    
    [label sizeToFit];
    
    [label.superview convertRect:label.frame toView:greenView];
    
    [greenView addSubview:label];
        
        
        
    }
    
-(void)makeYellow{
        
        yellowView = [[UIView alloc]init];
        
        yellowView.backgroundColor = [UIColor clearColor];
        
        [self.view addSubview:yellowView];
    
    
    //UIViewに表示する文字のラベル
    
    number3 = arc4random_uniform(4);
    
    UILabel *label = [[UILabel alloc]initWithFrame:CGRectZero];
    
    label.backgroundColor = [UIColor clearColor];
    
    label.font = [UIFont systemFontOfSize:30];
    
    label.text = @"黄";
    
    label.textColor = colors[number3];
    
    [label sizeToFit];
    
    [label.superview convertRect:label.frame toView:yellowView];
    
    [yellowView addSubview:label];
    
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

@end
