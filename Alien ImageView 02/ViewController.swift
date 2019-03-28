//
//  ViewController.swift
//  Alien ImageView 02
//
//  Created by dit08 on 2019. 3. 28..
//  Copyright © 2019년 dit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var alienImageViewer: UIImageView!
    @IBOutlet weak var countLabel: UILabel!
    
    var count = 1
    var track = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        alienImageViewer.image = UIImage(named: "frame1.png")
        //countLabel.text = String(count)
        countLabel.text = "frame\(count).png"
    }

    @IBAction func buttonPressed(_ sender: Any) {
        
        if(track == 0){
            count+=1
            if(count == 5){
                track = 1
            }
        }
        else {
            count-=1
            if(count == 1){
                track = 0
            }
        }
        // if(count < 5){
        // count+=1
        // }
        // else {count = 1}
        alienImageViewer.image = UIImage(named: "frame\(count).png")
        countLabel.text = "frame\(count).png"
        print("Button pressed!")
    }
    
}

