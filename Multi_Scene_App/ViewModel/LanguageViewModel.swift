//
//  LanguageViewModel.swift
//  Multi_Scene_App
//
//  Created by Lachlan  Wilson on 12/8/19.
//  Copyright © 2019 Lachlan  Wilson. All rights reserved.
//

import Foundation
import UIKit

struct LanguageViewModel {
    // Link to the Model
    private let languageManager = LanguageManager()
    
    // Filtering data from the model
    func getDetails(forKey key:String) -> (image: UIImage?, message: String, url: String, details: String) {
        let details = languageManager.getDetails(forKey: key)
        let image = UIImage(named: details.imageName)
        let message = details.message
        let url = details.url
        let detailsVar = details.details
        return (image: image, message: message, url: url, details: detailsVar)
    }
    
    //Transform data from the model (ready for presentation)
}
