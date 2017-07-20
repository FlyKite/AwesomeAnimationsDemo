//
//  Waves.swift
//  AwesomeAnimationsDemo
//
//  Created by 风筝 on 2017/7/18.
//  Copyright © 2017年 Doge Studio. All rights reserved.
//

import UIKit

class Waves: BaseView {

    override func createAnimation() {
        
        let areaWidth: CGFloat = self.frame.width
        let areaHeight: CGFloat = self.frame.height
        
        let waveLengths: [CGFloat] = [areaWidth / 10 * 7, areaWidth / 10 * 9, areaWidth / 10 * 11]
        let waveHeights: [CGFloat] = [areaHeight / 3, areaHeight / 2, areaHeight / 3 * 2]
        let waveColors: [UIColor] = [UIColor.init(white: 0, alpha: 0.2), UIColor.init(white: 0, alpha: 0.3), UIColor.init(white: 0, alpha: 0.6)]
        let durations: [Double] = [8.0, 5.0, 3.0]
        
        self.layer.masksToBounds = true
        
        for index in 0 ..< waveLengths.count {
            let waveLength = waveLengths[index]
            let waveHeight = waveHeights[index]
            let waveColor = waveColors[index]
            let duration = durations[index]
            
            let waveLayer = self.createWaveLayer(self.bounds, waveLength: waveLength, waveHeight: waveHeight, waveColor: waveColor, animationDuration: duration)
            self.layer.addSublayer(waveLayer)
        }
    }
    
    func createWaveLayer(_ frame: CGRect, waveLength: CGFloat, waveHeight: CGFloat, waveColor: UIColor, animationDuration: Double) -> CAShapeLayer {
        let areaWidth = frame.width
        let areaHeight = frame.height
        let waveLayer = CAShapeLayer()
        waveLayer.frame = CGRect(x: 0, y: 0, width: areaWidth, height: areaHeight)
        waveLayer.fillColor = waveColor.cgColor
        
        let path1 = UIBezierPath()
        path1.move(to: CGPoint(x: 0, y: areaHeight / 2))
        path1.addCurve(to: CGPoint(x: waveLength, y: areaHeight / 2),
                       controlPoint1: CGPoint(x: waveLength / 2, y: areaHeight / 2 + waveHeight),
                       controlPoint2: CGPoint(x: waveLength / 2, y: areaHeight / 2 - waveHeight))
        path1.addCurve(to: CGPoint(x: waveLength * 2, y: areaHeight / 2),
                       controlPoint1: CGPoint(x: waveLength / 2 * 3, y: areaHeight / 2 + waveHeight),
                       controlPoint2: CGPoint(x: waveLength / 2 * 3, y: areaHeight / 2 - waveHeight))
        path1.addCurve(to: CGPoint(x: waveLength * 3, y: areaHeight / 2),
                       controlPoint1: CGPoint(x: waveLength / 2 * 5, y: areaHeight / 2 + waveHeight),
                       controlPoint2: CGPoint(x: waveLength / 2 * 5, y: areaHeight / 2 - waveHeight))
        path1.addLine(to: CGPoint(x: waveLength * 3, y: areaHeight))
        path1.addLine(to: CGPoint(x: 0, y: areaHeight))
        path1.close()
        waveLayer.path = path1.cgPath
        
        let animation = CABasicAnimation(keyPath: "bounds.origin.x")
        animation.fromValue = 0
        animation.toValue = waveLength
        animation.duration = animationDuration
        animation.repeatCount = MAXFLOAT
        waveLayer.add(animation, forKey: "bounds.origin.x")
        return waveLayer
    }

}
