import Foundation

class AClass {
    var attA = "Hello AClass"
    func printAttA() {
        print(attA)
    }
    var delegate: AClassDelegate?
}

protocol AClassDelegate {
    var attB: String {get set}
    func doSomething()
}

class BClass: AClassDelegate {
    var attB = "Hello BClass"
    func doSomething() {
        print(attB)
    }
}

let objA = AClass()
let objB = BClass()
objA.delegate = objB
objA.delegate?.doSomething()
objA.delegate?.attB = "I am using delegate design pattern"
objA.delegate?.doSomething()
objB.doSomething()
objB.attB = "I've changed attB"
objB.doSomething()
objA.delegate?.doSomething()
