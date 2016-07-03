import UIKit

// Podemos declarar uma classe desta forma.
public class Person : NSObject , Positivable {
    
    var name: String?
    
    var age: Int = 0 {
        willSet(newValue) {
            if newValue > 11 && name != nil {
                name = "teenager \(name!)"
            }
            if newValue > 18 && name != nil {
                name = "adult \(name!)"
            }
        }
    }
    
    private(set) var createdAt = NSDate()
    
    var yearOfBirth: Int {
        let components = NSCalendar.currentCalendar().components(.Year, fromDate: NSDate())
        return components.year - age
    }
    
    // A função init permite a inicialização correta de objetos provenientes das classes.
    init(printWhat: String) {
        print(printWhat)
        name = "John"
        super.init()
    }
    
    // Podemos criar inicializadores mais convenientes, para facilitar a inicialização.
    convenience override init() {
        self.init(printWhat: "Boo Yah!")
    }
    
    // Um método de classe
    class func typeMethod() {
        
    }
    
    // Um método
    func aMethod() {
        
        let c = Car()
        
        c.drive({
            print("done driving")
        })
        
        c.drive() {
            print("closures rock")
        }
        
    }
    
    // Um método público que retorna
    public func aMethodThatReturns() -> Bool {
        return true
    }
    
    // Um método interno com parâmetro que retorna uma tupla
    internal func aMethod(havingParameter: Int) -> (one: String, two: Float) {
        return ("Tuples", 1.22)
    }
    
    // Um método privado com parâmetro nomeado diferente do nome interno
    private func aMethod(havingParameterName parameter: String) {
        
    }
    
    // Um método com parâmetro nomeado igual ao nome interno
    func aMethod(havingSameParameterName havingSameParameterName: Double) {
        // Somente membros desta classe poderão chamar a função privada.
        self.aMethod(havingParameterName: "Parameter")
    }
    
    // Um método com parâmetros, sendo o segundo externamente nomeado por padrão
    func aMethod(havingParameter: Float, andOtherImplicitParameterName: [Int]) {
        
    }
    
    // Um método com parâmetros, sendo o nome padrão do segundo ignorado
    func aMethod(havingParameter: [String:String], _ ignoringImplicitParameterName: Int) {
        
    }
    
    // Override explícito de método de uma superclasse.
    override public func select(sender: AnyObject!) {
        // Faça o override aqui.
    }
    
    func isPositive(theNumber: Int) -> Bool {
        return theNumber.isPositive()
    }
    
}

protocol Positivable {
    func isPositive(theNumber: Int) -> Bool
}

extension Int {
    
    func isPositive() -> Bool {
        return self > 0
    }
    
}

class Car {
    
    func drive(finished: ()->()) {
        print("Driving")
        finished()
    }
    
}
