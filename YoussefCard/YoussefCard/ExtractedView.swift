//
//  ExtractedView.swift
//  YoussefCard
//
//  Created by Youssef Walaa Sheta on 25/06/2022.
//

import SwiftUI

struct ExtractedView: View {
    
    let text:String
    
    let imageName: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
        
            .frame( height: 50.0)
            .foregroundColor(.white)
            .overlay(HStack {
                
                Image(imageName)
                    .foregroundColor(.green)
                Text(text)
                
            })
        
            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
}

struct ExtractedView_Previews: PreviewProvider {
    static var previews: some View {
        ExtractedView(text: "Hello", imageName: "phone.fill").previewLayout(.sizeThatFits)
    }
}
