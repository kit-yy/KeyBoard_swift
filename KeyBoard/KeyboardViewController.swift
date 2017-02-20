//
//  KeyboardViewController.swift
//  KeyBoard
//
//  Created by Yasuaki K on 2017/02/19.
//  Copyright © 2017年 Yasuaki Kitaoka. All rights reserved.
//

import UIKit

class KeyboardViewController: UIInputViewController {

    @IBOutlet var nextKeyboardButton: UIButton!
    var imageView = UIImageView()
    
    var count :Int = 0
    let button1:UIButton = UIButton()
    let button2:UIButton = UIButton()
    let button3:UIButton = UIButton()
    let button4:UIButton = UIButton()
    let button5:UIButton = UIButton()
    
    override func updateViewConstraints() {
        super.updateViewConstraints()
        
        // Add custom view sizing constraints here
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView = UIImageView
        imageView.frame = CGRect(x: 0, y: 0, width: Int(self.view.frame.size.width), height: Int(self.view.frame.size.height))
        
        imageView.image = UIImage(named: "image11.jpg")
        self.view.addSubview(imageView)
        
        // Perform custom UI setup here
        self.nextKeyboardButton = UIButton(type: .system)
        
        self.nextKeyboardButton.setTitle(NSLocalizedString("次へ", comment: "Title for 'Next Keyboard' button"), for: [])
        self.nextKeyboardButton.sizeToFit()
        self.nextKeyboardButton.translatesAutoresizingMaskIntoConstraints = false
        
        self.nextKeyboardButton.addTarget(self, action: #selector(handleInputModeList(from:with:)), for: .allTouchEvents)
        
        self.view.addSubview(self.nextKeyboardButton)
        
        self.nextKeyboardButton.leftAnchor.constraint(equalTo: self.view.leftAnchor).isActive = true
        self.nextKeyboardButton.bottomAnchor.constraint(equalTo: self.view.bottomAnchor).isActive = true
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated
    }
    
  
    
    override func textDidChange(_ textInput: UITextInput?) {
        
        imageView.image = UIImage(named: "image11.jpg")
        self.view.addSubview(imageView)
        
        
        button1.addTarget(self, action: #selector(unun), for: .touchUpInside)
        button1.frame = CGRect(x: 0, y: 0, width: Int(self.view.frame.size.width/3), height: 216/3)
        button1.setTitle("ウンウン", for: UIControlState.normal)
        self.view.addSubview(button1)
        
        button2.addTarget(self, action: #selector(maji), for: .touchUpInside)
        button2.frame = CGRect(x: Int(self.view.frame.size.width)-Int(self.view.frame.size.width/3), y: 0, width: Int(self.view.frame.size.width/3), height: 216/3)
        button2.setTitle("まじ", for: UIControlState.normal)
        self.view.addSubview(button2)
        
        button3.addTarget(self, action: #selector(hee), for: .touchUpInside)
        button3.frame = CGRect(x: 0, y: Int(self.view.frame.size.height)-Int(216/3), width: Int(self.view.frame.size.width/3), height: 216/3)
        button3.setTitle("へー", for: UIControlState.normal)
        self.view.addSubview(button3)
        
        button4.addTarget(self, action: #selector(ok), for: .touchUpInside)
        button4.frame = CGRect(x: Int(self.view.frame.size.width)-Int(self.view.frame.size.width/3), y: Int(self.view.frame.size.height)-Int(216/3), width: Int(self.view.frame.size.width/3), height: 216/3)
        button4.setTitle("おけ", for: UIControlState.normal)
        self.view.addSubview(button4)
        
        button5.addTarget(self, action: #selector(haikei), for: .touchUpInside)
        button5.frame = CGRect(x: Int(self.view.frame.size.width)/3, y: Int(self.view.frame.size.height)/3, width: Int(self.view.frame.size.width/3), height: 216/3)
        button5.setTitle("背景", for: UIControlState.normal)
        self.view.addSubview(button5)
        
        
    }
    
    func haikei(){
        
        count += 1
        if(count == 10){
            count = 1
        }
        
        if(count == 1){
            imageView.image = UIImage(named: "image1.jpg")
        }
        if(count == 2){
            imageView.image = UIImage(named: "image2.jpg")
        }
        if(count == 3){
            imageView.image = UIImage(named: "image3.jpg")
        }
        if(count == 4){
            imageView.image = UIImage(named: "image4.jpg")
        }
        if(count == 5){
            imageView.image = UIImage(named: "image5.jpg")
        }
        if(count == 6){
            imageView.image = UIImage(named: "image6.jpg")
        }
        if(count == 7){
            imageView.image = UIImage(named: "image7.jpg")
        }
        if(count == 8){
            imageView.image = UIImage(named: "image8.jpg")
        }
        if(count == 9){
            imageView.image = UIImage(named: "image9.jpg")
        }
    }
    func unun(){
        
        self.textDocumentProxy.insertText("ウンウン")
    }
    
    func maji(){
        
        self.textDocumentProxy.insertText("まじ")
    }
    func hee(){
        
        self.textDocumentProxy.insertText("へー")
    }
    func ok(){
        
        self.textDocumentProxy.insertText("おけ")
    }
}
