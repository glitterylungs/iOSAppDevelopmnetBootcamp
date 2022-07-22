//
//  ContentView.swift
//  MyCard
//
//  Created by Alicja Gruca on 23/07/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 0.06, green: 0.24, blue: 0.24)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack {
                Image("myPic")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 170, height: 150, alignment: .center)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color(red: 0.89, green: 0.86, blue: 0.78), lineWidth: 5))
                Text("Alicja Gruca")
                    .font(Font.custom("Pacifico-Regular", size: 40))
                    .bold()
                    .foregroundColor(Color(red: 0.95, green: 0.95, blue: 0.95))
                Text("iOS Developer")
                    .font(Font.custom("Pacifico-Regular", size: 25))
                    .foregroundColor(Color(red: 0.95, green: 0.95, blue: 0.95))
                Divider()
                InfoView(text: "+48 733 030 895", imageName: "phone.fill")
                InfoView(text: "alicjagruca6@gmail.com", imageName: "envelope.fill")
                    
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

