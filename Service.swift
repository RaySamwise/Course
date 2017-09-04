//
//  Service.swift
//  Course_app
//
//  Created by Ray on 31/08/2017.
//  Copyright © 2017 RayTo. All rights reserved.
//

import Foundation
class Service {
    
    var advices: [Advice]! = [Advice]()
    
    init() {
        advices = loadAdvices(fileName: "advices", ext: "json")
        
    }
    func loadAdvices(fileName : String, ext : String) -> [Advice]
    {
        let path =  Bundle.main.path(forResource: fileName, ofType: ext)
        guard let resourcePath = path else  {
            
            return [Advice]()
            
        }
        let url = URL(fileURLWithPath:resourcePath)
        guard let data = try? Data(contentsOf: url)
            else {
                return [Advice]()
                
        }
        print(data)
      
        
        
        
      if  let rawJs =  try? JSONSerialization.jsonObject(with: data) as? [[String: Any]]
      {
   
        for var partRawJs in rawJs!
        {
            var textNew = ""
           if
                let newO = partRawJs["text"] as? String
                {
               textNew = newO
               print(textNew)
            }
        
        
        }}
     return [Advice]()
    }
}
