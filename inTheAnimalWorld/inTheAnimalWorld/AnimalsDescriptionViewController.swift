//
//  AnimalsDescriptionViewController.swift
//  inTheAnimalWorld
//
//  Created by M1 on 06.07.2022.
//

import UIKit

class AnimalsDescriptionViewController: UIViewController {
    
    
    @IBOutlet var descriptinTextView: UITextView!
    
    var animals: Animal?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = animals?.name ?? ""
        descriptinTextView.text = animals?.description
    }

}
