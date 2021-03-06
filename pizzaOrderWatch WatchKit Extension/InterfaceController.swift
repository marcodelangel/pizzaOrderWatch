//
//  InterfaceController.swift
//  pizzaOrderWatch WatchKit Extension
//
//  Created by Marco Del Angel on 03/09/16.
//  Copyright © 2016 Marco Del Angel. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
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

    @IBAction func chica() {
        
        let valorContexto = pizza(t: "Chica", m: "", q: "", i: [])
        pushControllerWithName("masa", context: valorContexto)
        
    }
    
    @IBAction func mediana() {
        
        let valorContexto = pizza(t: "Mediana", m: "", q: "", i: [])
        pushControllerWithName("masa", context: valorContexto)
    }
    
    @IBAction func grande() {
        let valorContexto = pizza(t: "Grande", m: "", q: "", i: [])
        pushControllerWithName("masa", context: valorContexto)
    }

}
