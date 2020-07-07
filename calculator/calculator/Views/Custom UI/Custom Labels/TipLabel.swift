//
//  TipLabel.swift
//  calculator
//
//  Created by Kristin Samuels  on 7/6/20.
//  Copyright © 2020 Kristin Samuels . All rights reserved.
//

import UIKit

class TipLabel: UILabel {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        updateFonTo(font: FontNames.latoRegular)
        self.textColor = .textColor
    }
    
    func updateFonTo(font: String) {
        let size = self.font.pointSize
        self.font = UIFont(name: font, size: size)
    }
}

class AppNameLabel: TipLabel {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        updateFonTo(font: FontNames.latoBold)
        self.textColor = .titlePink
    }
}
