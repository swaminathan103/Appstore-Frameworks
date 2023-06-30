//
//  FrameworkDetailView.swift
//  Appstore Frameworks
//
//  Created by Swaminathan Venkataraman on 2/9/23.
//

import SwiftUI

struct FrameworkDetailView: View {
    @Binding var showDetailView: Bool
    @State private var showSafariView = false
    var framework: Framework = MockData.sampleFramework
    
    
    var body: some View {
        VStack {
            XDismissButton(showDetailView: $showDetailView)
            Spacer()
            FrameworkTitleView(framework: framework)
            Text(framework.description)
                .font(.body)
                .padding()
            Spacer()
            Button {
                // action
                showSafariView = true
            } label: {
                AFButton(title: "Learn More")
            }
        }
        .fullScreenCover(isPresented: $showSafariView) {
            SafariView(url: URL(string: framework.urlString)!)
        }
    }
}

struct FrameworkDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkDetailView(showDetailView: .constant(false))
            .preferredColorScheme(.dark)
    }
}
