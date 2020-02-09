//
//  Follower.swift
//  GHFollowers
//
//  Created by Akadet on 1/19/20.
//  Copyright © 2020 $(PRODUCT_BUNDLE_IDENTIFIER). All rights reserved.
//

import Foundation

struct Follower: Codable, Hashable {
    var login: String
    var avatarUrl: String
}
