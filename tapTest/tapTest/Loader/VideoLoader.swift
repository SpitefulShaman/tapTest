//
//  VideoLoader.swift
//  tapTest
//
//  Created by Kirill Afanasiev on 20.07.2021.
//

import Foundation

protocol VideoLoaderProtocol {
    func loadVideoList(query: String)
}

final class VideoLoader: VideoLoaderProtocol {
    func loadVideoList(query: String) {
        let urlString = "https://www.youtube.com/results?search_query=\(query)"
        let networkService = NetworkService()
        networkService.loadHtmlSourceWithCompletion(query: urlString) { result in
            switch result {
            case .success(let htmlString):
                let parsedString = htmlString //htmlParser
                //dataSource update
            case .failure(_):
                //showError
                break
            }
        }
    }
}
