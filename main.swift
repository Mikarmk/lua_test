import UIKit

struct Person {
    var name: String
    var age: Int
    
    func sayHello() {
        print("Привет, меня зовут (name) и мне (age) лет.")
    }
}

class MainViewController: UIViewController {
    
    var greetingLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        greetingLabel = UILabel(frame: CGRect(x: 100, y: 100, width: 200, height: 50))
        greetingLabel.textColor = .black
        greetingLabel.textAlignment = .center
        
        self.view.addSubview(greetingLabel)
        
        let person = Person(name: "Вася", age: 25)
        
        person.sayHello()
        
        greetingLabel.text = "Привет, меня зовут (person.name)"
    }
    
    func addNumbers(numberOne: Int, numberTwo: Int) -> Int {
        return numberOne + numberTwo
    }
}

let mainVC = MainViewController()

let sum = mainVC.addNumbers(numberOne: 3, numberTwo: 5)
print("Сумма: (sum)")