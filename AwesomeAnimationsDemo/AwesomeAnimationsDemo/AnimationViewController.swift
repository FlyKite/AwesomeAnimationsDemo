//
//  AnimationViewController.swift
//  AwesomeAnimationsDemo
//
//  Created by 风筝 on 2017/7/14.
//  Copyright © 2017年 Doge Studio. All rights reserved.
//

import UIKit

class AnimationViewController: UIViewController {
    
    var animationType: AnimationType?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.view.backgroundColor = UIColor.white
        guard let type = animationType else {
            self.navigationController?.popViewController(animated: true)
            return
        }
        createAnimationView(type)
        
    }
    
    private func createAnimationView(_ type: AnimationType) {
        var view: BaseView!
        let screenWidth = UIScreen.main.bounds.size.width
        let frame = CGRect(x: CGFloat(50), y: CGFloat(100), width: screenWidth - 100, height: screenWidth - 100)
        switch type {
        case .unlimitedTriangle:
            view = UnlimitedTriangle(frame: frame)
        }
        self.view.addSubview(view)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
