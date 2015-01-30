//
//  GameViewController.h
//  4 colors
//
//  Created by 中山　貴仁 on 2015/01/23.
//  Copyright (c) 2015年 Nakayama Takahito. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GameViewController : UIViewController<UIGestureRecognizerDelegate>{
    
    //アニメーションのタイマー
    float time;
    NSTimer *timer;
    
    
    //カウントダウンタイマー
    int countdown;
    NSTimer *Countdown_timer;
    //カウントダウンラベル
    IBOutlet UILabel *count;
    
    //位置
    float x[3];
    float y;
    
    //スピード
    float speed;
    
    
    NSArray *colors;
    
    //ランダムな数を管理する変数
    int number1[3];
    int number2[3];
    
    //color配列のランダム値
    int number3;
    
    UIView *redView;
    UIView *blueView;
    UIView *greenView;
    UIView *yellowView;
    
    
    
}

-(void)panAction1:(UIPanGestureRecognizer *)sender;
-(void)panAction2:(UIPanGestureRecognizer *)sender;
-(void)panAction3:(UIPanGestureRecognizer *)sender;
-(void)panAction4:(UIPanGestureRecognizer *)sender;
-(void)makeRed;
-(void)makeBlue;
-(void)makeGreen;
-(void)makeYellow;
-(void)animation;






@end
