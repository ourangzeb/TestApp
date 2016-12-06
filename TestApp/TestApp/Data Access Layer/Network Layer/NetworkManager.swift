//
//  NetworkManager.swift
//  Panarmenian TV
//
//  Created by Ourangzaib khan on 2/8/16.
//  Copyright © 2016 Ourangzaib khan. All rights reserved.
//

import UIKit
import Alamofire

class NetworkManager: NSObject {
    
    var request : Alamofire.Request!
    
    func getJsonData(){
        
        Alamofire.request("https://www.bbc.co.uk/radio1/playlist.json").responseJSON { response in
            
            if let JSON = response.result.value {
                print("JSON: \(JSON)")
            }
        }
        
    }
    
    

}
    
    

