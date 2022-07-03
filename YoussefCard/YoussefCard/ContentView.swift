//
//  ContentView.swift
//  YoussefCard
//
//  Created by Youssef Walaa Sheta on 25/06/2022.
//

import SwiftUI

struct ContentView: View {
    
    
    
    var body: some View {
        
        
        ZStack {
           
           
            
            Color(red: 0.09, green: 0.63, blue: 0.52)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            VStack {
                Image("youssefsheta")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150.0, height: 150.0)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .overlay(Circle().stroke(Color.white , lineWidth: 5))
                
                Text("Youssef Sheta")
                    .font(Font.custom("Pacifico-Regular", size: 40))
                    .bold()
                .padding()
            
                Text("IOS Developer")
                    .font(.system(size: 25))
                    .foregroundColor(.white)
                
                Divider()
                
                
                
    
                   
                    
                ExtractedView(text: "01155578288", imageName: "phone.fill")
                
                ExtractedView(text: "ywsheta@gmail.com", imageName: "mail")
                    
                

               

            }
            
            
            
            
        }
    
    
    
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().previewDevice("iPhone 11 Pro Max")
    }
}

