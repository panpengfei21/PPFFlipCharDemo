//
//  ViewController.swift
//  NumberDemo
//
//  Created by 潘鹏飞 on 2019/7/29.
//  Copyright © 2019 潘鹏飞. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var v:PPFFlipCharView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .gray
        // Do any additional setup after loading the view.
        
        v = PPFFlipCharView(frame: CGRect(x: 50, y: 50, width: 200, height: 300), char: Character("C"))
        v.topCharFont = UIFont.systemFont(ofSize: 200)
        v.bottomCharFont = UIFont.systemFont(ofSize: 200)
        view.addSubview(v)
        
        let _:UIButton = {
            let b = UIButton(type: .infoDark)
            b.center = CGPoint(x: 200, y: 500)
            view.addSubview(b)
            b.addTarget(self, action: #selector(ViewController.fsa), for: .touchUpInside)
            return b
        }()
    }
    
    @objc func fsa() {
        let c = arc4random_uniform(10)
        v.convertToChar(Character("\(c)"), animation: true)
    }
}

