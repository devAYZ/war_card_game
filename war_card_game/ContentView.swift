//
//  ContentView.swift
//  war_card_game
//
//  Created by Ayokunle Pro on 2/22/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var cardOne = "card2"
    @State var cardTwo = "card3"
    
    @State var playerValue = 0
    @State var cpuValue = 0
    
    var body: some View {
        ZStack {
            Image("background-plain")
                .ignoresSafeArea()
            VStack {
                
                Spacer() // Space
                
                Image("logo")
                
                Spacer() // Space
                
                HStack {
                    Spacer()
                    Image(cardOne)
                    Spacer()
                    Image(cardTwo)
                    Spacer()
                }
                
                Spacer() // Space
                
                Button(action: handleButtonAction) {
                    Image("button")
                }
                
                Spacer() // Space
                
                HStack {
                    Spacer() // Space
                    
                    VStack {
                        Text("Player")
                            .font(.headline)
                            .padding(.bottom, 3)
                        Text("\(playerValue)")
                            .font(.largeTitle)
                    }
                    
                    Spacer() // Space
                    
                    VStack {
                        Text("CPU")
                            .font(.headline)
                            .padding(.bottom, 3.0)
                        Text("\(cpuValue)")
                            .font(.largeTitle)
                    }
                    
                    Spacer() // Space
                }
                .foregroundColor(Color.white)
                
                Spacer() // Space
                
            }
            
        }
    }
    
    func handleButtonAction() {
        cardOne = "card" + "\(Int.random(in: 2...14))"
        cardTwo = "card" + "\(Int.random(in: 2...14))"
        
        playerValue = Int.random(in: 0...100)
        cpuValue = Int.random(in: 0...100)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
