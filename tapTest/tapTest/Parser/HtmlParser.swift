//
//  HtmlParser.swift
//  tapTest
//
//  Created by Kirill Afanasiev on 20.07.2021.
//

import Foundation

protocol HtmlParserProtocol {
    func parseHtml(html: String) -> String
}

final class HtmlParser: HtmlParserProtocol {
    
    func parseHtml(html: String) -> String {
        return html;
    }
    
}
