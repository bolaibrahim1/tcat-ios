//
//  SearchBarView.swift
//  TCAT
//
//  Created by Austin Astorga on 2/15/17.
//  Copyright © 2017 cuappdev. All rights reserved.
//

import UIKit
import GooglePlaces

class SearchBarView: UIView, UISearchControllerDelegate {
    
    var searchController: UISearchController?
    var resultsViewController: SearchResultsTableViewController?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        //Search Bar Customization
        UISearchBar.appearance().setImage(UIImage(named: "search"), for: .search, state: .normal)
        UIBarButtonItem.appearance().setTitleTextAttributes([NSForegroundColorAttributeName:UIColor.black], for: .normal)

        resultsViewController = SearchResultsTableViewController()
        searchController = UISearchController(searchResultsController: resultsViewController)
        searchController?.searchResultsUpdater = resultsViewController
        searchController?.searchBar.sizeToFit()
        searchController?.searchBar.delegate = resultsViewController
        if #available(iOS 11.0, *) {
            searchController?.searchBar.heightAnchor.constraint(equalToConstant: 44).isActive = true
        }
        resultsViewController?.searchBar = searchController?.searchBar
        
        let textFieldInsideSearchBar = searchController?.searchBar.value(forKey: "searchField") as? UITextField
        textFieldInsideSearchBar?.backgroundColor = .tableBackgroundColor
        textFieldInsideSearchBar?.attributedPlaceholder = NSAttributedString(string: "Search (e.g Balch Hall, 312 College Ave)", attributes: [NSForegroundColorAttributeName: UIColor.searchBarPlaceholderTextColor])
        
        //searchController?.searchBar.backgroundColor = .clear
        searchController?.searchBar.tintColor = .clear
        searchController?.delegate = self
        searchController?.dimsBackgroundDuringPresentation = false
        searchController?.hidesNavigationBarDuringPresentation = false

    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
