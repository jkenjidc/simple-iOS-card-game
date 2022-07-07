//
//  ContentView.swift
//  war-challenge
//
//  Created by Justine Kenji Dela Cruz on 6/29/22.
//

import SwiftUI

struct ContentView: View {
    @State var playerCard = "card5"
    @State var cpuCard = "card9"
    @State var playerScore = 0
    @State var cpuScore = 0
    var body: some View {
        ZStack{
            Image("background")
                .ignoresSafeArea()
            VStack{
                Spacer()
                Image("logo")
                Spacer()
                HStack{
                    Image(playerCard)
                        .padding(.trailing, 75.0)
                    Image(cpuCard)
                }
                Spacer()
                Button(action: {
                    let playerRand = Int.random(in: 2...14)
                    let cpuRand = Int.random(in: 2...14)
                    playerCard = "card" + String(playerRand)
                    cpuCard = "card" + String(cpuRand)
                    
                    if playerRand > cpuRand{
                        playerScore += 1
                    } else if playerRand < cpuRand{
                        cpuScore += 1
                    }
                }, label: {
                    Image("dealbutton")
                    
                })
                Spacer()
                HStack{
                    VStack {
                        Text("Player")
                            .font(.title2)
                            .foregroundColor(Color.white)
                            .padding(.bottom,10)
                        Text(String(playerScore))
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
                    }.padding(.trailing, 125)
                    VStack {
                        Text("CPU")
                            .font(.title2)
                            .foregroundColor(Color.white)
                            .padding(.bottom,10)
                        Text(String(cpuScore))
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
                    }
                }
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
