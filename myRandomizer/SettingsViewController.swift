//
//  SettingsViewController.swift
//  myRandomizer
//
//  Created by Анна on 11.02.2024.
//

import UIKit

final class SettingsViewController: UIViewController {
    
    @IBOutlet weak var minimumValueTextField: UITextField!
    @IBOutlet weak var maximumValueTextField: UITextField!
    
    @IBOutlet weak var saveButton: UIButton!
    @IBOutlet weak var cancelButton: UIButton!
    
    var minimumValue: String = ""
    var maximumValue: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        saveButton.layer.cornerRadius = 10
        cancelButton.layer.cornerRadius = 10
        
        minimumValueTextField.text = minimumValue
        maximumValueTextField.text = maximumValue
    }
    
    @IBAction func pressedCancelButton() {
        dismiss(animated: true)
    }
}
