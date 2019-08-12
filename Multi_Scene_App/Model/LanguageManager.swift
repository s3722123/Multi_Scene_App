//
//  LanguageManager.swift
//  Multi_Scene_App
//
//  Created by Lachlan  Wilson on 12/8/19.
//  Copyright © 2019 Lachlan  Wilson. All rights reserved.
//

import Foundation

struct LanguageManager {
    private (set) var languages:[String:ProgrammingLang] = [:]
    
    init() {
        loadLanguages()
    }
    
    private mutating func loadLanguages() {
        languages.updateValue(ProgrammingLang.java, forKey: ProgrammingLang.java.rawValue)
        languages.updateValue(ProgrammingLang.swift, forKey: ProgrammingLang.swift.rawValue)
        languages.updateValue(ProgrammingLang.python, forKey: ProgrammingLang.python.rawValue)
        languages.updateValue(ProgrammingLang.perl, forKey: ProgrammingLang.perl.rawValue)
    }
    
    func getDetails(forKey key: String) ->ProgrammingLang {
        guard let language = languages[key] else {
            return ProgrammingLang.unknown
        }
        return language
    }
}
