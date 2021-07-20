//
//  ViewController.swift
//  tapTest
//
//  Created by Kirill Afanasiev on 20.07.2021.
//

import UIKit

class ViewController: UIViewController, UISearchBarDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
    }

    func setupUI() {
        let searchBar = UISearchBar()
        searchBar.translatesAutoresizingMaskIntoConstraints = false
        searchBar.backgroundColor = UIColor.clear
        searchBar.placeholder = "Search Query"
        searchBar.delegate = self
        self.view.addSubview(searchBar)
            
//        self.view.backgroundColor = UIColor.red
        
        searchBar.topAnchor.constraint(equalTo: self.view.topAnchor).isActive = true
        searchBar.leadingAnchor.constraint(equalTo: self.view.leadingAnchor).isActive = true
        searchBar.trailingAnchor.constraint(equalTo: self.view.trailingAnchor).isActive = true
        searchBar.heightAnchor.constraint(equalToConstant: 80).isActive = true
        
    }
    
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        let loader = VideoLoader()
        loader.loadVideoList(query: searchBar.text ?? "")
    }
}

