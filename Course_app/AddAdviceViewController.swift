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
    var favorites : String = ""

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
    
    @IBOutlet weak var favoriteAdvices: UILabel!
    
    @IBOutlet weak var savedAdvices: UILabel!
    @IBAction func buttonAddTapped(_ sender: Any) {
       
        
        
                savedAdvices.text = dataFromPreviousViewController
        favorites.append(dataFromPreviousViewController)
        favoriteAdvices.text! = favorites
       
            
        //    = NewAdviceService.randomSovet()
     //   adviceLabel.text = sovet
        
    
    
    }
    
    
    
    
  
    
}
