//
//  TabButton.swift
//  Uflyer
//
//  Created by Anthony José on 26/03/21.
//

import SwiftUI

struct TabButton: View {
    
    var title: String
    @Binding var selected: String
    
    var animation: Namespace.ID
    
    var body: some View {
        Button(action:{
            withAnimation(.interpolatingSpring(mass: 1.0, stiffness: 100, damping: 15 , initialVelocity: 10)) {
                selected = title
            }
        }) {
            Text(title)
                .font(.system(size: 15))
                .foregroundColor(selected == title ? .white : .black)
                .padding(.vertical, 10)
                .padding(.horizontal, selected == title ? 20 : 0)
                .background(
                    ZStack {
                        if selected == title {
                            Color.black
                                .clipShape(Capsule())
                                .matchedGeometryEffect(id: "Tab", in: animation)
                        }
                    }
                )
        }
    }
}
