//
//  ProgrammingLang.swift
//  Multi_Scene_App
//
//  Created by Lachlan  Wilson on 12/8/19.
//  Copyright © 2019 Lachlan  Wilson. All rights reserved.
//

import Foundation

enum ProgrammingLang:String {
    case java = "Java", swift = "Swift", python = "Python", perl = "Perl", unknown = "NoImage"
    
    var message:String {
        switch self {
            case .java: return "Stack overflow"
            case .swift: return "Tuples are great"
            case .python: return "Less Readable"
            case .perl: return "Text Manipulation"
            case .unknown: return "No Message"
        }
    }
    
    var imageName:String {
        switch self {
            case .java: return "java"
            case .swift: return "SwiftLogo2"
            case .python: return "python"
            case .perl: return "PerlImage"
            case .unknown: return "No Image"
        }
    }
    
    var url:String {
        switch self {
            case .java: return "https://docs.oracle.com/javase/7/docs/api/"
            case .swift: return "https://swift.org/documentation/#the-swift-programming-language"
            case .python: return "https://pythonprogramming.net/"
            case .perl: return "https://www.perl.org/"
            case .unknown: return "No URL"
        }
    }
    
    var details:String {
        switch self {
            case .java: return """
                Java is a general-purpose programming language that is class-based, object-oriented, and designed to have as few implementation dependencies as possible.\n\n
                You can find out more through the API docs which there is a link to.
                """
            case .swift: return """
                Swift is a general-purpose, multi-paradigm, compiled programming language. Swift is designed to work with cocoa and cocoa touch frameworks.
                """
            case .python: return """
                Python is an interpreted, high-level, general-purpose programming language. Python emphasises higher readability with its increased use of whitespace.
                """
            case .perl: return """
                Perl is a family of two high-level, general-purpose, interpreted, dynamic programming languages.
                """
            case .unknown: return "No Details"
        }
    }
}
