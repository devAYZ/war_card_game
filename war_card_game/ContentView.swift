//
//  ContentView.swift
//  war_card_game
//
//  Created by Ayokunle Pro on 2/22/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Image("background-plain")
                .ignoresSafeArea()
            
            VStack {
                Spacer()
                Image("logo")
                Spacer()
                HStack {
                    Spacer()
                    Image("card2")
                    Spacer()
                    Image("card3")
                    Spacer()
                }
                
                Spacer() // Space
                
                Image("button")
                
                Spacer() // Space
                
                HStack {
                    Spacer()
                    VStack {
                        Text("Player")
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding(.bottom, 3)
                        Text("0")
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
                    }
                    
                    Spacer() // Space
                    
                    VStack {
                        Text("CPU")
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding(.bottom, 3.0)
                        Text("0")
                            .font(.largeTitle)
                            .foregroundColor(.white)
                    }
                    Spacer()
                }
                
                Spacer() // Space
                
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
