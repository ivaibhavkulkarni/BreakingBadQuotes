//
//  Char.swift
//  BBQuotes
//
//  Created by Vaibhav kulkarni on 01/06/25.
//
import Foundation

struct Char: Decodable{
    let name: String
    let birthday: String
    let occupations: [String]
    let images: [URL]
    let aliases: [String]
    let status: String
    let portrayedBy: String
}
