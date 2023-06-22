//
//  SplashViewController.swift
//  Burclar
//
//  Created by Oğulcan Tamyürek on 29.03.2023.
//

import Foundation
import UIKit

class SplashViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        goToWelcomeVC()
    }

    func goToWelcomeVC() {
        DispatchQueue.main.asyncAfter(deadline: .now()+2) {
            guard let vc = self.storyboard?.instantiateViewController(withIdentifier: "WelcomeViewController") else { return }
                self.navigationController?.pushViewController(vc, animated: false)
            }
        }
    
}
