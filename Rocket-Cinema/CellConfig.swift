//
//  cellConfig.swift
//  Rocket-Cinema
//
//  Created by Otávio da Silva on 11/11/22.
//
import UIKit
import Foundation

class CellConfig: UITableViewCell {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var authorLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var mediaImageView: UIImageView!
    
    func setCellConfig (_ cellStruct: [Media], _ indexPath: IndexPath) {
        titleLabel.text = cellStruct[indexPath.row].title
        authorLabel.text = cellStruct[indexPath.row].author.name
        descriptionLabel.text = cellStruct[indexPath.row].description
        mediaImageView.image = cellStruct[indexPath.row].image
    }
    
    
}
