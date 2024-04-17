//
//  main.swift
//  Store
//
//  Created by Ted Neward on 2/29/24.
//

import Foundation
//  It should require a property name that retrieves the name of the item, and a method price that returns the price (as an Int, in USD pennies).
protocol SKU {
    var name : String { get }
    func price() -> Int
}

// Create a class Item that implements SKU and uses a price-per-item pricing scheme. That is to say, a $4.99 can of beans (an Item("Beans", 499)) or a $.99 pencil (a Item("Pencil", 99)).
// Create a unit test that tests adding a single Item to the Register and displays its subtotal (which should be the single Item's price).
class Item : SKU {
    var name : String
    var priceEach : Int
    
    init(name : String, priceEach: Int) {
        self.name = name
        self.priceEach = priceEach
    }
    
    func price() -> Int {
        return priceEach
    }
}

let yuh = Item(name: "Beans", priceEach: 499)

// The Receipt is a list of the entire transaction.
// Implement an items method that returns the list of SKUs that were scanned.
// Implement an output method to print out all of the items stored on the Receipt.
class Receipt {
    var runAmount : Int = 0
    var list : [SKU]
    func items() -> [SKU] {
        return list
    }
    func output() {
        print(list)
    }
    func total() -> Int {
        return runAmount
    }
    init(Item) {
        
    }
}

// When a Register is created, have it create a Receipt on which to capture all the items scanned.
// The Register is responsible for displaying the total along the way
// Implement a subtotal method that returns the current total for all the items on the Receipt.
// Implmement a total method that returns the Receipt (which contains all the items scanned), and clears its state to start a new Receipt. (In other words, subtotal displays the price along the way, whereas total is the finished transaction.)
class Register {
    var rec = Receipt(yuh)
    func subtotal() -> Int {
        return rec.total()
    }
    func total() -> Receipt {
        return rec.total()
    }
    func scan(_ item : SKU) {
        rec.list.append(item)
    }
}

class Store {
    let version = "0.1"
    func helloWorld() -> String {
        return "Hello world"
    }
}

// unit tests
