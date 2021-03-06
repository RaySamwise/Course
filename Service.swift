//
//  Service.swift
//  Course_app
//
//  Created by Ray on 31/08/2017.
//  Copyright © 2017 RayTo. All rights reserved.
//

import Foundation
class Service {
    
    var advices: [AdviceStruct]! = [AdviceStruct]()
    
    init() {
        advices = loadAdvices(fileName: "advices", ext: "json")
        
    }
    func loadAdvices(fileName : String, ext : String) -> [AdviceStruct]
    {
        let path =  Bundle.main.path(forResource: fileName, ofType: ext)
        guard let resourcePath = path else  {
            
            return [AdviceStruct]()
            
        }
        let url = URL(fileURLWithPath:resourcePath)
        guard let data = try? Data(contentsOf: url)
            else {
                return [AdviceStruct]()
                
        }
        print(data)
        
        
        
        
        if  let rawJs =  try? JSONSerialization.jsonObject(with: data) as? [[String: Any]]
        {
            var newArr = [AdviceStruct]()
            for var partRawJs in rawJs!
            {
                let id = Int((partRawJs["identifier"] as? String)!)
                let text = partRawJs["text"] as? String
                let stat = Int((partRawJs["stat"] as? String)!)
                let sound = partRawJs["sound"] as? String
                
                if let idObj = id, let textObj = text, let statObj = stat, let soundObj = sound
                {
                    var newId = idObj as Int
                    var newText = textObj as String
                    var newStat = statObj as Int
                    var newSound = soundObj as String
                    newArr.append(AdviceStruct(id: newId, text: newText, state: newStat, sound: newSound))
                    print(newArr)
                  
                }

                
                
            }
            return newArr
        }
        
        return [AdviceStruct]()
    }
    func randomSovet() -> String
    {
        let randomIndex = Int(arc4random_uniform(UInt32(advices.count)))
        print(advices.count)
         return advices[randomIndex].text
       
        
    }
    
    
}
