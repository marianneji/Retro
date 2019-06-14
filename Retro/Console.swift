//
//  Console.swift
//  Retro
//
//  Created by Graphic Influence on 14/06/2019.
//  Copyright © 2019 marianne massé. All rights reserved.
//

import UIKit

class Console {
    
    private var _nom: String
    private var _image: UIImage?
    private var _couleur: UIColor
    private var _debut: Int
    private var _fin: Int
    private var _desc: String
    
    var desc: String {
        return _desc
    }
    
    var nom: String {
        return _nom
    }
    
    var image: UIImage? {
        return _image
    }
    
    var couleur: UIColor {
        return _couleur
    }
    
    init(nom: String, debut: Int, fin: Int, rgb: [CGFloat], desc: String) {
        _nom = nom
        _image = UIImage(named: nom + ".png")
        _debut = debut
        _fin = fin
        _desc = desc
        _couleur = UIColor.lightGray
        if rgb.count == 3 {
            _couleur = colorFrom(red: rgb[0], green: rgb[1], blue: rgb[2])
        }
    }
    
    func colorFrom(red: CGFloat, green: CGFloat, blue: CGFloat) -> UIColor {
       return UIColor(red: red / 255, green: green / 255, blue: blue / 255, alpha: 1)
    }
    
    func cycleDeVie() -> String {
        return "Debut: \(_debut) - Fin: \(_fin)"
    }
}
