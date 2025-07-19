//
//  ContentView.swift
//  Soul Dual Game 2
//
//  Created by Jedda Tuuta on 19/7/2025.
//

import SwiftUI

struct ContentView: View {
    
    @State var playerCard = "card7"
    @State var cpuCard = "card13"
    
    @State var playerScore = 0
    @State var cpuScore = 0
    
    var body: some View {
        
        ZStack {
            Image("SoulDualBackground2")
                .resizable()
                .ignoresSafeArea()
            
            VStack {
                Spacer()
                Image("soulDualStars")
                Spacer()
                HStack {
                    
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                Spacer()
                
                
                Button {
                    deal()
                } label: {
                    Image("DealButtonBordered")
                }
                
                
                Spacer()
                HStack {
                    Spacer()
                    VStack {
                        Text("Player")
                            .font(.headline)
                            .padding(.bottom, 10.0)
                        
                        Text(String(playerScore))
                            .font(.largeTitle)
                        
                    }
                    Spacer()
                    VStack {
                        Text("CPU")
                            .font(.headline)
                            .padding(.bottom, 10.0)
                        Text(String(cpuScore))
                            .font(.largeTitle)
                        
                    }
                    Spacer()
                }
                .foregroundColor(.white)
                Spacer()
                
            }
            
        }
    }
    
    func deal() {
        //Randomize the players card
        var playerCardValue = Int.random(in: 2...14)
        
        playerCard = "card" + String(playerCardValue)
        
        //Randomize the CPU card
        var cpuCardValue = Int.random(in: 2...14)
        
        cpuCard = "card" + String(cpuCardValue)
        
        //Update the scores
            
            //Add 1 to player score
            if playerCardValue > cpuCardValue {
                playerScore += 1
            }
            else if cpuCardValue > playerCardValue {
                //Add 1 to cpu score
                cpuScore += 1
            }
        }
        
        
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View { ContentView()
    }
}

