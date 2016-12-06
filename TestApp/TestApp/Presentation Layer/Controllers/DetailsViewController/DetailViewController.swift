//
//  DetailViewController.swift
//  TestApp
//
//  Created by Ourangzaib khan on 12/7/16.
//  Copyright © 2016 Ourangzaib khan. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    var singleITemData : PlayList!
    
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var titleofList: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        self.setData()
    
    }
    
    
    func setData(){
        self.titleofList.text = singleITemData.title as String
        let url = URL(string: singleITemData.imageUrl)
        imageView.kf.setImage(with: url)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
