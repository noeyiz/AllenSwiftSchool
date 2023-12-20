//
//  ViewController.swift
//  TextFieldProject
//
//  Created by jiyeon on 12/20/23.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textField.delegate = self // ViewController
        setup()
    }
    
    func setup() {
        view.backgroundColor = .gray
        
        textField.keyboardType = .emailAddress
        textField.placeholder = "이메일 입력"
        textField.clearButtonMode = .always
        textField.returnKeyType = .done
        
        textField.becomeFirstResponder()
    }
    
    // 화면의 탭을 감지하는 메서드
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        if Int(string) != nil { // "숫자"를 허용하지 않음
            return false
        } else {
            guard let text = textField.text else { return true }
            let newLength = text.count + string.count - range.length
            return newLength <= 10 // 10자 이상 입력 막음
        }
    }

    @IBAction func doneButtonTapped(_ sender: UIButton) {
        textField.resignFirstResponder()
    }
    
}

