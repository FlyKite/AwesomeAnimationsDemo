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
        let lineWidth: CGFloat
        let duration = 0.25
        
        let layer = CAShapeLayer()
        layer.frame = CGRect(x: 0, y: 0, width: areaWidth, height: areaWidth)
        
        let line1Layer = CAShapeLayer()
        line1Layer.frame = layer.frame
        
    }

}
