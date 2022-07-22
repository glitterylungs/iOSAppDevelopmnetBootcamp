//
//  InfoView.swift
//  MyCard
//
//  Created by Alicja Gruca on 23/07/2022.
//

import SwiftUI

struct InfoView: View {
    let text: String
    let imageName: String
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .frame(height: 50)
            .foregroundColor(Color(red: 0.95, green: 0.95, blue: 0.95))
            .overlay(HStack {
                Text(text)
                    .foregroundColor(Color(red: 0.06, green: 0.24, blue: 0.24))
                Image(systemName: imageName)
                    .foregroundColor(Color(red: 0.06, green: 0.24, blue: 0.24))
            })
            .padding(.all)
    }
}


struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(text: "Hello", imageName: "phone.fill").previewLayout(.sizeThatFits)
    }
}
