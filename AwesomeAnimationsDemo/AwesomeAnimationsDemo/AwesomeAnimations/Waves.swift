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
        let waveLength1 = areaWidth / 10 * 7
        let waveLength2 = areaWidth / 10 * 9
        let waveLength3 = areaWidth / 10 * 11
        let waveHeight1 = areaHeight / 3
        let waveHeight2 = areaHeight / 2
        let waveHeight3 = areaHeight / 3 * 2
        let waveColor1 = UIColor.black.withAlphaComponent(0.2)
        let waveColor2 = UIColor.black.withAlphaComponent(0.3)
        let waveColor3 = UIColor.black.withAlphaComponent(0.6)
        let duration1 = 8.0
        let duration2 = 5.0
        let duration3 = 3.0
        
        self.layer.masksToBounds = true
        
        /// 仅做个Demo演示，因此是复制粘贴出的三层，如有需要请自行封装
        
        // 第一层波浪（最底层）
        let wave1Layer = CAShapeLayer()
        wave1Layer.frame = CGRect(x: 0, y: 0, width: areaWidth, height: areaHeight)
        wave1Layer.fillColor = waveColor1.cgColor
        self.layer.addSublayer(wave1Layer)
        
        let path1 = UIBezierPath()
        path1.move(to: CGPoint(x: 0, y: areaHeight / 2))
        path1.addCurve(to: CGPoint(x: waveLength1, y: areaHeight / 2),
                       controlPoint1: CGPoint(x: waveLength1 / 2, y: areaHeight / 2 + waveHeight1),
                       controlPoint2: CGPoint(x: waveLength1 / 2, y: areaHeight / 2 - waveHeight1))
        path1.addCurve(to: CGPoint(x: waveLength1 * 2, y: areaHeight / 2),
                       controlPoint1: CGPoint(x: waveLength1 / 2 * 3, y: areaHeight / 2 + waveHeight1),
                       controlPoint2: CGPoint(x: waveLength1 / 2 * 3, y: areaHeight / 2 - waveHeight1))
        path1.addCurve(to: CGPoint(x: waveLength1 * 3, y: areaHeight / 2),
                       controlPoint1: CGPoint(x: waveLength1 / 2 * 5, y: areaHeight / 2 + waveHeight1),
                       controlPoint2: CGPoint(x: waveLength1 / 2 * 5, y: areaHeight / 2 - waveHeight1))
        path1.addLine(to: CGPoint(x: waveLength1 * 3, y: areaHeight))
        path1.addLine(to: CGPoint(x: 0, y: areaHeight))
        path1.close()
        wave1Layer.path = path1.cgPath
        
        let animation1 = CABasicAnimation(keyPath: "bounds.origin.x")
        animation1.fromValue = 0
        animation1.toValue = waveLength1
        animation1.duration = duration1
        animation1.repeatCount = MAXFLOAT
        wave1Layer.add(animation1, forKey: "bounds.origin.x")
        
        // 第二层波浪（中间那层）
        let wave2Layer = CAShapeLayer()
        wave2Layer.frame = CGRect(x: 0, y: 0, width: areaWidth, height: areaHeight)
        wave2Layer.fillColor = waveColor2.cgColor
        self.layer.addSublayer(wave2Layer)
        
        let path2 = UIBezierPath()
        path2.move(to: CGPoint(x: 0, y: areaHeight / 2))
        path2.addCurve(to: CGPoint(x: waveLength2, y: areaHeight / 2),
                       controlPoint1: CGPoint(x: waveLength2 / 2, y: areaHeight / 2 + waveHeight2),
                       controlPoint2: CGPoint(x: waveLength2 / 2, y: areaHeight / 2 - waveHeight2))
        path2.addCurve(to: CGPoint(x: waveLength2 * 2, y: areaHeight / 2),
                       controlPoint1: CGPoint(x: waveLength2 / 2 * 3, y: areaHeight / 2 + waveHeight2),
                       controlPoint2: CGPoint(x: waveLength2 / 2 * 3, y: areaHeight / 2 - waveHeight2))
        path2.addCurve(to: CGPoint(x: waveLength2 * 3, y: areaHeight / 2),
                       controlPoint1: CGPoint(x: waveLength2 / 2 * 5, y: areaHeight / 2 + waveHeight2),
                       controlPoint2: CGPoint(x: waveLength2 / 2 * 5, y: areaHeight / 2 - waveHeight2))
        path2.addLine(to: CGPoint(x: waveLength2 * 3, y: areaHeight))
        path2.addLine(to: CGPoint(x: 0, y: areaHeight))
        path2.close()
        wave2Layer.path = path2.cgPath
        
        let animation2 = CABasicAnimation(keyPath: "bounds.origin.x")
        animation2.fromValue = 0
        animation2.toValue = waveLength2
        animation2.duration = duration2
        animation2.repeatCount = MAXFLOAT
        wave2Layer.add(animation2, forKey: "bounds.origin.x")
        
        // 第三层波浪（最上层）
        let wave3Layer = CAShapeLayer()
        wave3Layer.frame = CGRect(x: 0, y: 0, width: areaWidth, height: areaHeight)
        wave3Layer.fillColor = waveColor3.cgColor
        self.layer.addSublayer(wave3Layer)
        
        let path3 = UIBezierPath()
        path3.move(to: CGPoint(x: 0, y: areaHeight / 2))
        path3.addCurve(to: CGPoint(x: waveLength3, y: areaHeight / 2),
                       controlPoint1: CGPoint(x: waveLength3 / 2, y: areaHeight / 2 + waveHeight3),
                       controlPoint2: CGPoint(x: waveLength3 / 2, y: areaHeight / 2 - waveHeight3))
        path3.addCurve(to: CGPoint(x: waveLength3 * 2, y: areaHeight / 2),
                       controlPoint1: CGPoint(x: waveLength3 / 2 * 3, y: areaHeight / 2 + waveHeight3),
                       controlPoint2: CGPoint(x: waveLength3 / 2 * 3, y: areaHeight / 2 - waveHeight3))
        path3.addCurve(to: CGPoint(x: waveLength3 * 3, y: areaHeight / 2),
                       controlPoint1: CGPoint(x: waveLength3 / 2 * 5, y: areaHeight / 2 + waveHeight3),
                       controlPoint2: CGPoint(x: waveLength3 / 2 * 5, y: areaHeight / 2 - waveHeight3))
        path3.addLine(to: CGPoint(x: waveLength3 * 3, y: areaHeight))
        path3.addLine(to: CGPoint(x: 0, y: areaHeight))
        path3.close()
        wave3Layer.path = path3.cgPath
        
        let animation3 = CABasicAnimation(keyPath: "bounds.origin.x")
        animation3.fromValue = 0
        animation3.toValue = waveLength3
        animation3.duration = duration3
        animation3.repeatCount = MAXFLOAT
        wave3Layer.add(animation3, forKey: "bounds.origin.x")
    }

}
