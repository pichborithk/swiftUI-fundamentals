//
//  NetworkManager.swift
//  Appetizers
//
//  Created by Pichborith Kong on 9/21/24.
//

import UIKit

final class NetworkManager {
    static let shared = NetworkManager()
    private let baseUrl = "https://seanallen-course-backend.herokuapp.com/swiftui-fundamentals"

//    enum Endpoint {
//        case getAppetizers  =
//    }

    func getAppetizers(completed: @escaping (Result<[Appetizer], APError>) -> Void) {
        guard let url = URL(string: baseUrl + "/appetizers") else {
            completed(.failure(.invalidURL))
            return
        }

        let task = URLSession.shared.dataTask(with: URLRequest(url: url)) { data, response, error in
            if let _ = error {
                completed(.failure(.unableToComplete))
                return
            }

            guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
                completed(.failure(.invalidResponse))
                return
            }

            guard let data = data else {
                completed(.failure(.invalidData))
                return
            }

            do {
                let result = try JSONDecoder().decode(AppetizerResponse.self, from: data)
                completed(.success(result.request))
            } catch {
                completed(.failure(.invalidData))
            }
        }

        task.resume()
    }

    private let cache = NSCache<NSString, UIImage>()

    func downloadImage(fromURLString urlString: String, completed: @escaping (UIImage?) -> Void) {
        let cacheKey = NSString(string: urlString)

        if let image = cache.object(forKey: cacheKey) {
            completed(image)
            return
        }

        guard let url = URL(string: urlString) else {
            completed(nil)
            return
        }

        let task = URLSession.shared.dataTask(with: URLRequest(url: url)) { data, _, _ in

            guard let data = data, let image = UIImage(data: data) else {
                completed(nil)
                return
            }

            self.cache.setObject(image, forKey: cacheKey)
            completed(image)
        }

        task.resume()
    }
}
