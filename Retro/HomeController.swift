//
//  HomeController.swift
//  Retro
//
//  Created by Graphic Influence on 13/06/2019.
//  Copyright © 2019 marianne massé. All rights reserved.
//

import UIKit

class HomeController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var retroIV: UIImageView!
    
    var consoles: [Console] = []
    var index = 0
    var segueID = "Detail"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Did load")
        consoles = ConsoleCollection().obtenirListe()
        let tap = UITapGestureRecognizer(target: self, action: #selector(toDetail))
        retroIV.isUserInteractionEnabled = true
        retroIV.addGestureRecognizer(tap)
        setup()

    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("Will appear")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("Did Appear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("Will disappear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
    }
    
    @objc func toDetail() {
        performSegue(withIdentifier: segueID, sender: nil)
    }
    
    func setup() {
        let console = consoles[index]
        titleLabel.text = "Mes consoles Retro\n \(console.nom) "
        retroIV.image = console.image
        view.backgroundColor = console.couleur
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == segueID {
            if let controller = segue.destination as? DetailController {
                controller.console = consoles[index]
            }
        }
    }
    
    @IBAction func previousPressed(_ sender: Any) {
        if index == 0 {
            index = consoles.count - 1
        } else {
            index -= 1
        }
        setup()
    }
    
    @IBAction func randomPressed(_ sender: Any) {
        index = Int.random(in: 0..<consoles.count)
        setup()
        
    }
    
    @IBAction func nextPressed(_ sender: Any) {
        if index == consoles.count - 1 {
            index = 0
        } else {
            index += 1
        }
        setup()
    }
    
}
