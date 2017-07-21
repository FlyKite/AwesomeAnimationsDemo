//
//  Like.swift
//  AwesomeAnimationsDemo
//
//  Created by 风筝 on 2017/7/21.
//  Copyright © 2017年 Doge Studio. All rights reserved.
//

import UIKit

class Like: BaseView {

    override func createAnimation() {
        
        let layer = CAEmitterLayer()
        layer.position = CGPoint(x: self.frame.width / 2, y: self.frame.height)
        layer.emitterSize = self.frame.size
        layer.emitterShape = kCAEmitterLayerPoint
        layer.emitterMode = kCAEmitterLayerPoints
        
        let cell = CAEmitterCell()
        cell.contents = #imageLiteral(resourceName: "wheart.png").cgImage
        cell.birthRate = 10
        cell.lifetime = 3
        cell.lifetimeRange = 1
        
        cell.emissionLongitude = CGFloat.pi * 1.5
        cell.emissionRange = CGFloat.pi / 20
        
        cell.velocity = 150
        cell.velocityRange = 20
        
        cell.scale = 0.7
        cell.scaleRange = 0.3
        
        cell.color = UIColor(red: 1, green: 0, blue: 0, alpha: 0.7).cgColor
        cell.redRange = 0.5
        cell.greenRange = 0.3
        cell.blueRange = 0.3
        
        cell.alphaRange = 0.3
        
        layer.emitterCells = [cell]
        self.layer.addSublayer(layer)
        
        let image = UIImageView(frame: CGRect(x: self.frame.width / 2 - 20, y: self.frame.height - 17.5, width: 40, height: 35))
        image.image = #imageLiteral(resourceName: "heart.png")
        self.addSubview(image)
    }

}
