//
//  PlayAndPause.swift
//  AwesomeAnimationsDemo
//
//  Created by 风筝 on 2017/7/14.
//  Copyright © 2017年 Doge Studio. All rights reserved.
//

import UIKit

class PlayAndPause: BaseView {

    override func createAnimation() {
        
        let areaWidth: CGFloat = self.frame.width
        let duration = 0.4 * 6
        
        let layer = CAShapeLayer()
        layer.frame = CGRect(x: 0, y: 0, width: areaWidth, height: areaWidth)
        layer.fillColor = UIColor.black.cgColor
        
        let playPath = UIBezierPath()
        playPath.move(to: CGPoint.zero)
        playPath.addLine(to: CGPoint(x: areaWidth / 2, y: areaWidth / 4))
        playPath.addLine(to: CGPoint(x: areaWidth / 2, y: areaWidth / 4 * 3))
        playPath.addLine(to: CGPoint(x: 0, y: areaWidth))
        playPath.addLine(to: CGPoint.zero)
        
        playPath.move(to: CGPoint(x: areaWidth / 2, y: areaWidth / 4))
        playPath.addLine(to: CGPoint(x: areaWidth, y: areaWidth / 2))
        playPath.addLine(to: CGPoint(x: areaWidth, y: areaWidth / 2))
        playPath.addLine(to: CGPoint(x: areaWidth / 2, y: areaWidth / 4 * 3))
        playPath.addLine(to: CGPoint(x: areaWidth / 2, y: areaWidth / 4))
        
        let pausePath = UIBezierPath()
        pausePath.move(to: CGPoint.zero)
        pausePath.addLine(to: CGPoint(x: areaWidth / 3, y: 0))
        pausePath.addLine(to: CGPoint(x: areaWidth / 3, y: areaWidth))
        pausePath.addLine(to: CGPoint(x: 0, y: areaWidth))
        pausePath.addLine(to: CGPoint.zero)
        
        pausePath.move(to: CGPoint(x: areaWidth / 3 * 2, y: 0))
        pausePath.addLine(to: CGPoint(x: areaWidth, y: 0))
        pausePath.addLine(to: CGPoint(x: areaWidth, y: areaWidth))
        pausePath.addLine(to: CGPoint(x: areaWidth / 3 * 2, y: areaWidth))
        pausePath.addLine(to: CGPoint(x: areaWidth / 3 * 2, y: 0))
        
        let stopPath = UIBezierPath()
        stopPath.move(to: CGPoint.zero)
        stopPath.addLine(to: CGPoint(x: areaWidth / 2, y: 0))
        stopPath.addLine(to: CGPoint(x: areaWidth / 2, y: areaWidth))
        stopPath.addLine(to: CGPoint(x: 0, y: areaWidth))
        stopPath.addLine(to: CGPoint.zero)
        
        stopPath.move(to: CGPoint(x: areaWidth / 2, y: 0))
        stopPath.addLine(to: CGPoint(x: areaWidth, y: 0))
        stopPath.addLine(to: CGPoint(x: areaWidth, y: areaWidth))
        stopPath.addLine(to: CGPoint(x: areaWidth / 2, y: areaWidth))
        stopPath.addLine(to: CGPoint(x: areaWidth / 2, y: 0))
        
        // The keyframe animation
        let keyframeAnimation = CAKeyframeAnimation(keyPath: "path")
        keyframeAnimation.values = [
            playPath.cgPath,
            playPath.cgPath,
            pausePath.cgPath,
            pausePath.cgPath,
            stopPath.cgPath,
            stopPath.cgPath,
            playPath.cgPath,
            playPath.cgPath
        ]
        keyframeAnimation.duration = duration
        keyframeAnimation.autoreverses = true
        keyframeAnimation.repeatCount = MAXFLOAT
        layer.add(keyframeAnimation, forKey: "path")
        
        self.layer.addSublayer(layer)
    }

}
