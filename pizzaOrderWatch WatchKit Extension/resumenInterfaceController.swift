//
//  resumenInterfaceController.swift
//  pizzaOrderWatch
//
//  Created by Marco Del Angel on 03/09/16.
//  Copyright © 2016 Marco Del Angel. All rights reserved.
//

import WatchKit
import Foundation


class resumenInterfaceController: WKInterfaceController {
    
    var tamaño : String = ""
    var masa : String = ""
    var queso : String = ""
    var ingredientes : [String] = []

    @IBOutlet var tamañolLabel: WKInterfaceLabel!
    @IBOutlet var masaLabel: WKInterfaceLabel!
    @IBOutlet var quesoLabel: WKInterfaceLabel!
    @IBOutlet var ingredientesLabel: WKInterfaceLabel!
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        let c = context as! pizza
        self.tamaño = c.tamaño
        self.masa = c.masa
        self.queso = c.queso
        self.ingredientes = c.ingredientes
        print (self.tamaño, self.masa, self.queso, self.ingredientes)
        
        self.tamañolLabel.setText(self.tamaño)
        self.masaLabel.setText(self.masa)
        self.quesoLabel.setText(self.queso)
        
        var arrayToString:String = ""
        
        for n in 0 ..< self.ingredientes.count{
            if (n < self.ingredientes.count){
                arrayToString += " \(self.ingredientes[n])"
            }
        }
        
        self.ingredientesLabel.setText(arrayToString)
        
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

    @IBAction func ordenarPizza() {
        
        let valorContexto = pizza(t: self.tamaño, m: self.masa, q: self.queso, i: self.ingredientes)
        pushControllerWithName("salida", context: valorContexto)
        
    }
}
