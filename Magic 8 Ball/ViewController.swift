//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Rezza Danial on 04/03/2018.
//  Copyright © 2018 Rezza Danial. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    
    var randomBallNumber:Int = 0

    @IBOutlet weak var imageView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
     newBallImage()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        
        newBallImage()
       }

    @IBAction func askButtonPressed(_ sender: Any) {
        
        newBallImage()
        
        }
    
    func newBallImage()
    {
        randomBallNumber = Int(arc4random_uniform(5))
        
        imageView.image = UIImage(named: ballArray[randomBallNumber])
        
    }

}
    


