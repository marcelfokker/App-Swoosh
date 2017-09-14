//
//  BorderButton.swift
//  App-Swoosh
//
//  Created by Marcel Fokker on 03-09-17.
//  Copyright © 2017 Marcel Fokker. All rights reserved.
//

import UIKit

class BorderButton: UIButton {

    override func awakeFromNib() {
        super.awakeFromNib()
        layer.borderWidth = 2.0
        layer.borderColor = UIColor.white.cgColor
    }

}
