//
//  MenuAndClose.swift
//  AwesomeAnimationsDemo
//
//  Created by 风筝 on 2017/7/15.
//  Copyright © 2017年 Doge Studio. All rights reserved.
//

import UIKit

class MenuAndClose: BaseView {

    override func createAnimation() {
        
        let areaWidth: CGFloat = self.frame.width
        let lineWidth: CGFloat = 2.0
        let duration = 1.0
        
        let layer = CAShapeLayer()
        layer.frame = CGRect(x: 0, y: 0, width: areaWidth, height: areaWidth)
        layer.fillColor = UIColor.clear.cgColor
        layer.strokeColor = UIColor.black.cgColor
        layer.lineWidth = lineWidth
        
        let menuPath = UIBezierPath()
        menuPath.move(to: CGPoint(x: 0, y: lineWidth / 2))
        menuPath.addLine(to: CGPoint(x: areaWidth, y: lineWidth / 2))
        menuPath.move(to: CGPoint(x: 0, y: areaWidth / 2))
        menuPath.addLine(to: CGPoint(x: areaWidth, y: areaWidth / 2))
        menuPath.move(to: CGPoint(x: 0, y: areaWidth - lineWidth / 2))
        menuPath.addLine(to: CGPoint(x: areaWidth, y: areaWidth - lineWidth / 2))
        
        let midPath = UIBezierPath()
        midPath.move(to: CGPoint(x: 0, y: areaWidth / 2))
        midPath.addLine(to: CGPoint(x: areaWidth, y: areaWidth / 2))
        midPath.move(to: CGPoint(x: 0, y: areaWidth / 2))
        midPath.addLine(to: CGPoint(x: areaWidth, y: areaWidth / 2))
        midPath.move(to: CGPoint(x: 0, y: areaWidth / 2))
        midPath.addLine(to: CGPoint(x: areaWidth, y: areaWidth / 2))
        
        let offsetToCenter = CGFloat(sin(Double.pi / 4)) * areaWidth / 2
        let center = areaWidth / 2
        let closePath = UIBezierPath()
        closePath.move(to: CGPoint(x: center - offsetToCenter, y: center - offsetToCenter))
        closePath.addLine(to: CGPoint(x: center + offsetToCenter, y: center + offsetToCenter))
        closePath.move(to: CGPoint(x: center - offsetToCenter, y: center - offsetToCenter))
        closePath.addLine(to: CGPoint(x: center + offsetToCenter, y: center + offsetToCenter))
        closePath.move(to: CGPoint(x: center + offsetToCenter, y: center - offsetToCenter))
        closePath.addLine(to: CGPoint(x: center - offsetToCenter, y: center + offsetToCenter))
        
        // The keyframe animation
        let keyframeAnimation = CAKeyframeAnimation(keyPath: "path")
        keyframeAnimation.values = [
            menuPath.cgPath,
            midPath.cgPath,
            closePath.cgPath,
            closePath.cgPath
        ]
//        keyframeAnimation.keyTimes = [0.15, 0.15, 0.7]
        keyframeAnimation.duration = duration
        keyframeAnimation.autoreverses = true
        keyframeAnimation.repeatCount = MAXFLOAT
        layer.add(keyframeAnimation, forKey: "path")
        
        self.layer.addSublayer(layer)
        
    }

}
