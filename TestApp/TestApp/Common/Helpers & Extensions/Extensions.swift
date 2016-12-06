//
//  Extensions.swift
//  TestApp
//
//  Created by Ourangzaib khan on 12/7/16.
//  Copyright © 2016 Ourangzaib khan. All rights reserved.
//

import UIKit

class Extensions: NSObject {

}


extension ViewController: UISearchResultsUpdating {
    @available(iOS 8.0, *)
    public func updateSearchResults(for searchController: UISearchController) {
        filterContentForSearchText(searchText: searchController.searchBar.text!)
        
    }
    
    
}
