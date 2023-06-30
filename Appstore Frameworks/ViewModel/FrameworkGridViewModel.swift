//
//  FrameworkGridViewModel.swift
//  Appstore Frameworks
//
//  Created by Swaminathan Venkataraman on 2/9/23.
//

import SwiftUI

class FrameworkGridViewModel: ObservableObject {
    
    let columns: [GridItem] = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var selectedFramework: Framework? {
        willSet {
            if newValue != nil {
                showDetailView = true
            }
        }
    }
    
    @Published var showDetailView = false {
        willSet {
            if !newValue {
                selectedFramework = nil
            }
        }
    }
}
