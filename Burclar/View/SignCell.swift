//
//  TableViewCell.swift
//  Burclar
//
//  Created by Oğulcan Tamyürek on 14.03.2023.
//

import UIKit

class SignCell: UITableViewCell {

    @IBOutlet weak var burcIsmi: UIView!
    @IBOutlet weak var burcFoto: UIImageView!
    @IBOutlet weak var label: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

    func setupUI(data: SignFeature) {
        label.text = data.name
        burcFoto.image = UIImage(named: data.logo)
        accessoryType = .disclosureIndicator

        if label.text == UserDefaults.standard.string(forKey: "favori"){
            backgroundColor = .systemOrange
        } else {
            backgroundColor = .black
        }
    }
}
