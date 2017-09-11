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
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
       /* navigationItem.leftBarButtonItem = UIBarButtonItem(title: "< Back", style: .plain, target: self, action: #selector(backAction))*/
    }
    
    @IBAction func cancelButtonTapped(_ sender: Any) {
        
        backAction()
    }
    
    func backAction(){
        //print("Back Button Clicked")
        dismiss(animated: true, completion: nil)
    }
    
}
