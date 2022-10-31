import UIKit

/*
 try-catch 문 - 에러 처리를 위한 구문
 */


struct Pizza {
    let dough: String
    let toppings: [String]
}
enum PizzaBuilderError: Error {
    case doughtBurnt
    case noToppings(String)
}


struct PizzzaBuilder {
    
    func prepare() -> Pizza? {
        
        do {
            let dough = try prepareDoguh()
            // 밑의 함수 가져와서 사용 가능 (propagation)
            let toppings = try prepareToppings()
            // return pizza
            return Pizza(dough: dough, toppings: toppings)
        } catch {
            print("Unable to prepare pizza")
            return nil
        }
    }
    
    private func prepareDoguh() throws -> String {
        // prepare the dough
        
        throw PizzaBuilderError.doughtBurnt
    }
    
    private func prepareToppings() throws -> [String] {
        // prepare the toppings
        throw PizzaBuilderError.noToppings("Chicken and Onions are missing!")
    }

}
