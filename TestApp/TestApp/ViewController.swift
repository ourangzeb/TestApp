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
    var list : [PlayList] = [PlayList]()
    var listsearched = [PlayList]()
    var presentlist = [PlayList]()
    var selectedindex : Int = 0
    let searchController = UISearchController(searchResultsController: nil)

    
    
    // Pragma MARK: View Controller Functions
    override func viewDidLoad() {
        super.viewDidLoad()
       getdatafromnetwork()
        searchController.searchResultsUpdater = self
        searchController.dimsBackgroundDuringPresentation = false
        definesPresentationContext = true
        listTableView.tableHeaderView = searchController.searchBar
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "Details"{
            let controller  : DetailViewController  = segue.destination as! DetailViewController
            controller.singleITemData = presentlist[selectedindex]
            
        }
        
        
    }
   
    // Pragma MARK: Seearching
    
    func filterContentForSearchText(searchText: String, scope: String = "All") {
        listsearched  = list.filter { singlelist in
            return singlelist.title.lowercased().contains(searchText.lowercased()) || singlelist.artist.lowercased().contains(searchText.lowercased())
        }
        
        self.listTableView.reloadData()
    }
    
    
    // Pragma MARK: Get Data from network
    
    func getdatafromnetwork(){
        
        let value = NetworkManager();
        
        value.getJsonData(completionHandler: { (latest : [PlayList]?, error1: Error?) -> Void in
            self.list = latest!
            self.listTableView.reloadData()
        })
    }
    
   
    
    
    
    // Pragma MARK: Table View Data sources
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedindex = indexPath.row
        self.performSegue(withIdentifier: "Details", sender: nil)
        
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "All Playlist"
    }
    
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1;
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if searchController.isActive && searchController.searchBar.text != "" {
            presentlist = listsearched
            return listsearched.count
        }
        presentlist = list
        return list.count;
    }

    
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: CustomTableViewCell = tableView.dequeueReusableCell(withIdentifier: "Cell") as! CustomTableViewCell
        
        let playlistvalue = presentlist[indexPath.row]
        cell.artist.text = playlistvalue.artist
        cell.title.text = playlistvalue.title
        let url = URL(string: playlistvalue.imageUrl)
        cell.cellimageView.kf.setImage(with: url)
      
        
            return cell
    }
}


