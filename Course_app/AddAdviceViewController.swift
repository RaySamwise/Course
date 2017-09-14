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
  //  var favorites : String = ""

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
        let file = "file.txt"
        let text = "555555"
        if let dir = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first {
            
            let path = dir.appendingPathComponent(file)
            do  {
                try text.write(to: path, atomically: false, encoding: String.Encoding.utf8)
            }
        }
        
        /*favorites.append(dataFromPreviousViewController)
        favoriteAdvices.text! = favorites*/
       
            
      
    
     
    }
    
    
    
    
  
    
}
