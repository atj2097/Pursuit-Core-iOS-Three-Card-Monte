

import UIKit

class ViewController: UIViewController {
    var wins = 0
    var loses = 0
    @IBOutlet weak var winnerScoreBoard: UITextField!
    @IBOutlet weak var loserScoreBoard: UITextField!
    
    let kingCard =  UIImage(named: "kingCard")
    let threeCard = UIImage(named: "threeCard")
    let redCard = UIImage(named:"cardBackRed")
    
    @IBOutlet weak var firstCard: UIButton!
    @IBOutlet weak var secondCard: UIButton!
    @IBOutlet weak var thirdCard: UIButton!
    
    @IBOutlet weak var score: UITextField!
    
    let randomCards = ["kingCard","threeCard"]
    
   
    
    func win(){
         self.view.backgroundColor = UIColor.green
        wins += 1
        winnerScoreBoard.text = String(wins)
    }
    func lose(){
        self.view.backgroundColor = UIColor.red
        loses += 1
        loserScoreBoard.text = String(loses)
    }
    func reset(){
        self.view.backgroundColor = UIColor.purple
    }
    
    func isDisabled(){
        firstCard.isEnabled = false
        secondCard.isEnabled = false
        thirdCard.isEnabled = false
    }
    
    
    
    @IBAction func newGame(_ sender: UIButton) {
        firstCard.setImage(redCard, for: UIControl.State.normal)
        secondCard.setImage(redCard, for: UIControl.State.normal)
        thirdCard.setImage(redCard, for: UIControl.State.normal)
        reset()
        score.text = "Pick a card, any card"
        
        firstCard.isEnabled = true
        secondCard.isEnabled = true
        thirdCard.isEnabled = true
    }
    
    
    
    @IBAction func firstCard(_ sender: UIButton) {
        let firstRandom = randomCards.randomElement()
        
        switch firstRandom{
        case "kingCard":
            firstCard.setImage(kingCard, for: UIControl.State.normal)
            secondCard.setImage(threeCard, for: UIControl.State.normal)
            thirdCard.setImage(redCard, for: UIControl.State.normal)
            win()
            score.text = "YOU WIN"
            isDisabled()
        case "threeCard":
            firstCard.setImage(threeCard, for: UIControl.State.normal)
            secondCard.setImage(kingCard, for: UIControl.State.normal)
            thirdCard.setImage(redCard, for: UIControl.State.normal)
       lose()
            score.text = "YOU LOSE"
          isDisabled()
        default:
            firstCard.setImage(redCard, for: UIControl.State.normal)
            secondCard.setImage(threeCard, for: UIControl.State.normal)
            thirdCard.setImage(kingCard, for: UIControl.State.normal)
           lose()
            score.text = "YOU LOSS"
             loses += 1
          isDisabled()
        }
    }
    @IBAction func secondCard(_ sender: UIButton) {
        
        let seconRandom = randomCards.randomElement()
        
        switch seconRandom{
        case "kingCard":
            firstCard.setImage(threeCard, for: UIControl.State.normal)
            secondCard.setImage(kingCard, for: UIControl.State.normal)
            thirdCard.setImage(redCard, for: UIControl.State.normal)
            win()
            score.text = "YOU WIN"
            
           isDisabled()
        case "threeCard":
            firstCard.setImage(kingCard, for: UIControl.State.normal)
            secondCard.setImage(redCard, for: UIControl.State.normal)
            thirdCard.setImage(threeCard, for: UIControl.State.normal)
            lose()
            score.text = "YOU LOSE"
            
        isDisabled()
        default:
            firstCard.setImage(redCard, for: UIControl.State.normal)
            secondCard.setImage(threeCard, for: UIControl.State.normal)
            thirdCard.setImage(kingCard, for: UIControl.State.normal)
            lose()
            score.text = "YOU LOSE"
            
           isDisabled()
        }
    }
    
    @IBAction func thirdCard(_ sender: UIButton) {
        let thirdRandom = randomCards.randomElement()
        
        switch thirdRandom{
        case "kingCard":
            firstCard.setImage(redCard, for: UIControl.State.normal)
            secondCard.setImage(threeCard, for: UIControl.State.normal)
            thirdCard.setImage(kingCard, for: UIControl.State.normal)
            win()
            score.text = "YOU WIN"
            
           isDisabled()
        case "threeCard":
            firstCard.setImage(threeCard, for: UIControl.State.normal)
            secondCard.setImage(kingCard, for: UIControl.State.normal)
            thirdCard.setImage(redCard, for: UIControl.State.normal)
            lose()
            score.text = "YOU LOSE"
            
          isDisabled()
        default:
            firstCard.setImage(redCard, for: UIControl.State.normal)
            secondCard.setImage(kingCard, for: UIControl.State.normal)
            thirdCard.setImage(threeCard, for: UIControl.State.normal)
           lose()
            score.text = "YOU LOSE"
            
         isDisabled()
        }
    }
    
    
    @IBAction func resetScoreBoard(_ sender: UIButton) {
         wins = 0
         loses = 0
        loserScoreBoard.text = String(loses)
        winnerScoreBoard.text = String(wins)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
}




