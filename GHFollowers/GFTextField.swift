//
//  GFTextField.swift
//  GHFollowers
//
//  Created by Akadet on 1/7/20.
//  Copyright © 2020 $(PRODUCT_BUNDLE_IDENTIFIER). All rights reserved.
//

import UIKit

class GFTextField: UITextField {

    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func configure() {
        translatesAutoresizingMaskIntoConstraints = false

        layer.cornerRadius = 10
        layer.borderWidth = 2
        layer.backgroundColor = UIColor.gray.cgColor

        textColor = .black
        tintColor = .black
        textAlignment = .center
        font = .preferredFont(forTextStyle: .title2)
        adjustsFontSizeToFitWidth = true
        minimumFontSize = 12

        backgroundColor = UIColor.white
        autocorrectionType = .no
        returnKeyType = .go

        placeholder = "Enter a username"
    }
}
