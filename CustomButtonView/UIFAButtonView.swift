//
//  UIFAButtonView.swift
//  CustomButtonView
//
//  Created by Cezar D. on 3/11/16.
//  Copyright © 2016 CezarMobile. All rights reserved.
//

import UIKit

class UIFAButtonView: UIView {

    // here is your button.
    
    var label : UILabel!
    var text : UITextField!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        AddSubViews()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        AddSubViews()
    }
    
    private func AddSubViews()
    {
        label = UILabel()
        label.frame = CGRect(x: 10, y: 10, width: self.frame.width - 20, height: 30)
        label.textColor = UIColor.redColor()
        label.text = "Test Label"
        label.backgroundColor = UIColor.clearColor()
        addSubview(label)
        
        text = UITextField()
        text.frame = CGRect(x: 10, y: 40, width: self.frame.width - 20, height: 30)
        text.textColor = UIColor.blueColor()
        text.text = "test text"
        text.backgroundColor = UIColor.clearColor()
        addSubview(text)
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: Selector("handleTap:"))
        self.addGestureRecognizer(gestureRecognizer)
    }
    
    func handleTap (sender : UITapGestureRecognizer? = nil){
        label.text = "You clicked your own button!!!"
    }
}
