//
//  ViewController.swift
//  ScrollViews
//
//  Created by Bryan Fein on 3/29/17.
//  Copyright © 2017 Bryan Fein. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var scrollView: UIScrollView!
    var images = [UIImageView]()
    
 
    override func viewDidLoad() {
        super.viewDidLoad()
        

    }
   
    
    
    override func viewDidAppear(_ animated: Bool) {
        
        
        var contentWidth: CGFloat = 0.0
        
        let scrollWidth = scrollView.frame.size.width
        
        for x in 0...2 {
            let image = UIImage(named: "icon\(x).png") // Decalred imags; x repersents the number after the name ie: icon2.png
            let imageView = UIImageView(image: image) // created a constant that is assigned the images
            images.append(imageView) // appending all the images (imageview) to images(array)
            
            
            var newX: CGFloat = 0.0 // newX is type CGFloat assigned to 0.0
            
            newX = scrollWidth / 2 + scrollWidth * CGFloat(x) // (in the scrollview, take the frame and find the mid x coordinate, middle of the frame) + (in the scrollview, take the frame, and measure its full size and mutiply it by the index)
            
            contentWidth += newX
            
            
            scrollView.addSubview(imageView)
            
            imageView.frame = CGRect(x: newX - 75, y: (scrollView.frame.size.height/2) - 75, width: 150, height: 150)
        }
        
        scrollView.clipsToBounds = false
        
        scrollView.contentSize = CGSize(width: contentWidth, height: view.frame.size.height)
        

        
        
        
        
    }
    

    
    
}

