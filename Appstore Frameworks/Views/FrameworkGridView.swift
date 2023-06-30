//
//  FrameworkGridView.swift
//  Appstore Frameworks
//
//  Created by Swaminathan Venkataraman on 1/31/23.
//

import SwiftUI

struct FrameworkGridView: View {
    @StateObject var viewModel = FrameworkGridViewModel()
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: viewModel.columns) {
                    ForEach(MockData.frameworks) { framework in
                        FrameworkTitleView(framework: framework)
                            .onTapGesture {
                                viewModel.selectedFramework = framework
                            }
                    }
                }
                .padding(.top)
            }
            .navigationTitle("Frameworks")
            .sheet(isPresented: $viewModel.showDetailView) {
                FrameworkDetailView(showDetailView: $viewModel.showDetailView, framework: viewModel.selectedFramework!)
            }
        }
    }
}

struct FrameworkGridView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkGridView()
            .preferredColorScheme(.dark)
    }
}
