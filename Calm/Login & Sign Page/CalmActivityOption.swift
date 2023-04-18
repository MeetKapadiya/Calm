//
//  ViewController.swift
//  Calm
//
//  Created by Meet Kapadiya on 26/02/23.
//

import UIKit


class CalmActivityOption: UIViewController {
    
    // MARK: @IBOutlet in ViewController
    
    @IBOutlet weak var closeButton: UIButton!
    @IBOutlet weak var betterSleep: UIButton!
    @IBOutlet weak var bulidSelfEsteer: UIButton!
    @IBOutlet weak var reducestress: UIButton!
    @IBOutlet weak var improvePerformance: UIButton!
    @IBOutlet weak var increseHappiness: UIButton!
    @IBOutlet weak var devlopGratide: UIButton!
    @IBOutlet weak var reduceAnxiety: UIButton!
    @IBOutlet weak var continuee: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func closeButtonTapped(_ sender: UIButton) {
        
    }
    
    @IBAction func betterSleepButtonTapped(_ sender: UIButton) {
        betterSleep.layer.borderColor = UIColor.red.cgColor
    }
    
    @IBAction func  bulidSelfEsteemButtonTapped(_ sender: UIButton) {
        bulidSelfEsteer.backgroundColor = .red
        
    }
    
    @IBAction func reducestressButtonTapped(_ sender: UIButton) {
        reducestress.backgroundColor = .red
        
    }
    
    @IBAction func improvePerformanceButtonTapped(_ sender: UIButton) {
        improvePerformance.backgroundColor = .red
        
    }
    
    @IBAction func increseHappinessButtonTapped(_ sender: UIButton) {
        increseHappiness.backgroundColor = .red
        
    }
    
    @IBAction func  devlopGratideButtonTapped(_ sender: UIButton) {
        
        devlopGratide.backgroundColor = .red
    }
    
    @IBAction func  reduceAnxietyButtonTapped(_ sender: UIButton) {
        
        reduceAnxiety.backgroundColor = .red
    }
    
    
    
    @IBAction func continueButtonTapped(_ sender: UIButton) {
        
        
        let storyBord: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let signPageViewController: SignPageViewController =
        storyBord.instantiateViewController(withIdentifier: "SignPageViewController") as! SignPageViewController
        navigationController?.pushViewController(signPageViewController, animated: true)
        
    }
}
