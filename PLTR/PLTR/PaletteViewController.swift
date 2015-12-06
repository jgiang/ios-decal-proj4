//
//  PaletteViewController.swift
//  PLTR
//
//  Created by Jasmine Giang on 12/3/15.
//  Copyright © 2015 Jasmine Giang. All rights reserved.
//

import UIKit

class PaletteViewController: UIViewController {
    
    
    @IBOutlet weak var imageView: UIImageView!
    var palette : Palette!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var colorsLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        titleLabel.text = "Title: \(palette.title)"
        
        var s = ""
        for hex in palette.hex_values {
            s = s + String(hex) + " "
        }
        colorsLabel.text = s
        loadImage(palette, imageView: imageView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func loadImage(palette: Palette, imageView: UIImageView) {
        let imgURL: NSURL = NSURL(string: palette.imageUrl)!
        let request: NSURLRequest = NSURLRequest(URL: imgURL)
        NSURLConnection.sendAsynchronousRequest(
            request, queue: NSOperationQueue.mainQueue(),
            completionHandler: {(response: NSURLResponse?,data: NSData?,error: NSError?) -> Void in
                if error == nil {
                    imageView.image = UIImage(data: data!)
                }
        })
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    

}
