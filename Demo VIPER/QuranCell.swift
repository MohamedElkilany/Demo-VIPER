//
//  QuranCell.swift
//  Demo VIPER
//
//  Created by mohamed sayed on 11/23/20.
//

import UIKit

class QuranCell: UITableViewCell,SetCellDataProtocol {
    
    static let reuseID = "QuranCell"
    let quranNameLable = UILabel()
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        self.selectionStyle = .none
        configuar()
    }
    
    func configuar(){
        quranNameLable.translatesAutoresizingMaskIntoConstraints = false
        addSubview(quranNameLable)
        NSLayoutConstraint.activate([
            quranNameLable.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            quranNameLable.centerXAnchor.constraint(equalTo: self.centerXAnchor),
        ])
    }
    
    func setUpDataCell(quranModel: QuranData) {
        quranNameLable.text = quranModel.name ?? "" 
    }
    
}
