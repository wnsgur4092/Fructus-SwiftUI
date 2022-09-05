//
//  OnBoardingView.swift
//  Fructus-SwiftUI
//
//  Created by JunHyuk Lim on 5/9/2022.
//

import SwiftUI

struct OnBoardingView: View {
    //MARK: - PROPERTIES
    
    //MARK: - BODY
    
    var body: some View {
        TabView{
            ForEach(0..<5) { item in
                FruitCardView()
            } //: Loop
            FruitCardView()
        } //: TAB
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}

//MARK: - PREVIEW
struct OnBoardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardingView()
    }
}
