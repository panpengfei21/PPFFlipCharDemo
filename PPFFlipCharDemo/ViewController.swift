//
//  ViewController.swift
//  NumberDemo
//
//  Created by 潘鹏飞 on 2019/7/29.
//  Copyright © 2019 潘鹏飞. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var fv0:PPFFlipCharView!
    var fv1:PPFFlipCharView!
    var fv2:PPFFlipCharView!

    var fv3:PPFFlipCharView!
    var fv4:PPFFlipCharView!
    var fv5:PPFFlipCharView!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .gray
        // Do any additional setup after loading the view.
        
        fv0 = {
            let v = PPFFlipCharView(frame: CGRect(x: 50, y: 50, width: 100, height: 150), char: Character("C"))
            v.topCharFont = UIFont.systemFont(ofSize: 100)
            v.bottomCharFont = UIFont.systemFont(ofSize: 100)
            view.addSubview(v)
            return v
        }()
        
        fv1 = {
            let v = PPFFlipCharView(frame: CGRect(x: 160, y: 50, width: 100, height: 150), char: Character("A"))
            v.topCharFont = UIFont.systemFont(ofSize: 130,weight: .bold)
            v.bottomCharFont = UIFont.systemFont(ofSize: 130,weight: .bold)
            v.topCharColor = UIColor.black
            v.bottomCharColor = UIColor.brown
            
            v.topCharBackgroundColor = UIColor.brown
            v.bottomCharBackground = UIColor.white
            
            v.interspace = 10
            
            view.addSubview(v)
            return v
        }()

        fv2 = {
            let v = PPFFlipCharView(frame: CGRect(x: 270, y: 50, width: 100, height: 150), char: Character("0"))
            v.topCharFont = UIFont.systemFont(ofSize: 100)
            v.bottomCharFont = UIFont.systemFont(ofSize: 100)
            v.topCharBackgroundColor = UIColor.red
            v.bottomCharBackground = UIColor.purple
            view.addSubview(v)
            return v
        }()

        
        fv3 = {
            let v = PPFFlipCharView(frame: CGRect(x: 50, y: 210, width: 100, height: 150), char: Character("C"))
            v.topCharFont = UIFont.systemFont(ofSize: 100)
            v.bottomCharFont = UIFont.systemFont(ofSize: 100)
            view.addSubview(v)
            return v
        }()
        
        fv4 = {
            let v = PPFFlipCharView(frame: CGRect(x: 160, y: 210, width: 100, height: 150), char: Character("A"))
            v.topCharFont = UIFont.systemFont(ofSize: 100)
            v.bottomCharFont = UIFont.systemFont(ofSize: 100)
            
            v.topCharColor = UIColor.black
            v.bottomCharColor = UIColor.black
            
            v.topCharBackgroundColor = UIColor.white
            v.bottomCharBackground = UIColor.white

            v.interspace = 10
            
            view.addSubview(v)
            return v
        }()
        
        fv5 = {
            let v = PPFFlipCharView(frame: CGRect(x: 270, y: 210, width: 100, height: 150), char: Character("0"))
            v.topCharFont = UIFont.systemFont(ofSize: 100)
            v.bottomCharFont = UIFont.systemFont(ofSize: 100)
            v.topCharBackgroundColor = UIColor.red
            v.bottomCharBackground = UIColor.purple
            view.addSubview(v)
            return v
        }()
        
        let _:UIButton = {
            let b = UIButton(type: .infoDark)
            b.center = CGPoint(x: 200, y: 500)
            view.addSubview(b)
            b.addTarget(self, action: #selector(ViewController.fsa), for: .touchUpInside)
            return b
        }()
    }
    
    @objc func fsa() {
        fv0.convertToChar(randomNumber(),force:false)
        fv1.convertToChar(randomNumber(),force:false)
        fv2.convertToChar(randomNumber(),force:true)
        
        fv3.convertToChar(randomChar(),force:false, animation: false)
        fv4.convertToChar(randomChar(),force:false, animation:false)
        fv5.convertToChar(randomNumber(),force:false,animation:false)

    }
    
    func randomChar() -> Character {
        let a = UInt8(arc4random_uniform(UInt32(UInt8.max)))
        let b = Unicode.Scalar(a)
        return Character(b)
    }
    func randomNumber() -> Character {
        let c = arc4random_uniform(10)
        return Character("\(c)")
    }

}

