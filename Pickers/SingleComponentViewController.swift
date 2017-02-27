//
//  SingleComponentViewController.swift
//  Pickers
//
//  Created by Christopher D Fontana on 2/22/17.
//  Copyright © 2017 Christopher D Fontana. All rights reserved.
//

import UIKit

class SingleComponentViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet weak var singlePicker: UIPickerView!
    
     let characterNames = ["Luke","Leia","Han","Chewbacca","Artoo","Threepio","Lando"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onButtonPressed(_ sender: Any) {
        
        let row = singlePicker.selectedRow(inComponent: 0)
        let selected = characterNames[row]
        let title = "You selected \(selected)!"
        let alert = UIAlertController(title: title, message: "Thank you for choosing", preferredStyle: .alert)
        let action = UIAlertAction( title: "You're welcome", style: .default, handler: nil)
        alert.addAction(action)
        present(alert,animated: true, completion: nil)
    }

    // MARK:-
    //MARK: Picker Data Source Methods
    
    // pickers can have more than one spinning wheel, or component this is how the picker asks how many to display
    // we selected 1
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    // this shows how many rows of data there are for a given component
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int{
        return characterNames.count
    }
    
    // MARK: Picker Delegate Methods 
    
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int)-> String? {
        return characterNames[row]
    }
    
}
