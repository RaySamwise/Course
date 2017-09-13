//
//  AddAdviceViewController.swift
//  Course_app
//
//  Created by Ray on 12/09/2017.
//  Copyright © 2017 RayTo. All rights reserved.
//

import UIKit
class AddAdviceViewController : ViewController
{
    
    var dataFromPreviousViewController = "123"
    
    override func viewDidLoad()
        
    {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
  
        
    }
        
      
    
    
    func backAction(){
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func cancelButtonTapped(_ sender: Any) {
    
        backAction()
    }
    
    
    @IBOutlet weak var savedAdvices: UILabel!
    @IBAction func buttonAddTapped(_ sender: Any) {
       
        
        
        
        savedAdvices.text = dataFromPreviousViewController
       
            
        //    = NewAdviceService.randomSovet()
     //   adviceLabel.text = sovet
        
    
    
    }
    
    
    
    
  
    
}
