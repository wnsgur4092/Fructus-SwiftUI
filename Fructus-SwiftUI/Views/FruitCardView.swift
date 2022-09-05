//
//  FruitCardView.swift
//  Fructus-SwiftUI
//
//  Created by JunHyuk Lim on 5/9/2022.
//

import SwiftUI

struct FruitCardView: View {
    //MARK: - Properties
    var fruit : Fruit
    @State private var isAnimiating : Bool = false

    
    
    //MARK: - Body
    var body: some View {
        ZStack {
            VStack(spacing : 20) {
                //FRUIT : IMAGE
                Image(fruit.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 8, x: 6, y: 8)
                    .scaleEffect(isAnimiating ? 1.0 : 0.6)
                
                //FRUIT : TITLE
                Text(fruit.title)
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .shadow(color: .black.opacity(0.15), radius: 2, x: 2, y: 2)
                
                //FRUIT : HEADLINE
                Text(fruit.headline)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 16)
                    .frame(maxWidth : 480)
                
                //BUTTON : START
                StartButtonView()
                
            } //: VSTACK
        } //: ZSTACK
        .onAppear{
            withAnimation(.easeOut(duration: 0.5)){
                isAnimiating = true
            }
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
        .background(LinearGradient(gradient: Gradient(colors: fruit.gradientColors ), startPoint: .top, endPoint: .bottom))
        .cornerRadius(20)
        .padding(.horizontal , 20)
        
    }
}

//MARK: - Preview
struct FruitCardView_Previews: PreviewProvider {
    static var previews: some View {
        FruitCardView(fruit: fruitsData[7]).previewLayout(.fixed(width:320, height:640))
    }
}
