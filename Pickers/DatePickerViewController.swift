//
//  DatePickerViewController.swift
//  Pickers
//
//  Created by Christopher D Fontana on 2/22/17.
//  Copyright © 2017 Christopher D Fontana. All rights reserved.
//

import UIKit

class DatePickerViewController: UIViewController {

    @IBOutlet weak var datePicker: UIDatePicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // creates a new NSDate object to make sure the current timea nd date loads each time
        let date = NSDate()
        datePicker.setDate(date as Date, animated: false)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func onButtonPressed(_ sender: Any) {
        let date = datePicker.date
        let message = "The date and time you selected is \(date)"
        
        let alert = UIAlertController(title: "Date and Time Seleted", message: message, preferredStyle: .alert)
        let action = UIAlertAction(title: "That's so True!", style: .default, handler: nil)
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }
}
