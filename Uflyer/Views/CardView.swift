//
//  CardView.swift
//  Uflyer
//
//  Created by Anthony José on 28/03/21.
//

import SwiftUI

struct CardView: View {
    
    var gradient = LinearGradient(gradient: Gradient(stops: [Gradient.Stop(color: Color(hue: 0.5298920711060948, saturation: 1.0, brightness: 0.8, opacity: 1.0), location: 0.0), Gradient.Stop(color: Color(hue: 0.934105177765237, saturation: 1.0, brightness: 0.8, opacity: 1.0), location: 0.9968599759615384)]), startPoint: UnitPoint.topLeading, endPoint: UnitPoint.bottomTrailing)
    
    var body: some View {
        ZStack(alignment: .leading) {
            Rectangle()
                .fill(gradient)
                .frame(width: .infinity, height: 120)
                .cornerRadius(15)
                .shadow(color: .gray, radius: 2, x: 0, y: 1)
          
            VStack(alignment: .leading) {
                Text("Vancuver")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                HStack {
                    Image(systemName: "calendar")
                    Text("Dez/22")
                        .font(.subheadline)
                        .foregroundColor(.primary)
                }.padding(1)
                HStack {
                    Image(systemName: "airplane")
                    Text("Congonhas - São Paulo")
                        .font(.subheadline)
                        .foregroundColor(.primary)
                }.padding(1)
            }.padding(.leading)
        }
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
    }
}
