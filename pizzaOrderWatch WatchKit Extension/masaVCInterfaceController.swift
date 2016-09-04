//
//  quesoVCInterfaceController.swift
//  pizzaOrderWatch
//
//  Created by Marco Del Angel on 03/09/16.
//  Copyright © 2016 Marco Del Angel. All rights reserved.
//

import WatchKit
import Foundation


class masaVCInterfaceController: WKInterfaceController {
    
    var tamaño : String = ""

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        let c = context as! pizza
        self.tamaño = c.tamaño
        print (self.tamaño)
        
        
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    @IBAction func delgada() {
        let valorContexto = pizza(t: self.tamaño, m: "Delgada", q: "", i: [])
        pushControllerWithName("queso", context: valorContexto)
    }
    @IBAction func crujiente() {
        let valorContexto = pizza(t: self.tamaño, m: "Crujiente", q: "", i: [])
        pushControllerWithName("queso", context: valorContexto)
    }
    @IBAction func gruesa() {
        let valorContexto = pizza(t: self.tamaño, m: "Gruesa", q: "", i: [])
        pushControllerWithName("queso", context: valorContexto)
    }
}
