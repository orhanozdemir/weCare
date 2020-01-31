//
//  CreateProgrammTitleCell.swift
//  weCare
//
//  Created by Orhan Özdemir on 29.01.2020.
//  Copyright © 2020 PRS Kozmetik. All rights reserved.
//

import UIKit

class CreateProgramTitleCell: UITableViewCell {

    @IBOutlet weak var orderLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    
    var isCompleted = false
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        orderLabel.layer.borderColor = UIColor.macaroniAndCheese.cgColor
        orderLabel.textColor = .macaroniAndCheese
        titleLabel.textColor = .macaroniAndCheese
    }
    
    func setCell(order: Int, title: String) {
        orderLabel.text = String(order)
        orderLabel.backgroundColor = .gray
        orderLabel.layer.borderColor = UIColor.pinkishRed.cgColor
        orderLabel.textColor = .pinkishRed
        
        titleLabel.text = title
        titleLabel.textColor = .pinkishRed
    }
    
    func updateColors() {
        orderLabel.layer.borderColor = isCompleted ? UIColor.bluishGreen.cgColor : UIColor.pinkishRed.cgColor
        orderLabel.textColor = isCompleted ? .bluishGreen : .pinkishRed
        titleLabel.textColor = isCompleted ? .bluishGreen : .pinkishRed
    }
    
}
