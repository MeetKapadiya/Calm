//
//  LoginViewController.swift
//  Calm
//
//  Created by Meet Kapadiya on 06/03/23.
//

import UIKit

class LoginViewController: UIViewController {
    
    
    @IBOutlet weak var forgetPasswordButton: UIButton!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var myview: UIView!
    
    @IBOutlet weak var emailTextFeild: UITextField!
    @IBOutlet weak var imageview: UIImageView!
    @IBOutlet weak var passwordTextFeild: UITextField!
    
    @IBOutlet weak var secondView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        design()
    }
    
    
    private func design(){
        myview.layer.cornerRadius = 20
        myview.layer.masksToBounds = true
        secondView.layer.cornerRadius = 20
        secondView.layer.masksToBounds = true
        loginButton.layer.cornerRadius = 20
    }
    
    @IBAction func loginButtonTapped(_ sender: Any) {
        
        if emailTextFeild.text == "" {
            displayAlert(message: "Enter The Email Id")
        }
        
        else if passwordTextFeild.text == ""{
            displayAlert(message: "Enter The Password ")
        }
        else if emailTextFeild.text?.count ?? 0 < 2 {
            displayAlert(message: "Enter More than  Two Charcter  Email Id ")
        }
        else if passwordTextFeild.text?.count ?? 0 < 8 {
            displayAlert(message: "Enter More than  eight Charcter  Password")
        }
        
        
        let storyBord: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let mainViewController: MainViewController =
        storyBord.instantiateViewController(withIdentifier: "MainViewController") as! MainViewController
        navigationController?.pushViewController(mainViewController, animated: true)
    }
    
    func displayAlert(message: String){
        let alert: UIAlertController = UIAlertController(title: "error", message: message, preferredStyle: .alert)
        let okButton: UIAlertAction = UIAlertAction(title: "ok", style: .default) { button in
            print("ko button tapped")
        }
        alert.addAction(okButton)
        present(alert, animated: true, completion: nil)
    }
}
