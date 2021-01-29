//
//  CheckDataViewController.swift
//  VK_Daria
//
//  Created by Dasha Marchenko on 03.01.2021.
//

import UIKit

class CheckDataViewController: UIViewController {

    @IBOutlet private weak var emailLabel: UILabel!
    
    
    @IBOutlet weak var passwordLabel: UILabel!
    
    
    
    public var textForLabel: String!
    public var textForSecondLabel: String!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        emailLabel.text = textForLabel
        passwordLabel.text = textForSecondLabel
    }
    

    @IBAction func dismissButtonDidTap(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
}
