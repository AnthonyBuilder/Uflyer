//
//  Home.swift
//  Uflyer
//
//  Created by Anthony José on 26/03/21.
//

import SwiftUI

struct Home: View {
    
    @State var selected = tabs[0]
    @Namespace var animation
    
    var body: some View {
        
        ScrollView {
            VStack(alignment: .leading) {
                VStack(alignment: .leading) {
                    Text("Bem Vindo")
                        .font(.title2)
                        .foregroundColor(.secondary)
                    Text("Voar é liberdade")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.primary)
                }.padding([.leading, .top])
                
                
                HStack(spacing: 0) {
                    ForEach(tabs, id: \.self) {tab in
                        TabButton(title: tab, selected: $selected, animation: animation)
                        
                        if tabs.last != tab { Spacer(minLength: 0) }
                    }
                }.padding()
                
                VStack {
                    CardView()
                }.padding()
            }
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}

var tabs = ["Glasses", "Watched", "Shoes", "Perfume"]
