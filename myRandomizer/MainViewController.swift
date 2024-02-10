//
//  ViewController.swift
//  myRandomizer
//
//  Created by Анна on 11.02.2024.
//

import UIKit

final class MainViewController: UIViewController {
    
    @IBOutlet weak var minimumValueLabel: UILabel!
    @IBOutlet weak var maximumValueLabel: UILabel!
    @IBOutlet weak var randomValueLabel: UILabel!
    @IBOutlet weak var getResultButton: UIButton!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        getResultButton.layer.cornerRadius = 15
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let settingsViewController = segue.destination as? SettingsViewController
        
        settingsViewController?.minimumValue = minimumValueLabel.text ?? ""
        settingsViewController?.maximumValue = maximumValueLabel.text ?? ""
    }
    
    @IBAction func pressedResultButton() {
        let minimumValue = Int(minimumValueLabel.text ?? "") ?? 0
        let maximumValue = Int(maximumValueLabel.text ?? "") ?? 100
        
        randomValueLabel.text = String(Int.random(in: minimumValue...maximumValue))
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        let settingsViewController = segue.source as? SettingsViewController
        
        minimumValueLabel.text = settingsViewController?.minimumValueTextField.text
        maximumValueLabel.text = settingsViewController?.maximumValueTextField.text
    }
}

