//
//  ingredientesInterfaceController.swift
//  pizzaOrderWatch
//
//  Created by Marco Del Angel on 03/09/16.
//  Copyright © 2016 Marco Del Angel. All rights reserved.
//

import WatchKit
import Foundation


class ingredientesInterfaceController: WKInterfaceController {
    
    var tamaño : String = ""
    var masa : String = ""
    var queso : String = ""
    var ingredientes : [String] = []
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        let c = context as! pizza
        self.tamaño = c.tamaño
        self.masa = c.masa
        self.queso = c.queso
        print (self.tamaño, self.masa, self.queso)
        
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
    @IBAction func jamon(value: Bool) {        
        if value == true {
            self.ingredientes.append("Jamón")
        }
    }

    @IBAction func pepperoni(value: Bool) {
        if value == true {
            self.ingredientes.append("Pepperoni")
        }
    }
    @IBAction func pavo(value: Bool) {
        if value == true {
            self.ingredientes.append("Pavo")
        }
    }
    @IBAction func salchicha(value: Bool) {
        if value == true {
            self.ingredientes.append("Salchicha")
        }
    }
    @IBAction func aceituna(value: Bool) {
        if value == true {
            self.ingredientes.append("Aceituna")
        }
    }
    
    @IBAction func agregarIngredientes() {
      
        let valorContexto = pizza(t: self.tamaño, m: self.masa, q: self.queso, i: self.ingredientes)
        pushControllerWithName("resumen", context: valorContexto)
        
    }
}
