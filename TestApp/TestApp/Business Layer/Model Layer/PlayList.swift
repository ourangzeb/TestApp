//
//  PlayList.swift
//  TestApp
//
//  Created by Ourangzaib khan on 12/6/16.
//  Copyright © 2016 Ourangzaib khan. All rights reserved.
//

import UIKit

class PlayList: NSObject {
    
    var title : String!;
    var artist : String!
    var imageUrl : String!;
    
    init(dictionar : NSDictionary) {
        title = dictionar["title"] as! String
        artist = dictionar["artist"] as! String
        imageUrl = dictionar["image"] as! String
    }
   
}
