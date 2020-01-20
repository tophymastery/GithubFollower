//
//  Error.swift
//  GHFollowers
//
//  Created by Akadet on 1/20/20.
//  Copyright © 2020 $(PRODUCT_BUNDLE_IDENTIFIER). All rights reserved.
//

import Foundation

enum ErrorMessage: String {
    case invalidUsername = "This username created an invalid request."
    case unableToComplete = "Unable to complete your request."
    case invalidResponse = "Invalid response from server."
    case invalidData = "The data receive from server is invalid."
}
