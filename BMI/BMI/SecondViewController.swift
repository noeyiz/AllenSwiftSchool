//
//  SecondViewController.swift
//  BMI
//
//  Created by jiyeon on 1/4/24.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var bmiNumberLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    @IBOutlet weak var backButton: UIButton!
    
    var bmiNumber: Double?
    var bmiColor: UIColor?
    var adviceString: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        makeUI()
    }
    
    func makeUI() {
        bmiNumberLabel.clipsToBounds = true
        bmiNumberLabel.layer.cornerRadius = 10
        bmiNumberLabel.backgroundColor = .gray
        
        backButton.clipsToBounds = true
        backButton.layer.cornerRadius = 10
        backButton.setTitle("다시 계산하기", for: .normal)
        
        guard let bmi = bmiNumber else { return }
        bmiNumberLabel.text = String(bmi)
        bmiNumberLabel.backgroundColor = bmiColor
        adviceLabel.text = adviceString
    }
    
    @IBAction func backButtonTapped(_ sender: UIButton) {
        dismiss(animated: true)
    }
    
}
