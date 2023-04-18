//
//  CollectionViewCell.swift
//  Calm
//
//  Created by Meet Kapadiya on 06/03/23.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {

    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var peopleImage: UIImageView!
    @IBOutlet weak var detailsLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
