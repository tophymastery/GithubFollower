//
//  NetworkManager.swift
//  GHFollowers
//
//  Created by Akadet on 1/19/20.
//  Copyright © 2020 $(PRODUCT_BUNDLE_IDENTIFIER). All rights reserved.
//

import Foundation

class NetworkManager {
    static let shared = NetworkManager()
    let baseUrl = "https://api.github.com"

    private init() {}

    func getFollowers(for username: String, page: Int, completed: @escaping ([Folllower]?, String?) -> Void) {
        let endpoint = baseUrl + "/users/\(username)/followers?per_page=100&page=\(page)"

        guard let url = URL(string: endpoint) else {
            completed(nil, "This username created an invalid request.")
            return
        }

        let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
            if let _ = error {
                completed(nil, "Unable to complete your request.")
            }

            guard
                let response = response as? HTTPURLResponse,
                response.statusCode == 200 else {
                    completed(nil, "Invalid response from server.")
                    return
            }

            guard let data = data else {
                completed(nil, "The data receive from server is invalid.")
                return
            }

            do {
                let decoder = JSONDecoder()
                decoder.keyDecodingStrategy = .convertFromSnakeCase
                let followers = try decoder.decode([Folllower].self, from: data)
                completed(followers, nil)
            } catch {
                completed(nil, "The data receive from server is invalid.")
            }
        }

        task.resume()
    }
}
