//
//  ViewController.swift
//  Course_app
//
//  Created by Ray on 31/08/2017.
//  Copyright © 2017 RayTo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var Outlet1: UIButton!
    //var cnt = 0
    

    @IBOutlet weak var adviceLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func ButtonTapped(_ sender: Any) {
        let NewAdviceService = Service()
       // cnt += 1
       // Label1.text = "\(cnt)";
       let sovet = NewAdviceService.randomSovet()
        adviceLabel.text = sovet
        
    }

   
   // performSegueWithIdentifier("YourSegueIdentifier", sender: nil)
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

