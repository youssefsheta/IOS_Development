//
//  ContentView.swift
//  Dicee-SwiftUI
//
//  Created by Youssef Walaa Sheta on 27/06/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var leftDiceNumber = 1
    @State var rightDiceNumber = 2
    
    var body: some View {
        
        
        
        ZStack {
            
            Image("background")
                .resizable()
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            VStack {
                Image("diceeLogo")
                Spacer()
                HStack {
                    DiceView(n: leftDiceNumber)
                    DiceView(n: rightDiceNumber)
                }
                .padding(.horizontal)
                
                Spacer()

                Button(action: {
                    
                    leftDiceNumber = Int.random(in: 1...6)
                    
                    rightDiceNumber = Int.random(in: 1...6)
                    
                }){
                    Text("Roll")
                        .font(.system(size: 40))
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                    
                        .padding()
                    
                }.background(Color.red)
                
                
                

                    

               
            }
            
           
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().previewDevice("iPhone 11 Pro Max")
    }
}

struct DiceView: View {
   
    let n : Int
    
    var body: some View {
        Image("dice\(n)")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .padding()
    }
}
