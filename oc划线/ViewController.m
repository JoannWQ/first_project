//
//  ViewController.m
//  oc划线
//
//  Created by 杨鑫 on 2016/12/9.
//  Copyright © 2016年 Mr Yang. All rights reserved.
//

#import "ViewController.h"

@interface ViewController (){
    UIImageView *imgView;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    demoView *view = [[demoView alloc]initWithFrame:CGRectMake(10, 100, 350, 400)];
//    
//    view.backgroundColor = [UIColor yellowColor];
//    [self.view addSubview:view];
    
    self.view.backgroundColor = [UIColor whiteColor];
    imgView = [[UIImageView alloc]initWithFrame:CGRectMake(20, 100, 0, 80)];
    imgView.image = [UIImage imageNamed:@"11"];
    imgView.contentMode = UIViewContentModeLeft;
    imgView.clipsToBounds = YES;
    [self.view addSubview:imgView];
    
    UIButton *btn = [[UIButton alloc]initWithFrame:CGRectMake(50, 300, 60, 60)];
    btn.backgroundColor = [UIColor blueColor];
    [btn addTarget:self action:@selector(click) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    
    
}

- (void)click{
    [UIImageView animateWithDuration:2 animations:^{
        imgView.frame = CGRectMake(20, 100, 300, 80);
    } ];
    

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];

}


@end

@implementation demoView

