//
//  quesoInterfaceController.swift
//  pizzaOrderWatch
//
//  Created by Marco Del Angel on 03/09/16.
//  Copyright © 2016 Marco Del Angel. All rights reserved.
//

import WatchKit
import Foundation


class quesoInterfaceController: WKInterfaceController {
    
    var tamaño : String = ""
    var masa : String = ""
    

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        let c = context as! pizza
        self.tamaño = c.tamaño
        self.masa = c.masa
        print (self.tamaño, self.masa)
        
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    @IBAction func mozarela() {
        let valorContexto = pizza(t: self.tamaño, m: self.masa, q: "Mozarela", i: [])
        pushControllerWithName("ingredientes", context: valorContexto)
    }
    @IBAction func cheddar() {
        let valorContexto = pizza(t: self.tamaño, m: self.masa, q: "Cheddar", i: [])
        pushControllerWithName("ingredientes", context: valorContexto)
    }
    @IBAction func parmesano() {
        let valorContexto = pizza(t: self.tamaño, m: self.masa, q: "Parmesano", i: [])
        pushControllerWithName("ingredientes", context: valorContexto)
    }
    @IBAction func sinQueso() {
        let valorContexto = pizza(t: self.tamaño, m: self.masa, q: "Sin Queso", i: [])
        pushControllerWithName("ingredientes", context: valorContexto)
    }
}
