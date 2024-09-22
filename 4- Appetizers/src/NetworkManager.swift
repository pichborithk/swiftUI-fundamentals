//
//  NetworkManager.swift
//  Appetizers
//
//  Created by Pichborith Kong on 9/21/24.
//

import Foundation

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
            
            guard let data =  data else {
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
}
