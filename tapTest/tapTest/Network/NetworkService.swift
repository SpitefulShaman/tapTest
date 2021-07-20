//
//  NetworkService.swift
//  tapTest
//
//  Created by Kirill Afanasiev on 20.07.2021.
//

import Foundation

enum NetworkLoaderError: Error {
    case badUrl
}

protocol NetworkServiceProtocol {
    func loadHtmlSourceWithCompletion(query: String, completion: @escaping (Result<String, Error>) -> Void )
}

final class NetworkService: NetworkServiceProtocol {
    
    func loadHtmlSourceWithCompletion(query: String, completion: @escaping (Result<String, Error>) -> Void) {
        DispatchQueue.global().async {
            guard let url = URL(string: query) else {
                completion(.failure(NetworkLoaderError.badUrl))
                return
            }

            do {
                let htmlString = try String(contentsOf: url, encoding: .utf8)
                completion(.success(htmlString))
            } catch let error {
                completion(.failure(error))
            }
        }
    }
}
