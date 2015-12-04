//
//  Color.swift
//  PLTR
//
//  Created by Jasmine Giang on 12/3/15.
//  Copyright © 2015 Jasmine Giang. All rights reserved.
//

import Foundation

class Color {
    var title : String!
    var hex : String!
    var description : String!
    var imageUrl : String!
    var red : Float!
    var green : Float!
    var blue : Float!
    
    
    init (data: NSDictionary) {
        title = data.valueForKey("title") as! String
        hex = data.valueForKey("hex") as! String
        description = data.valueForKey("description") as! String
        imageUrl = data.valueForKey("imageUrl") as! String
        red = data.valueForKey("rgb")?.valueForKey("red") as! Float
        green = data.valueForKey("rgb")?.valueForKey("green") as! Float
        blue = data.valueForKey("rgb")?.valueForKey("blue") as! Float
    }
    
}