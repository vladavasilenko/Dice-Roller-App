//
//  .randomElement()
//

import UIKit

class ViewController: UIViewController {
    
    var leftDiceNumber = 1
    var rightDiceNumber = 5

    @IBOutlet weak var diceImageViewTwo: UIImageView!
    
    @IBOutlet weak var diceImageViewOne: UIImageView!
  
  
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        
        var diceArray = [UIImage(named: "DiceOne"), UIImage(named: "DiceTwo"), UIImage(named: "DiceThree"), UIImage(named: "DiceFour"), UIImage(named: "DiceFive"), UIImage(named: "DiceSix")]
        //var leftDiceNumber = 1 // цикл при нажатии повторяется
        // leftDiceNumber = 1
        print("leftDiceNumber at beginning = \(leftDiceNumber)") // проверка
        print("Button got trapped")
        diceImageViewOne.image = diceArray[Int.random(in: 0...5)]
        
        leftDiceNumber += 1
        print("leftDiceNumber at the end = \(leftDiceNumber)")
        //leftDiceNumber = 2
        
        diceImageViewTwo.image = diceArray[Int.random(in: 0...5)]
        rightDiceNumber -= 1
    }
    
    
}
