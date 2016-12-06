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
    
    func getJsonData(completionHandler: @escaping ([PlayList]?, Error?) -> ()) -> (){
        
        Alamofire.request("https://www.bbc.co.uk/radio1/playlist.json").responseJSON { response in
            
            if let error = response.result.error {
                
                completionHandler(nil,error as Error?)
            
            }
            
            if let JSON : NSDictionary = response.result.value  as? NSDictionary{
                let playlist = JSON.value(forKey: "playlist") as! NSDictionary
                let listA : [NSDictionary] = playlist.value(forKey: "a") as! [NSDictionary]
                var array = [PlayList]()
                for list in listA{
                    array.append(PlayList(dictionar: list as NSDictionary))
                print(array[0].artist)
                }
                completionHandler(array,nil)
                
            }
        }
        
    }
    
    

}
    
    

