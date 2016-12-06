//
//  Episode.swift
//  Panarmenian TV
//
//  Created by Ourangzaib khan on 2/10/16.
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
