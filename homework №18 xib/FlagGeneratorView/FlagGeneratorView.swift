//
//  FlagGeneratorView.swift
//  homework №18 xib
//
//  Created by Shirayo on 22.03.2020.
//  Copyright © 2020 Shirayo. All rights reserved.
//

import UIKit

class FlagGeneratorView: UIView {

    @IBOutlet var contentView: UIView!
    @IBOutlet var changeColorButtons: [UIButton]!
    
    @IBAction func changeColorButtonsDidClick(_ sender: UIButton) {
        switch sender {
        case changeColorButtons[0]:
            UIView.animate(withDuration: 0.7, animations: {
                self.contentView.backgroundColor = UIColor.systemRed
            })
        case changeColorButtons[1]:
            UIView.animate(withDuration: 0.7, animations: {
                self.contentView.backgroundColor = UIColor.systemGreen
            })
        case changeColorButtons[2]:
            UIView.animate(withDuration: 0.7, animations: {
                self.contentView.backgroundColor = UIColor.systemBlue
            })
        default:
            return
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
    }
    
    private func commonInit() {
        Bundle.main.loadNibNamed("FlagGenerator", owner: self, options: nil)
        addSubview(contentView)
        contentView.frame = bounds
        contentView.layer.cornerRadius = 50
    }
    
}


