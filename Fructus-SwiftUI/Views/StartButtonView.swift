//
//  StartButtonView.swift
//  Fructus-SwiftUI
//
//  Created by JunHyuk Lim on 5/9/2022.
//

import SwiftUI

struct StartButtonView: View {
    //MARK: - PROPERTIES
    
    //MARK: - BODY
    var body: some View {
        Button {
            print("Exit the onboarding")
        } label: {
            HStack(spacing : 8) {
                Text("Start")
                
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
            }
            .padding(.horizontal, 16.0)
            .padding(.vertical, 10)
            .background(
                Capsule().strokeBorder(lineWidth: 2.25).foregroundColor(/*@START_MENU_TOKEN@*/.white/*@END_MENU_TOKEN@*/)
            )

        } //: BUTTON
        .tint(.white)
    }
    
}

//MARK: - PREVIEW
struct StartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StartButtonView().preferredColorScheme(.dark).previewLayout(.sizeThatFits)
    }
}
