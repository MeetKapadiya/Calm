//
//  SecondViewController.swift
//  Calm
//
//  Created by Meet Kapadiya on 03/04/23.
//

import UIKit

class SecondViewController: UIViewController {
    
    
    @IBOutlet weak var ApiButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    @IBAction func apiButtonTapped(_ sender: Any) {
        
        let storyBord: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let apiCallViewController: ApiCallViewController  =
        storyBord.instantiateViewController(withIdentifier: "ApiCallViewController") as! ApiCallViewController
        navigationController?.pushViewController(apiCallViewController, animated: true)
        
    }
}
