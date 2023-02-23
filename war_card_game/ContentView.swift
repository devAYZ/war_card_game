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
                
                Spacer() // Space
                
                Image("logo")
                
                Spacer() // Space
                
                HStack {
                    Spacer()
                    Image("card2")
                    Spacer()
                    Image("card3")
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
                        Text("0")
                            .font(.largeTitle)
                    }
                    
                    Spacer() // Space
                    
                    VStack {
                        Text("CPU")
                            .font(.headline)
                            .padding(.bottom, 3.0)
                        Text("0")
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
        print("devAYZ")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
