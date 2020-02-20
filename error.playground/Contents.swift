import UIKit

var str = "Hello, playground"



struct Item {
    var price: Int
    var count: Int
}

enum VendingMachineError: Error {
    case invalidSelection
    case insufficientFunds(coinsNeeded: Int)
    case outOfStock
}


class VendingMachine {
    var inventory = [
        "Candy Bar": Item(price: 12, count: 7),
        "Chips": Item(price: 10, count: 4),
        "Pretzels": Item(price: 7, count: 21)
    ]
    var coinsDeposited = 0
    
    func vend(itemNamed name: String) throws {
        
        defer {
            print("推出清理")
        }
        
        print("开始售卖")
        
        guard let item = inventory[name] else {
            throw VendingMachineError.invalidSelection
        }
        guard item.count > 0 else {
            throw VendingMachineError.outOfStock
        }
        guard item.price < coinsDeposited else {
            throw VendingMachineError.insufficientFunds(coinsNeeded: item.price - coinsDeposited)
        }
        coinsDeposited -= item.price
        
        var newItem = item
        newItem.count -= 1
        inventory[name] = newItem
        
        print("Dispensing \(name)")
    }
}


var machine = VendingMachine()
machine.coinsDeposited = 5

do {
    try machine.vend(itemNamed: "Chips")
} catch VendingMachineError.invalidSelection {
    print("no such thing")
} catch VendingMachineError.insufficientFunds(let coinsNeeded) {
    print("you need more coins: \(coinsNeeded)")
} catch VendingMachineError.outOfStock {
    print("out of stock")
} catch {
    print("unexpected")
}



