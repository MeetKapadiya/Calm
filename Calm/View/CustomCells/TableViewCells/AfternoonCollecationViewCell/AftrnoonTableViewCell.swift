//
//  AftrnoonTableViewCell.swift
//  Calm
//
//  Created by Meet Kapadiya on 28/03/23.
//

import UIKit

class AftrnoonTableViewCell: UITableViewCell {
    
    @IBOutlet weak var AfternoonFirst: UILabel!
    @IBOutlet weak var AfternoonSecond: UILabel!
    @IBOutlet weak var AfternoonThird: UILabel!
    @IBOutlet weak var AfternoonFour: UILabel!
    @IBOutlet weak var AfternoonFive: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
}
