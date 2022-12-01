//
//  ContentView.swift
//  war-challenge
//
//  Created by Christopher Ching on 2020-10-28.
//

import SwiftUI

struct ContentView: View {
    
    @State private var playerCard = "card5"
    @State private var cpuCard = "card9"
    @State private var playerScore = 0
    @State private var cpuScore = 0
    
    
    var body: some View {
        ZStack {
            Image("background")
                .resizable()
                .ignoresSafeArea()
            
            VStack {
                Spacer()
                Image("logo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding([.leading, .trailing], 100.0)
                    .padding(.top, 50.0)
                    
                Spacer()
                HStack {
                    Image(playerCard)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                    
                    Spacer()
                    Spacer()
                    Spacer()
                    Image(cpuCard)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                }
                .padding(.horizontal, 55.0)
                Spacer()
                
                Button(action: {
                    let playerRand = Int.random(in: 2...14)
                    let cpuRand = Int.random(in: 2...14)
                    
                    playerCard = "card" + String(playerRand)
                    cpuCard = "card" + String(cpuRand)
                    
                    if playerRand > cpuRand {
                        playerScore += 1
                    } else if playerRand < cpuRand {
                        cpuScore += 1
                    }
                    
                }, label: {
                    
                    Image("dealbutton")
                        .resizable()
                        .scaledToFit()
                        .padding(.horizontal, 130.0)
                })
                
                Spacer()
                
                
                HStack {
                    Spacer()
                    VStack {
                        Text("Player")
                            .font(.headline)
                            .padding(.bottom, 1.0)
                        Text(String(playerScore))
                            .font(.largeTitle)
                    }.foregroundColor(Color.white)
                    Spacer()
                    VStack {
                        Text("CPU")
                            .font(.headline)
                            .padding(.bottom, 1.0)
                        Text(String(cpuScore))
                            .font(.largeTitle)
                    }.foregroundColor(Color.white)
                    Spacer()
                }
//                .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
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
