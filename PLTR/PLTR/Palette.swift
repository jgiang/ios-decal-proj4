//
//  Palette.swift
//  PLTR
//
//  Created by Jasmine Giang on 12/3/15.
//  Copyright © 2015 Jasmine Giang. All rights reserved.
//

import Foundation

class Palette {
    var title : String!
    var description : String!
    var imageUrl : String!
    var hex_values : NSArray!
    var color_widths : NSArray!

    
    
    init (data: NSDictionary) {
        title = data.valueForKey("title") as! String
        description = data.valueForKey("description") as! String
        imageUrl = data.valueForKey("imageUrl") as! String
        hex_values = data.valueForKey("colors") as! NSArray
    }
    
}