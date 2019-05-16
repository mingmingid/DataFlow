//
//  ViewController.swift
//  DataFlow
//
//  Created by Oey King Ming on 16/05/19.
//  Copyright © 2019 Oey King Ming. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var fullnameTextField: UITextField!
    
    @IBOutlet weak var phoneTextField: UITextField!
    
    @IBAction func registerPressed(_ sender: Any) {
        if (fullnameTextField.text == "") || (phoneTextField.text == "")  {
            let alert = UIAlertController(title: "Error", message: "All textfill must be filled", preferredStyle: .alert)
            let action = UIAlertAction(title: "OK", style: .default) {(myAlertAction) in
                alert.dismiss(animated: true, completion: nil)
            }
                
            alert.addAction(action)
            
            present(alert, animated:true, completion: nil)
        }
        else{
            performSegue(withIdentifier: "checkRegisterData", sender: self)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        if let destination = segue.destination as?
            ConfirmViewController{
            destination.fullName = fullnameTextField.text
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        fullnameTextField.delegate = self
        phoneTextField.delegate = self
    }
}

extension ViewController: UITextFieldDelegate{
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField ==  fullnameTextField {
            phoneTextField.becomeFirstResponder()
        }else if textField == phoneTextField {
            textField.resignFirstResponder()
        }
        return true
    }

}

