//
//  Constants.swift
//  BLIH
//
//  Created by Guillaume Monot on 26/03/2019.
//  Copyright © 2019 Guillaume Monot. All rights reserved.
//

import UIKit

enum Constants {
    
    // MARK: - UITextField
    enum UITextField {
        static let padding: CGFloat = 16.0
    }
    
    enum Webservice {
        
        /// items limit = 300
        static let limit: Int = 300
        
        /// Test user connexion
        static let internetURL: URL? = URL(string: "https://encrypted.google.com")
    }
}
