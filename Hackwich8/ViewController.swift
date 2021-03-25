//
//  ViewController.swift
//  Hackwich8
//
//  Created by User on 3/9/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var slider: UISlider! //This IBOutlet corresponds with the slider.
    
    var currentValue = 25 //This variable sets currentValue to 25.
    
    var targetValue = 0 //This variable sets targetValue to 0.
    
    @IBOutlet weak var targetValueLabel: UILabel! //This IBOutlet corresponds with the label for targetValue.
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        slider.value = 50 //Sets the slider's initial value to 50 when the app first loads.
        
        currentValue = Int(slider.value) //Sets slider.value to an integer to make it the same data type as currentValue.
        
        targetValue = Int.random(in: 0...100) //Sets targetValue to a random integer within the range of 0 to 100.
        
        startNewRound() //Calls the function startNewRound (see below).
        
        let thumbImageNormal = UIImage(named:"SliderThumb-Normal") //This constant variable sets the slider's thumb icon to the image in our Assets folder, "SliderThumb-Normal".
        
        slider.setThumbImage(thumbImageNormal, for: .normal) //Sets the thumb image to the state "normal".
        
    }

    
    @IBAction func sliderHasMoved(_ sender: Any){ //This IBAction corresponds with the slider.
        
        print("The value of the slider is: \(slider.value)") //When the slider is moved, the new value of the slider will print in the console.
        
        currentValue = Int(slider.value) //Sets slider.value to an integer to make it the same data type as currentValue.
    
    }
    
    func startNewRound(){ //This states the function startNewRound (as mentioned previously).
        
        targetValue = Int.random(in: 0...100) //Sets targetValue to a random integer within the range of 0 to 100.
        
        currentValue = Int(slider.value) //Sets slider.value to an integer to make it the same data type as currentValue.
        
        updateTargetLabel() //Calls the function updateTargetLabel (see below).
    
    }

    @IBAction func myGuessButtonPressed(_ sender: Any) { //This IBAction corresponds with the "My Guess" button.
        
        let message = "Your guess is \(currentValue)" + "\n Your target value for this round was \(targetValue)" //This constant variable displays its text in the alert message.
        
        let alert = UIAlertController(title: "Guess the Number Game", message: message , preferredStyle: .alert) //This constant variable creates a new alert.
        
        let action = UIAlertAction(title: "New Round", style: .default, handler: nil) //This constant variable creates a "New Round" button for users to select to dismiss the alert.
        
        alert.addAction(action) //Adds the button to the alert.
        
        present(alert, animated: true, completion: nil) //Presents the alert.
        
        startNewRound() //Calls the function startNewRound.
        
    }
    
    func updateTargetLabel(){ //This states the function updateTargetLabel (as mentioned previously).
        
        targetValueLabel.text = String(targetValue) //Each time the startNewRound function runs, the targetValueLabel will update its text to display a new targetValue which is converted to data type String.
        
    }
}



