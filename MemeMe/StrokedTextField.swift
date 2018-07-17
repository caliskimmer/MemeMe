//
//  StrokedTextField.swift
//  MemeMe
//
//  Created by Matas Empakeris on 7/17/18.
//  Copyright © 2018 MatasEmpakeris. All rights reserved.
//

import UIKit

@IBDesignable
class StrokedTextField: UITextField {
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupAttributes()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupAttributes()
    }
    
    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        setupAttributes()
    }
}

private extension StrokedTextField {
    func setupAttributes() {
        var text = "Text"
        if self.text != nil {
            text = self.text!
        }
        
        attributedText = NSAttributedString(string: text, attributes:[.strokeWidth: -3.0,
                                                                      .strokeColor: UIColor.black])
    }
}
