//
//  RoundedButton.swift
//  Pila
//
//  Created by Julia Nikitina on 05/09/2018.
//  Copyright © 2018 Julia Nikitina. All rights reserved.
//

import UIKit

@IBDesignable
final class RoundedButton: UIButton {

    @IBInspectable
    private var borderWidth: CGFloat {
        didSet {
            layer.borderWidth = borderWidth
        }
    }
    
    @IBInspectable
    private var borderColor: UIColor {
        didSet {
            layer.borderColor = borderColor.cgColor
        }
    }

    override func prepareForInterfaceBuilder() {
        setUpView()
    }
    
    override func awakeFromNib() {
        setUpView()
    }

    private func setUpView() {
        layer.cornerRadius = frame.height / 2
    }
}
