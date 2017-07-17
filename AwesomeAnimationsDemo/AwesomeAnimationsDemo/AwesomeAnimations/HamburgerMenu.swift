//
//  HamburgerMenu.swift
//  AwesomeAnimationsDemo
//
//  Created by 风筝 on 2017/7/15.
//  Copyright © 2017年 Doge Studio. All rights reserved.
//

import UIKit

class HamburgerMenu: BaseView {

    override func createAnimation() {
        
        let areaWidth: CGFloat = self.frame.width
        let lineWidth: CGFloat = 2.0
        let interval: CGFloat = lineWidth * 2
        let duration = 1.5
        let strokeColor = UIColor.black
        
        let layer = CAShapeLayer()
        layer.frame = CGRect(x: 0, y: 0, width: areaWidth, height: areaWidth)
        self.layer.addSublayer(layer)
        
        let line1Layer = CAShapeLayer()
        line1Layer.frame = layer.frame
        line1Layer.strokeColor = strokeColor.cgColor
        line1Layer.lineWidth = lineWidth
        layer.addSublayer(line1Layer)
        
        var path = UIBezierPath()
        path.move(to: CGPoint(x: 0, y: areaWidth / 2 - lineWidth - interval))
        path.addLine(to: CGPoint(x: areaWidth, y: areaWidth / 2 - lineWidth - interval))
        line1Layer.path = path.cgPath
        
        let line2Layer = CAShapeLayer()
        line2Layer.frame = layer.frame
        line2Layer.strokeColor = strokeColor.cgColor
        line2Layer.lineWidth = lineWidth
        layer.addSublayer(line2Layer)
        
        path = UIBezierPath()
        path.move(to: CGPoint(x: 0, y: areaWidth / 2))
        path.addLine(to: CGPoint(x: areaWidth, y: areaWidth / 2))
        line2Layer.path = path.cgPath
        
        let line3Layer = CAShapeLayer()
        line3Layer.frame = layer.frame
        line3Layer.strokeColor = strokeColor.cgColor
        line3Layer.lineWidth = lineWidth
        layer.addSublayer(line3Layer)
        
        path = UIBezierPath()
        path.move(to: CGPoint(x: 0, y: areaWidth / 2 + lineWidth + interval))
        path.addLine(to: CGPoint(x: areaWidth, y: areaWidth / 2 + lineWidth + interval))
        line3Layer.path = path.cgPath

        let layerRotationAnimation = CAKeyframeAnimation(keyPath: "transform.rotation.z")
        layerRotationAnimation.values = [
            0,
            Double.pi,
            Double.pi,
            Double.pi * 2,
            Double.pi * 2
        ]
        layerRotationAnimation.duration = duration
        layerRotationAnimation.repeatCount = MAXFLOAT
        layer.add(layerRotationAnimation, forKey: "transform.rotation.z")

        let line1StrokeAnimation: CAKeyframeAnimation = CAKeyframeAnimation.init(keyPath: "strokeStart")
        line1StrokeAnimation.values = [
            0,
            0.5,
            0.5,
            0,
            0
        ]
//        line1StrokeAnimation.keyTimes = [
//            NSNumber(value: 0.5),
//            NSNumber(value: 1),
//            NSNumber(value: 0.5),
//            NSNumber(value: 1),
//            NSNumber(value: 0.5)
//        ]
        line1StrokeAnimation.duration = duration
        line1StrokeAnimation.repeatCount = MAXFLOAT
        line1Layer.add(line1StrokeAnimation, forKey: "strokeStart")

        let line1RotationAnimation = CAKeyframeAnimation(keyPath: "transform.rotation.z")
        line1RotationAnimation.values = [
            0,
            Double.pi / 4,
            Double.pi / 4,
            0,
            0
        ]
//        line1RotationAnimation.keyTimes = [
//            NSNumber(value: 0.5),
//            NSNumber(value: 1),
//            NSNumber(value: 0.5),
//            NSNumber(value: 1),
//            NSNumber(value: 0.5)
//        ]
        line1RotationAnimation.duration = duration
        line1RotationAnimation.repeatCount = MAXFLOAT
        line1Layer.add(line1RotationAnimation, forKey: "transform.rotation.z")
        
        let line1PositionAnimation = CAKeyframeAnimation(keyPath: "position")
        line1PositionAnimation.values = [
            CGPoint(x: areaWidth / 2, y: areaWidth / 2),
            CGPoint(x: areaWidth / 2, y: areaWidth / 2 - areaWidth / 8),
            CGPoint(x: areaWidth / 2, y: areaWidth / 2 - areaWidth / 8),
            CGPoint(x: areaWidth / 2, y: areaWidth / 2),
            CGPoint(x: areaWidth / 2, y: areaWidth / 2)
        ]
        line1PositionAnimation.duration = duration
        line1PositionAnimation.repeatCount = MAXFLOAT
        line1Layer.add(line1PositionAnimation, forKey: "position")
        
        let line3StrokeAnimation = CAKeyframeAnimation(keyPath: "strokeStart")
        line3StrokeAnimation.values = [
            0,
            0.5,
            0.5,
            0,
            0
        ]
//        line3StrokeAnimation.keyTimes = [
//            NSNumber(value: 0.5),
//            NSNumber(value: 1),
//            NSNumber(value: 0.5),
//            NSNumber(value: 1),
//            NSNumber(value: 0.5)
//        ]
        line3StrokeAnimation.duration = duration
        line3StrokeAnimation.repeatCount = MAXFLOAT
        line3Layer.add(line3StrokeAnimation, forKey: "strokeStart")
        
        let line3RotationAnimation = CAKeyframeAnimation(keyPath: "transform.rotation.z")
        line3RotationAnimation.values = [
            0,
            -Double.pi / 4,
            -Double.pi / 4,
            0,
            0
        ]
//        line3RotationAnimation.keyTimes = [
//            NSNumber(value: 0.5),
//            NSNumber(value: 1),
//            NSNumber(value: 0.5),
//            NSNumber(value: 1),
//            NSNumber(value: 0.5)
//        ]
        line3RotationAnimation.duration = duration
        line3RotationAnimation.repeatCount = MAXFLOAT
        line3Layer.add(line3RotationAnimation, forKey: "transform.rotation.z")
        
        let line3PositionAnimation = CAKeyframeAnimation(keyPath: "position")
        line3PositionAnimation.values = [
            CGPoint(x: areaWidth / 2, y: areaWidth / 2),
            CGPoint(x: areaWidth / 2, y: areaWidth / 2 + areaWidth / 8),
            CGPoint(x: areaWidth / 2, y: areaWidth / 2 + areaWidth / 8),
            CGPoint(x: areaWidth / 2, y: areaWidth / 2),
            CGPoint(x: areaWidth / 2, y: areaWidth / 2)
        ]
        line3PositionAnimation.duration = duration
        line3PositionAnimation.repeatCount = MAXFLOAT
        line3Layer.add(line3PositionAnimation, forKey: "position")
        
    }

}
