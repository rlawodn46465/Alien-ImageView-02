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
    var pin = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        alienImageViewer.image = UIImage(named: "frame1.png")
        //countLabel.text = String(count)
        countLabel.text = "frame\(count).png"
    }

    @IBAction func buttonPressed(_ sender: Any) {
        
        if(pin == 0){
            count+=1
            if(count == 5){
                pin = 1
            }
        }
        else {
            count-=1
            if(count == 1){
                pin = 0
            }
        }
        alienImageViewer.image = UIImage(named: "frame\(count).png")
        countLabel.text = "frame\(count).png"
        print("Button pressed!")
    }
    
}

