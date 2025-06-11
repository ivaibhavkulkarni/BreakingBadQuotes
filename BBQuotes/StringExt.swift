//
//  StringExt.swift
//  BBQuotes
//
//  Created by Vaibhav kulkarni on 11/06/25.
//

extension String {
    func removeSpaces() -> String {
        self.replacingOccurrences(of: " ", with: "")
    }
    
    func removeCaseAndSpace() -> String {
        self.removeSpaces().lowercased()
    }
}
