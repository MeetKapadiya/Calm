//
//  SignPageViewController.swift
//  Calm
//
//  Created by Meet Kapadiya on 24/02/23.
//

import UIKit

class SignPageViewController: UIViewController {

    
    @IBOutlet weak var logInButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

      
    }
    
    @IBAction func loginButtonTapped(_ sender: Any) {
        
        let storyBord: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let loginViewController: LoginViewController =
        storyBord.instantiateViewController(withIdentifier: "LoginViewController") as! LoginViewController
        navigationController?.pushViewController(loginViewController, animated: true)
        
    }
}
