//
//  ProfileViewController.swift
//  Calm
//
//  Created by Meet Kapadiya on 24/04/23.
//

import UIKit

class ProfileViewController: UIViewController {
    @IBOutlet weak var signOrLogin: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    @IBAction func signOrLoginButtonTapped(_ sender: Any) {
        let storyBord: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let signPageViewController: SignPageViewController =
        storyBord.instantiateViewController(withIdentifier: "SignPageViewController") as! SignPageViewController
        navigationController?.pushViewController(signPageViewController, animated: true)
    }
}

