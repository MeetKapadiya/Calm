//
//  SignPageViewController.swift
//  Calm
//
//  Created by Meet Kapadiya on 24/02/23.
//

import UIKit

class SignPageViewController: UIViewController {

    @IBOutlet weak var closebutton: UIButton!
    
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
    @IBAction func closeButtonTapped(_ sender: Any) {
        let storyBord: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let profileViewController: ProfileViewController =
        storyBord.instantiateViewController(withIdentifier: "ProfileViewController") as! ProfileViewController
        navigationController?.pushViewController(profileViewController, animated: true)
    }
}
