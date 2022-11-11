//
//  cellConfig.swift
//  Rocket-Cinema
//
//  Created by Otávio da Silva on 11/11/22.
//
import UIKit

class CellConfig: UITableViewCell {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var authorLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var mediaImageView: UIImageView!
    
    func setCellConfig (_ cellStruct: Media) {
        titleLabel.text = cellStruct.title
        authorLabel.text = cellStruct.author.name
        descriptionLabel.text = cellStruct.description
        mediaImageView.image = cellStruct.image
    }
    
}
