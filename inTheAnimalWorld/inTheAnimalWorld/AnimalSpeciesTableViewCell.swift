//
//  AnimalSpeciesTableViewCell.swift
//  inTheAnimalWorld
//
//  Created by M1 on 06.07.2022.
//

import UIKit

class AnimalSpeciesTableViewCell: UITableViewCell {

    @IBOutlet var nameAnimalsImageView: UIImageView!
    @IBOutlet var nameAnimalsLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    func update(animals: String, image: UIImage) {
        nameAnimalsImageView.image = image
        nameAnimalsLabel.text = animals
    }
}
