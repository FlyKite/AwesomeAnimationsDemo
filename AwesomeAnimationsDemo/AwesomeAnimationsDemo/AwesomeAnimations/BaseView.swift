//
//  BaseView.swift
//  AwesomeAnimationsDemo
//
//  Created by 风筝 on 2017/7/14.
//  Copyright © 2017年 Doge Studio. All rights reserved.
//

import UIKit

class BaseView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        createAnimation()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func createAnimation() {
        
    }
    
}
