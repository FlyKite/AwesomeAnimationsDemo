//
//  UnlimitedTriangle.swift
//  AwesomeAnimationsDemo
//
//  Created by 风筝 on 2017/7/14.
//  Copyright © 2017年 Doge Studio. All rights reserved.
//

import UIKit

class UnlimitedTriangle: BaseView {
    
    override func createAnimation() {
        
        let areaWidth: CGFloat = self.frame.width
        let sqrt3: CGFloat = 1.73205
        let triangleHeight = areaWidth / 2 / (3 + 1 / 6)
        let triangleLength = triangleHeight / sqrt3 * 2
        // Offset of half height to center
        let yOffset = triangleHeight - triangleHeight * 2 / 3 * 2
        let duration = 3.0
        
        let layer = CAShapeLayer()
        layer.frame = CGRect(x: 0, y: 0, width: areaWidth, height: areaWidth)
        layer.fillColor = UIColor.black.cgColor
        
        let fromPath = UIBezierPath()
        // The top triangle
        fromPath.move(to: CGPoint(x: areaWidth / 2, y: areaWidth / 2 - triangleHeight + yOffset))
        fromPath.addLine(to: CGPoint(x: areaWidth / 2 - triangleLength / 2, y: areaWidth / 2 + yOffset))
        fromPath.addLine(to: CGPoint(x: areaWidth / 2 + triangleLength / 2, y: areaWidth / 2 + yOffset))
        fromPath.addLine(to: CGPoint(x: areaWidth / 2, y: areaWidth / 2 - triangleHeight + yOffset))
        
        // The center triangle
        fromPath.move(to: CGPoint(x: areaWidth / 2 - triangleLength / 2, y: areaWidth / 2 + yOffset))
        fromPath.addLine(to: CGPoint(x: areaWidth / 2, y: areaWidth / 2 + triangleHeight + yOffset))
        fromPath.addLine(to: CGPoint(x: areaWidth / 2 + triangleLength / 2, y: areaWidth / 2 + yOffset))
        fromPath.addLine(to: CGPoint(x: areaWidth / 2 - triangleLength / 2, y: areaWidth / 2 + yOffset))
        
        // The left triangle
        fromPath.move(to: CGPoint(x: areaWidth / 2 - triangleLength / 2, y: areaWidth / 2 + yOffset))
        fromPath.addLine(to: CGPoint(x: areaWidth / 2 - triangleLength, y: areaWidth / 2 + triangleHeight + yOffset))
        fromPath.addLine(to: CGPoint(x: areaWidth / 2, y: areaWidth / 2 + triangleHeight + yOffset))
        fromPath.addLine(to: CGPoint(x: areaWidth / 2 - triangleLength / 2, y: areaWidth / 2 + yOffset))
        
        // The right triangle
        fromPath.move(to: CGPoint(x: areaWidth / 2 + triangleLength / 2, y: areaWidth / 2 + yOffset))
        fromPath.addLine(to: CGPoint(x: areaWidth / 2, y: areaWidth / 2 + triangleHeight + yOffset))
        fromPath.addLine(to: CGPoint(x: areaWidth / 2 + triangleLength, y: areaWidth / 2 + triangleHeight + yOffset))
        fromPath.addLine(to: CGPoint(x: areaWidth / 2 + triangleLength / 2, y: areaWidth / 2 + yOffset))
        
        // Set the path to layer
        layer.path = fromPath.cgPath
        
        let toPath = UIBezierPath()
        // The top triangle will be animated to dismiss
        let topPoint = CGPoint(x: areaWidth / 2, y: areaWidth / 2 - 3 * triangleHeight - yOffset)
        toPath.move(to: topPoint)
        toPath.addLine(to: topPoint)
        toPath.addLine(to: topPoint)
        toPath.addLine(to: topPoint)
        
        // The center animation will be animated to
        toPath.move(to: CGPoint(x: areaWidth / 2 - triangleLength, y: areaWidth / 2 - triangleHeight - yOffset))
        toPath.addLine(to: CGPoint(x: areaWidth / 2, y: areaWidth / 2 + triangleHeight - yOffset))
        toPath.addLine(to: CGPoint(x: areaWidth / 2 + triangleLength, y: areaWidth / 2 - triangleHeight - yOffset))
        toPath.addLine(to: CGPoint(x: areaWidth / 2 - triangleLength, y: areaWidth / 2 - triangleHeight - yOffset))
        
        // The left triangle will be animated to dismiss
        let leftPoint = CGPoint(x: areaWidth / 2 - triangleLength * 2, y: areaWidth / 2 + triangleHeight - yOffset)
        toPath.move(to: leftPoint)
        toPath.addLine(to: leftPoint)
        toPath.addLine(to: leftPoint)
        toPath.addLine(to: leftPoint)
        
        // The right triangle will be animated to dismiss
        let rightPoint = CGPoint(x: areaWidth / 2 + triangleLength * 2, y: areaWidth / 2 + triangleHeight - yOffset)
        toPath.move(to: rightPoint)
        toPath.addLine(to: rightPoint)
        toPath.addLine(to: rightPoint)
        toPath.addLine(to: rightPoint)
        
        // The path animation
        let pathAnimation = CABasicAnimation(keyPath: "path")
        pathAnimation.fromValue = fromPath.cgPath
        pathAnimation.toValue = toPath.cgPath
        pathAnimation.duration = duration
        pathAnimation.repeatCount = MAXFLOAT
        layer.add(pathAnimation, forKey: "path")
        
        // The rotation animation
        let rotationAnimation = CABasicAnimation(keyPath: "transform.rotation.z")
        rotationAnimation.fromValue = NSNumber(value: 0)
        rotationAnimation.toValue = NSNumber(value: Double.pi / 3)
        rotationAnimation.duration = duration
        rotationAnimation.repeatCount = MAXFLOAT
        layer.add(rotationAnimation, forKey: "transform.rotation.z")
        
        self.layer.addSublayer(layer)
    }

}
