//
//  ViewController.swift
//  TestApp
//
//  Created by Ourangzaib khan on 12/6/16.
//  Copyright © 2016 Ourangzaib khan. All rights reserved.
//

import UIKit
import Alamofire
import Kingfisher
class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, UISearchBarDelegate {

    @IBOutlet weak var listTableView: UITableView!
    @IBOutlet weak var searchController: UISearchBar!
    var list : [PlayList] = [PlayList]()
    var filteredCandies = [PlayList]()

    // Pragma MARK: View Controller Functions
    override func viewDidLoad() {
        super.viewDidLoad()
       setlatestepisodes()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    func setlatestepisodes(){
        
        let value = NetworkManager();
        
        value.getJsonData(completionHandler: { (latest : [PlayList]?, error1: Error?) -> Void in
            self.list = latest!
            self.listTableView.reloadData()
        })
    }

    
   
    
    
    
    
    // Pragma MARK: Table View Data sources
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Title"
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1;
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list.count;
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: CustomTableViewCell = tableView.dequeueReusableCell(withIdentifier: "Cell") as! CustomTableViewCell
        
        cell.artist.text = list[indexPath.row].artist
        cell.title.text = list[indexPath.row].title
        let url = URL(string: list[indexPath.row].imageUrl)
        cell.cellimageView.kf.setImage(with: url)
        return cell
    }
}