- (void)drawRect:(CGRect)rect{
    
    
    
//    CGContextRef context = UIGraphicsGetCurrentContext();
//    CGContextSetLineCap(context, kCGLineCapRound);
//    CGContextSetLineWidth(context, 3);  //线宽
//    CGContextSetAllowsAntialiasing(context, true);
//    CGContextSetRGBStrokeColor(context, 70.0 / 255.0, 241.0 / 255.0, 241.0 / 255.0, 1.0);  //线的颜色
//    CGContextBeginPath(context);
//    
//    CGContextMoveToPoint(context, 0, 20);  //起点坐标
//    
//    CGContextAddQuadCurveToPoint(context,30, 30, 120, 10);//设置贝塞尔曲线的控制点坐标和终点坐标
//    
//    CGContextStrokePath(context);
    
//    CGContextRef context = UIGraphicsGetCurrentContext();
//    CGContextSetLineCap(context, kCGLineCapRound);
//    CGContextSetLineWidth(context, 3);  //线宽
//    CGContextSetAllowsAntialiasing(context, false);
//    CGContextSetRGBStrokeColor(context, 70.0 / 255.0, 241.0 / 255.0, 241.0 / 255.0, 1.0);  //线的颜色
//    CGContextBeginPath(context);
//    
//    CGContextMoveToPoint(context, 0, 20);  //起点坐标
//    
//    CGContextAddLineToPoint(context, 10, 90);
//    CGContextAddLineToPoint(context, 20, 100);
//    
//    CGContextStrokePath(context);
    
    
    
    UIBezierPath *bezierPath = [UIBezierPath bezierPath];
    bezierPath.lineWidth = 6;
    bezierPath.lineCapStyle = kCGLineCapSquare;
    bezierPath.lineJoinStyle = kCGLineJoinMiter;
    [[UIColor blueColor] setStroke];
    [bezierPath moveToPoint:CGPointMake(50, 50)];
    [bezierPath addLineToPoint:CGPointMake(300, 50)];
    [bezierPath stroke];
    
    UIBezierPath *bezierPath1 = [UIBezierPath bezierPathWithOvalInRect:CGRectMake(305, 45, 10, 10)];
    [[UIColor blueColor] setFill];
    [[UIColor blueColor] setStroke];
    bezierPath1.lineWidth = 10;
    [bezierPath1 stroke];
    
    UIBezierPath *bezierPath2 = [UIBezierPath bezierPath];
    bezierPath2.lineWidth = 2;
    bezierPath2.lineCapStyle = kCGLineCapSquare;
    bezierPath2.lineJoinStyle = kCGLineJoinMiter;
    [[UIColor whiteColor] setStroke];
    [bezierPath2 moveToPoint:CGPointMake(306, 48)];
    [bezierPath2 addLineToPoint:CGPointMake(309, 52)];
    [bezierPath2 addLineToPoint:CGPointMake(315, 47)];
    [bezierPath2 stroke];
    
    
    
//    // 1.贝塞尔曲线
//    // 创建一个BezierPath对象
//    UIBezierPath *bezierPath = [UIBezierPath bezierPath];
//    // 设置线宽
//    bezierPath.lineWidth = 8;
//    // 终点处理：设置结束点曲线
//    bezierPath.lineCapStyle = kCGLineCapRound;
//    // 拐角处理：设置两个连接点曲线
//    bezierPath.lineJoinStyle = kCGLineJoinRound;
//    // 设置线的颜色
//    [[UIColor redColor] setStroke];
//    // 设置填充颜色
//    [[UIColor greenColor] setFill];
//    
//    // 设置线段的起始位置
//    [bezierPath moveToPoint:CGPointMake(100, 100)];
//    // 添加点
//    [bezierPath addLineToPoint:CGPointMake(100, 300)];
//    [bezierPath addLineToPoint:CGPointMake(300, 300)];
//    // 闭合曲线：让起始点和结束点连接起来
//    [bezierPath closePath];
//    // 描绘
//    [bezierPath stroke];
//    // 填充
//    [bezierPath fill];
    
    
    
//        // 2.二阶贝塞尔曲线(抛物线)
//        // 创建bezierPath对象
//        UIBezierPath *bezierPath = [UIBezierPath bezierPath];
//        bezierPath.lineWidth = 8;// 线宽
//        [[UIColor redColor] setStroke];// 线条颜色
//        // 设置起始位置
//        [bezierPath moveToPoint:CGPointMake(80, 300)];
//        [bezierPath addQuadCurveToPoint:CGPointMake(260, 200) controlPoint:CGPointMake(160, 80)];
//        [bezierPath stroke];
    //
    //
//        // 3.三阶贝塞尔曲线
//        UIBezierPath *bezierPath = [UIBezierPath bezierPath];
//        bezierPath.lineWidth = 9;
//        [[UIColor redColor] setStroke];
//    
//        [bezierPath moveToPoint:CGPointMake(20, 300)];
//        [bezierPath addCurveToPoint:CGPointMake(280, 160) controlPoint1:CGPointMake(120, 200) controlPoint2:CGPointMake(190, 350)];
//        [bezierPath stroke];
    //
    //
//        // 4.在给定区域中画图
//        // 矩形
//        UIBezierPath *bezierPath1 = [UIBezierPath bezierPathWithRect:CGRectMake(50, 50, 200, 100)];
//        bezierPath1.lineWidth = 8;
//        [[UIColor redColor] setStroke];
//        [[UIColor yellowColor] setFill];
//        [bezierPath1 stroke];
//        [bezierPath1 fill];
//    
//        // 圆
//        // rect如果传入的是正方形，则画出一个内切圆，如果是长方形，则画出一个内切椭圆
//        UIBezierPath *bezierPath = [UIBezierPath bezierPathWithOvalInRect:CGRectMake(50, 50, 200, 100)];
//        bezierPath.lineWidth = 8;
//        [[UIColor blackColor] setStroke];
//        [bezierPath stroke];
    
//        // 5.画圆弧
//        /*
//         参数说明：
//         ArcCenter：圆弧中心
//         radius：半径
//         startAngle：起始弧度
//         endAngle：结束弧度
//         clockwise：是否顺时针
//         */
//        UIBezierPath *bezierPath = [UIBezierPath bezierPathWithArcCenter:CGPointMake(160, 200) radius:100 startAngle:M_PI_2 endAngle:M_PI clockwise:YES];
//        bezierPath.lineWidth = 9;
//        [[UIColor redColor] setStroke];
//        [bezierPath stroke];

    
    
}


@end
