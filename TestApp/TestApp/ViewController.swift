//
//  ViewController.swift
//  TestApp
//
//  Created by Ourangzaib khan on 12/6/16.
//  Copyright © 2016 Ourangzaib khan. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, UISearchBarDelegate {

    @IBOutlet weak var listTableView: UITableView!
    @IBOutlet weak var searchController: UISearchBar!
    
    // Pragma MARK: View Controller Functions
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    
    
    
    
    
    
    
    // Pragma MARK: Table View Data sources
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Title"
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3;
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0;
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
}

