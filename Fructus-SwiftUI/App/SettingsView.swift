//
//  SettingsView.swift
//  Fructus-SwiftUI
//
//  Created by JunHyuk Lim on 6/9/2022.
//

import SwiftUI

struct SettingsView: View {
    //MARK: - PROPERTIES
    
    @Environment(\.presentationMode) var presentationMode
    @AppStorage("isOnboarding") var isOnboarding : Bool = false
    
    //MARK: - BODY
    var body: some View {
        NavigationView{
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing : 20) {
                    //MARK: - SECTION 1
                    GroupBox() {
                        
                        SettingsLabelView(labelText: "Fructus", labelImage: "info.circle")
                        
                        Divider().padding(.vertical, 4)
                        
                        HStack(spacing: 10){
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .cornerRadius(9)
                            
                            Text("Most fruits are naturally low in fat, sodium, and calories. None have cholesterol. Fruits are sources of many essential nutrients, including potassium, dietary fiber, vitamins, and much more.")
                                .font(.footnote)
                        } //: HSTACK
                    } //: GROUP
                    
                    //MARK: - SECTION 2
                    GroupBox {
                        SettingsLabelView(labelText: "Customization", labelImage: "paintbrush")
                        
                        Divider().padding(.vertical, 4)
                        
                        Text("If you wish, you can restart application by toggle the switch in this box. That way it starts the onboarding process and you will see the welcome screen again.")
                            .padding(.vertical, 8)
                            .frame(minHeight : 60)
                            .layoutPriority(1)
                            .multilineTextAlignment(.leading)
                        
                        Toggle(isOn: $isOnboarding) {
                            if isOnboarding{
                                Text("Restarted".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundColor(.green)
                            } else {
                                Text("Restart".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundColor(.secondary)
                            }
                            
                                
                        }
                        .padding()
                        .background(.tertiary).clipShape(RoundedRectangle(cornerRadius: 8))
                    }
                    
                    //MARK: - SECTION 3
                    
                    GroupBox() {
                        SettingsLabelView(labelText: "Application", labelImage: "apps.iphone")
                        
                        
                        
                        SettingsRowView(name: "Developer", content: "Jun", linkLabel: nil, linkDestination: nil)
                        SettingsRowView(name: "Designer", content: "Jun", linkLabel: nil, linkDestination: nil)
                        SettingsRowView(name: "Compatibility", content: "iOS 14", linkLabel: nil, linkDestination: nil)
                        SettingsRowView(name: "Website", content: nil, linkLabel: "Github", linkDestination: "github.com/wnsgur4092")
                        SettingsRowView(name: "Notion", content: nil, linkLabel: "@JunHyuk", linkDestination: "www.notion.so/Hello-Jun-cbc42f468372431d8e30aa94d9ce0053")
                        SettingsRowView(name: "SwiftUI", content: "2.0", linkLabel: nil, linkDestination: nil)
                        SettingsRowView(name: "Version", content: "1.1.0")
                        
                    } //: GROUPBOX
                    
                    
                    
                    
                    
                } //: VSTACK
                

                
            } //: SCROLL
            .navigationTitle("Setting")
            .navigationBarTitleDisplayMode(.large)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        presentationMode.wrappedValue.dismiss()
                        presentationMode.wrappedValue.dismiss()
                    } label: {
                        Image(systemName: "xmark")
                    }
                }
            } //: TOOLBAR
            .padding()
        }
    
    } //: NAVIGATION
}












//MARK: - PROPERTIES
struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView().preferredColorScheme(.dark)
    }
}
