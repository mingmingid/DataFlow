//
//  ConfirmViewController.swift
//  DataFlow
//
//  Created by Oey King Ming on 16/05/19.
//  Copyright © 2019 Oey King Ming. All rights reserved.
//

import UIKit

class ConfirmViewController: UIViewController {

    @IBOutlet weak var fullNameLabel: UILabel!
    
    var fullName: String!
    
    override func viewDidLoad() {
        // Do any additional setup after loading the view.
        super.viewDidLoad()
        fullNameLabel.text = fullName
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
