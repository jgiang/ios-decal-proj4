//
//  ColorViewController.swift
//  PLTR
//
//  Created by Jasmine Giang on 12/3/15.
//  Copyright © 2015 Jasmine Giang. All rights reserved.
//

import UIKit

class ColorViewController: UIViewController {
    
    var color : Color!
    
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var hexLabel: UILabel!
    @IBOutlet var rgbLabel: UILabel!
    @IBOutlet var descriptionLabel: UILabel!
    
    
    @IBOutlet var redLabel: UILabel!
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenLabel: UILabel!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueLabel: UILabel!
    @IBOutlet var blueSlider: UISlider!
    
    @IBOutlet var currentHexLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        titleLabel.text = "Title: \(color.title)"
        hexLabel.text = "Hex Code: \(color.hex)"
        rgbLabel.text = "RGB(\(color.red), \(color.green), \(color.blue))"
        if color.description.characters.count > 0 {
            descriptionLabel.text = "Description: \(color.description)"
        } else {
            descriptionLabel.text = ""
        }
        //loadImage(color, imageView: imageView)
        redLabel.text = "Red: \(color.red)"
        greenLabel.text = "Green: \(color.green)"
        blueLabel.text = "Blue: \(color.blue)"
        imageView.backgroundColor = UIColor(red: CGFloat(color.red/255), green: CGFloat(color.green/255), blue: CGFloat(color.blue/255), alpha: 1)
        redSlider.value = color.red
        greenSlider.value = color.green
        blueSlider.value = color.blue
        currentHexLabel.text = color.hex
    }
    
    @IBAction func sliderMove(sender: UISlider) {
        redLabel.text = "Red: \(redSlider.value)"
        greenLabel.text = "Green: \(greenSlider.value)"
        blueLabel.text = "Blue: \(blueSlider.value)"
        imageView.backgroundColor = UIColor(red: CGFloat(redSlider.value/255), green: CGFloat(greenSlider.value/255), blue: CGFloat(blueSlider.value/255), alpha: 1)
        currentHexLabel.text = String(format:"%X", Int(redSlider.value)) + String(format:"%X", Int(greenSlider.value)) + String(format:"%X", Int(blueSlider.value))
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func loadImage(color: Color, imageView: UIImageView) {
        let imgURL: NSURL = NSURL(string: color.imageUrl)!
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
