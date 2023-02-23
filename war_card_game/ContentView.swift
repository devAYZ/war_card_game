//
//  ContentView.swift
//  war_card_game
//
//  Created by Ayokunle Pro on 2/22/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var playerCardText = "card2"
    @State var cpuCardText = "card3"
    
    @State var playerScoreText = 0
    @State var cpuScoreText = 0
    
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
                    //cardOneView
                    Image(playerCardText)
                    Spacer()
                    Image(cpuCardText)
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
                        Text("\(playerScoreText)")
                            .font(.largeTitle)
                    }
                    
                    Spacer() // Space
                    
                    VStack {
                        Text("CPU")
                            .font(.headline)
                            .padding(.bottom, 3.0)
                        Text("\(cpuScoreText)")
                            .font(.largeTitle)
                    }
                    
                    Spacer() // Space
                }
                .foregroundColor(Color.white)
                
                Spacer() // Space
                
            }
            
        }
    }
    
    var cardOneView: Image {
        Image(playerCardText)
    }
    
    func handleButtonAction() {
        
        let playerCardValue = Int.random(in: 2...14)
        let cpuCardValue = Int.random(in: 2...14)
        
        playerCardText = "card" + "\(playerCardValue)"
        cpuCardText = "card" + "\(cpuCardValue)"
        
        if playerCardValue > cpuCardValue {
            playerScoreText += 1
        } else if playerCardValue < cpuCardValue {
            cpuScoreText += 1
        } else {
            playerScoreText += 1
            cpuScoreText += 1
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
