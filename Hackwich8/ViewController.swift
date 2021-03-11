//
//  ViewController.swift
//  Hackwich8
//
//  Created by User on 3/9/21.
//

/*import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var slider: UISlider!
    
    var currentValue = 50
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        currentValue = Int(slider.value)
    }
    
    
    @IBAction func sliderHasMoved(_ sender: Any) {
        
        print("The value of the slider is: \(slider.value)")
        
        currentValue = Int(slider.value)
        
    }
    
    @IBAction func myGuessButtonPressed(_ sender: Any) {
        
        let message = "The value is \(currentValue)"
        
        let alert = UIAlertController(title: "Hello World!", message: message, preferredStyle: .alert)
        
        let action = UIAlertAction(title: "Awesome", style: .default, handler: nil)
        
        alert.addAction(action)
        
        present(alert, animated: true, completion: nil)
    }
    
}*/

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var slider: UISlider!
    
    var currentValue = 0
    
    var targetValue = 0
    
    @IBOutlet weak var targetValueLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    
        slider.value = 50
        
        currentValue = Int(slider.value)
        
        startNewRound()
    }

    
    @IBAction func sliderHasMoved(_ sender: Any) {
        
        print("The value of the slider is: \(slider.value)")
        
        currentValue = Int(slider.value)
        
        //targetValue = Int.random(in: 0...100)
    
    }
    
    func startNewRound(){
        
        targetValue = Int.random(in: 0...100)
        
        currentValue = Int(slider.value)
        
        updateTargetLabel()
    
    }

    @IBAction func myGuessButtonPressed(_ sender: Any) {
        
        let message = "Your guess is \(currentValue)" + "\n Your target value for this round was \(targetValue)"
        
        let alert = UIAlertController(title: "Guess the Number Game", message: message , preferredStyle: .alert)
        
        let action = UIAlertAction(title: "New Round", style: .default, handler: nil)
        
        alert.addAction(action)
        
        present(alert, animated: true, completion: nil)
        
        startNewRound()
    
        
    }
    
    func updateTargetLabel(){
        
        targetValueLabel.text = String(targetValue)
        
    }
}



