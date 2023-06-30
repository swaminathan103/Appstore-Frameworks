//
//  XDismissButton.swift
//  Appstore Frameworks
//
//  Created by Swaminathan Venkataraman on 6/13/23.
//

import SwiftUI

struct XDismissButton: View {
    @Binding var showDetailView: Bool
    
    var body: some View {
        HStack {
            Spacer()
            Button {
                showDetailView = false
            } label: {
                Image(systemName: "xmark")
                    .foregroundColor(Color(.label))
                    .imageScale(.large)
                    .frame(width: 44, height: 44)
                
            }
        }
        .padding(.trailing)
        .padding(.top)
    }
}

struct XDismissButton_Previews: PreviewProvider {
    static var previews: some View {
        XDismissButton(showDetailView: .constant(false))
    }
}
