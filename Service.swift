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
                let id = partRawJs["id"] as? Int
                let text = partRawJs["text"] as? String
                let stat = partRawJs["stat"] as? Int
                let sound = partRawJs["sound"] as? String
                
                if let idObj = id, let textObj = text, let statObj = stat, let soundObj = sound
                {
                    var newId = idObj as Int
                    var newText = textObj as String
                    var newStat = statObj as Int
                    var newSound = soundObj as String
                    
                    print(newId,newText,newStat,newSound)
                }
                //    var textNew = ""
                
                //    if let newO = partRawJs["text"] as? String
                //    {
                //      textNew = newO
                //     print(textNew) }
                
                
            }
        }
        return [Advice]()
    }
}
