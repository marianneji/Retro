//
//  DetailController.swift
//  Retro
//
//  Created by Graphic Influence on 14/06/2019.
//  Copyright © 2019 marianne massé. All rights reserved.
//

import UIKit

class DetailController: UIViewController {
    
    @IBOutlet weak var TitleLabel: UILabel!
    @IBOutlet weak var DureeLabel: UILabel!
    @IBOutlet weak var RetroIV: UIImageView!
    @IBOutlet weak var descTextField: UITextView!
    var console: Console?

    override func viewDidLoad() {
        super.viewDidLoad()
        guard console != nil else { return }
        title = console!.nom
        TitleLabel.text = console!.nom
        RetroIV.image = console!.image
        DureeLabel.text = console!.cycleDeVie()
        descTextField.text = console!.desc
        view.backgroundColor = console!.couleur
    }
}
