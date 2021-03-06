//
//  ColourLoversAPI.swift
//  PLTR
//
//  Created by Jasmine Giang on 12/3/15.
//  Copyright © 2015 Jasmine Giang. All rights reserved.
//

import Foundation

class ColourLoversAPI {

    func loadColors(completion: (([Color]) -> Void)!) {

        let url: NSURL = NSURL(string: "http://www.colourlovers.com/api/colors/top?numResults=100&sortBy=DESC&format=json")!
        let task = NSURLSession.sharedSession().dataTaskWithURL(url) {
            (data: NSData?, response: NSURLResponse?, error: NSError?) -> Void in
            if error == nil {
                var colors: [Color]!
                do {
                    let dataArray = try NSJSONSerialization.JSONObjectWithData(data!, options: NSJSONReadingOptions.MutableContainers) as! [NSDictionary]

                    colors = [Color]()
                    for item in dataArray {
                        colors.append(Color(data: item))
                    }
                    
                    let priority = DISPATCH_QUEUE_PRIORITY_DEFAULT
                    dispatch_async(dispatch_get_global_queue(priority, 0)) {
                        dispatch_async(dispatch_get_main_queue()) {
                            completion(colors)
                        }
                    }
                } catch let error as NSError {
                    print("ERROR: \(error.localizedDescription)")
                }
            }
        }
        task.resume()
    }
    
    func loadSearchColors(searchString: String!, completion: (([Color]) -> Void)!) {
        let unencodedUrl = "http://www.colourlovers.com/api/colors?keywords=\(searchString)&numResults=100&sortBy=DESC&format=json"
        let encodedUrl = unencodedUrl.stringByAddingPercentEncodingWithAllowedCharacters( NSCharacterSet.URLQueryAllowedCharacterSet())!
        
        let url: NSURL = NSURL(string: encodedUrl)!
        let task = NSURLSession.sharedSession().dataTaskWithURL(url) {
            (data: NSData?, response: NSURLResponse?, error: NSError?) -> Void in
            if error == nil {
                var colors: [Color]!
                do {
                    let dataArray = try NSJSONSerialization.JSONObjectWithData(data!, options: NSJSONReadingOptions.MutableContainers) as! [NSDictionary]
                    colors = [Color]()
                    for item in dataArray {
                        colors.append(Color(data: item))
                    }
                    
                    let priority = DISPATCH_QUEUE_PRIORITY_DEFAULT
                    dispatch_async(dispatch_get_global_queue(priority, 0)) {
                        dispatch_async(dispatch_get_main_queue()) {
                            completion(colors)
                        }
                    }
                } catch let error as NSError {
                    print("ERROR: \(error.localizedDescription)")
                }
            }
        }
        task.resume()
    }
    
    
    
    func loadPalettes(completion: (([Palette]) -> Void)!) {
        
        let url: NSURL = NSURL(string: "http://www.colourlovers.com/api/palettes/top?format=json")!
        let task = NSURLSession.sharedSession().dataTaskWithURL(url) {
            (data: NSData?, response: NSURLResponse?, error: NSError?) -> Void in
            if error == nil {
                var palettes: [Palette]!
                do {
                    let dataArray = try NSJSONSerialization.JSONObjectWithData(data!, options: NSJSONReadingOptions.MutableContainers) as! [NSDictionary]
                    
                    palettes = [Palette]()
                    for item in dataArray {
                        palettes.append(Palette(data: item))
                    }
                    
                    let priority = DISPATCH_QUEUE_PRIORITY_DEFAULT
                    dispatch_async(dispatch_get_global_queue(priority, 0)) {
                        dispatch_async(dispatch_get_main_queue()) {
                            completion(palettes)
                        }
                    }
                } catch let error as NSError {
                    print("ERROR: \(error.localizedDescription)")
                }
            }
        }
        task.resume()
    }
    
    func loadSearchPalettes(searchString: String!, completion: (([Palette]) -> Void)!) {
        let unencodedUrl = "http://www.colourlovers.com/api/palettes?keywords=\(searchString)&format=json"
        let encodedUrl = unencodedUrl.stringByAddingPercentEncodingWithAllowedCharacters( NSCharacterSet.URLQueryAllowedCharacterSet())!
        
        let url: NSURL = NSURL(string: encodedUrl)!
        let task = NSURLSession.sharedSession().dataTaskWithURL(url) {
            (data: NSData?, response: NSURLResponse?, error: NSError?) -> Void in
            if error == nil {
                var palettes: [Palette]!
                do {
                    let dataArray = try NSJSONSerialization.JSONObjectWithData(data!, options: NSJSONReadingOptions.MutableContainers) as! [NSDictionary]
                    palettes = [Palette]()
                    for item in dataArray {
                        palettes.append(Palette(data: item))
                    }
                    
                    let priority = DISPATCH_QUEUE_PRIORITY_DEFAULT
                    dispatch_async(dispatch_get_global_queue(priority, 0)) {
                        dispatch_async(dispatch_get_main_queue()) {
                            completion(palettes)
                        }
                    }
                } catch let error as NSError {
                    print("ERROR: \(error.localizedDescription)")
                }
            }
        }
        task.resume()
    }
    
    
}