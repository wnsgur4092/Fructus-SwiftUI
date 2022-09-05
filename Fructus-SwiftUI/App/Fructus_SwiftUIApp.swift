//
//  Fructus_SwiftUIApp.swift
//  Fructus-SwiftUI
//
//  Created by JunHyuk Lim on 5/9/2022.
//

import SwiftUI

@main
struct Fructus_SwiftUIApp: App {
    @AppStorage("isOnboarding") var isOnboarding : Bool = true
    
    var body: some Scene {
        WindowGroup {
            if isOnboarding == true {
                OnboardingView()
            } else {
                ContentView()
            }
        }
    }
}
