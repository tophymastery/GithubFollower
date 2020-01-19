//
//  GFBodyLabel.swift
//  GHFollowers
//
//  Created by Akadet on 1/17/20.
//  Copyright © 2020 $(PRODUCT_BUNDLE_IDENTIFIER). All rights reserved.
//

import UIKit

class GFBodyLabel: UILabel {

    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("crash")
    }

    init(textAlignment: NSTextAlignment) {
        super.init(frame: .zero)

        self.textAlignment = textAlignment
        configure()
    }

    private func configure() {
        textColor = .gray
        font = .preferredFont(forTextStyle: .body)
        adjustsFontSizeToFitWidth = true
        minimumScaleFactor = 0.75
        lineBreakMode = .byWordWrapping
        translatesAutoresizingMaskIntoConstraints = false
    }
}
