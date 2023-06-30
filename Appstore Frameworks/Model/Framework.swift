//
//  Framework.swift
//  Appstore Frameworks
//
//  Created by Swaminathan Venkataraman on 1/31/23.
//

import Foundation

struct Framework: Hashable, Identifiable {
    let id = UUID()
    
    let name: String
    let imageName: String
    let urlString: String
    let description: String
}
