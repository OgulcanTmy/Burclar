//
//  BurcOzellikleri.swift
//  Burclar
//
//  Created by Oğulcan Tamyürek on 4.03.2023.
//

import Foundation
import UIKit

enum SignType: String, CaseIterable {
    case Koç
    case Boğa
    case İkizler
    case Yengeç
    case Aslan
    case Başak
    case Terazi
    case Akrep
    case Yay
    case Oğlak
    case Kova
    case Balık
}

struct  SignFeature{

    let type: SignType
    let name: String
    let info: String
    let logo: String
}
