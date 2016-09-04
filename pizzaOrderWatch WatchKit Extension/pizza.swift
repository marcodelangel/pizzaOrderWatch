//
//  queso.swift
//  pizzaOrderWatch
//
//  Created by Marco Del Angel on 03/09/16.
//  Copyright © 2016 Marco Del Angel. All rights reserved.
//

import WatchKit

class pizza: NSObject {
    
    var tamaño : String = ""
    var masa : String = ""
    var queso : String = ""
    var ingredientes :  [String] = []
    
    init (t:String, m:String, q:String, i:[String])
    {
        tamaño = t
        masa = m
        queso = q
        ingredientes = i
    }

}
