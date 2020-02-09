//
//  GFAvatarImageView.swift
//  GHFollowers
//
//  Created by Akadet on 2/2/20.
//  Copyright © 2020 $(PRODUCT_BUNDLE_IDENTIFIER). All rights reserved.
//

import UIKit

class GFAvatarImageView: UIImageView {

    let placeHolderImage = UIImage(named: "avatar-placeholder")

    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func configure() {
        layer.cornerRadius = 10
        clipsToBounds = true
        image = placeHolderImage
        translatesAutoresizingMaskIntoConstraints = false
        
    }
}
