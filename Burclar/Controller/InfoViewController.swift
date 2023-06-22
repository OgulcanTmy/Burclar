//
//  InfoViewController.swift
//  Burclar
//
//  Created by Oğulcan Tamyürek on 7.03.2023.
//

import Foundation
import UIKit

class InfoViewController: UIViewController {

    @IBOutlet weak var infoLabel: UILabel?
    @IBOutlet weak var burcPicture: UIImageView!
    @IBOutlet weak var favoriBurcButton: UIButton!

    var burc: SignFeature?
    let defaults = UserDefaults.standard

    override func viewDidLoad() {
        super.viewDidLoad()
        infoLabel?.text = burc?.info
        burcPicture.image = UIImage(named: burc?.logo ?? "")

        title = burc?.name ?? ""
    }

    @IBAction func favoriBurcButtonPressed(_ sender: Any) {
        defaults.set(title, forKey: "favori")
    }
}

