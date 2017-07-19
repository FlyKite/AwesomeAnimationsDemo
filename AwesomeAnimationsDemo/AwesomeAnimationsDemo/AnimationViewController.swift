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
        switch type {
        case .unlimitedTriangle:
            view = UnlimitedTriangle(frame: CGRect(x: CGFloat(50),
                                                      y: CGFloat(100),
                                                      width: screenWidth - 100,
                                                      height: screenWidth - 100))
        case .playAndPause:
            view = PlayAndPause(frame: CGRect(x: screenWidth / 2 - 20,
                                              y: CGFloat(100),
                                              width: 40,
                                              height: 40))
        case .menuAndClose:
            view = MenuAndClose(frame: CGRect(x: screenWidth / 2 - 20,
                                              y: CGFloat(100),
                                              width: 40,
                                              height: 40))
        case .hamburgerMenu:
            view = HamburgerMenu(frame: CGRect(x: screenWidth / 2 - 10,
                                               y: CGFloat(100),
                                               width: 20,
                                               height: 20))
        case .waves:
            view = Waves(frame: CGRect(x: screenWidth / 2 - 150,
                                       y: CGFloat(100),
                                       width: 300,
                                       height: 100))
        }
        self.view.addSubview(view)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
