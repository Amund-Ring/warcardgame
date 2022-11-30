//
//  ContentView.swift
//  warcardgame
//
//  Created by Amund Ring on 16/11/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Image("background").ignoresSafeArea()
            
            VStack {
                Spacer()
                Image("logo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding([.leading, .trailing], 100.0)
                    .padding(.top, 50.0)
                    
                Spacer()
                HStack {
                    Image("card3")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                    
                    Spacer()
                    Spacer()
                    Spacer()
                    Image("card4")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                }
                .padding(.horizontal, 55.0)
                Spacer()
                
                Button(action: {
                    print("I was clicked")
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
                        Text("0")
                            .font(.largeTitle)
                    }.foregroundColor(Color.white)
                    Spacer()
                    VStack {
                        Text("CPU")
                            .font(.headline)
                            .padding(.bottom, 1.0)
                        Text("0")
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
