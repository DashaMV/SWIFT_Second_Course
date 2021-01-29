//
//  LoginViewController.swift
//  VK_Daria
//
//  Created by Dasha Marchenko on 30.12.2020.
//

import UIKit

class LoginViewController: UIViewController {
    
    
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var PasswordTextField: UITextField!
    @IBOutlet weak var LoginTextField: UITextField!
    @IBOutlet weak var LoginLabel: UILabel!
    @IBOutlet weak var PasswordLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(didtapOnScroll))
        view.addGestureRecognizer(tapGesture)
        view.isUserInteractionEnabled = true

        
        //скроллвью активируем при показе клавиатуры - нам понадобится Notification center
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow(notification:)), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide(notification:)), name: UIResponder.keyboardWillHideNotification, object: nil)
    }
    
    @IBAction func unwindSegueDidTap (_ segue: UIStoryboardSegue){
        print("I'm back")
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        
      let result = checkUserCredentials()
        if !result {
            showAlert()
        }
        return result
    }
    
    
    
    func checkUserCredentials()->Bool{
        LoginTextField.text! == "admin" && PasswordTextField.text! == "12345"
    }
    
   
    
    func showAlert() {
        let alert = UIAlertController(title: "Error", message: "Wrong credentials! True credentials is Login: admin, Password: 12345 :) Try again, dear friend! ;)", preferredStyle: .alert)
        let alertAction = UIAlertAction(title: "Ok", style: .default, handler: nil)
        alert.addAction(alertAction)
        present(alert, animated: true, completion: nil)
    }
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        switch segue.identifier {
        case "to_checkData_vc":
            if let destination = segue.destination as? CheckDataViewController {
                destination.textForLabel = LoginTextField.text!
                destination.textForSecondLabel = PasswordTextField.text!
            }
            
        default:
            break
        }
    }
    
    
    
    
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
    }
    
    @objc func keyboardWillShow(notification: Notification){
        guard let kbSize = notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? CGRect else {return}
        let insets = UIEdgeInsets(top: 0, left: 0, bottom: kbSize.size.height, right: 0)
        scrollView.contentInset = insets
    }
    
    
    @objc func keyboardWillHide(notification: Notification){
        let insets = UIEdgeInsets.zero
        scrollView.contentInset = insets
        
    }
    
    
    @objc func didtapOnScroll() {
        view.resignFirstResponder()
    }
    
    

    @IBAction func didTapButton(_ sender: UIButton) {
       print("Нажата кнопка Next")
        //при нажатии на кнопку меняется текст лейбла логина
        //LoginLabel.text = "Добро пожаловать!"
        //PasswordLabel.text = "VK приветствует тебя!"
        
       
        
        //сегу нужно перейти на след экран
        //performSegue(withIdentifier: "to_tabbar_screen", sender: nil)
        
       // let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        //вытаскиваем наш вьюконтроллер
       //let destinationViewController = storyBoard.instantiateViewController(withIdentifier: "TabBar")
        //present(destinationViewController, animated: true, completion: nil)
        
        //4 способ перехода на др экран переходим на экран таббара
      //navigationController?.pushViewController(TabBarController(), animated: true)
       
    }
    
}
