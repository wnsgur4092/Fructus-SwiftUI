//
//  SourceLinkView.swift
//  Fructus-SwiftUI
//
//  Created by JunHyuk Lim on 6/9/2022.
//

import SwiftUI

struct SourceLinkView: View {
    var body: some View {
        GroupBox() {
            HStack{
                Text("Content source")
                Spacer()
                Link(destination: URL(string: "https://wikipedia.org")!) {
                    Text("Wikipedia")
                }
                Image(systemName: "arrow.up.right.square")
            } //: HSTACK
            .font(.footnote)
            
        } //: GROUP
    }
}

struct SourceLinkView_Previews: PreviewProvider {
    static var previews: some View {
        SourceLinkView().previewLayout(.sizeThatFits)
            .padding()
    }
}
