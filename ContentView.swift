//
//  ContentView.swift
//
//  Created by Jitesh Aggarwal on 05/11/25.
//

import SwiftUI

struct ContentView: View {
    @State var playerCard = "card7"
    @State var cpuCard = "card13"
    
    @State var playerTally = 0
    @State var cpuTally = 0
    var body: some View {
        
        ZStack {
            Image("background-cloth")
            
            VStack {
                Spacer()
                Image("logo")
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
                    Image("button")
                }
                Spacer()
                HStack {
                    Spacer()
                    VStack{
                        Text("Player")
                            .font(.headline)
                            .fontWeight(.heavy)
                        Text(String(playerTally))
                            .font(.largeTitle)
                    }
                    Spacer()
                    VStack{
                        Text("CPU")
                            .font(.headline)
                            .fontWeight(.heavy)
                        Text(String(cpuTally))
                            .font(.largeTitle)
                    }
                    Spacer()
                }
                .foregroundStyle(.white)
                Spacer()
                Spacer()
            }
        }
    }
    
    func deal() {
        var playerCardValue = Int.random(in: 2...14)
        playerCard = "card" + String(playerCardValue)
        print("playerCard = " , playerCard)
        
        
        var cpuCardValue = Int.random(in: 2...14)
        cpuCard = "card" + String(cpuCardValue)
        print("cpuCard = " , cpuCard)
        
        if(playerCardValue > cpuCardValue) {
                playerTally += 1
            }
        else if (cpuCardValue > playerCardValue) {
                cpuTally += 1
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
