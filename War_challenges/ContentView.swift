//
//  ContentView.swift
//  War_challenges
//
//  Created by Akash Belekar on 08/09/23.
//

import SwiftUI

struct ContentView: View {
    var diceNumber:[String] = ["DiceOne","DiceTwo","DiceThree","DiceFour","DiceFive","DiceSix"]
    
    @State var dice1 = "DiceOne"
    @State var dice2 = "DiceTwo"
    @State var playerScore = 0
    @State var cupScore = 0
    
    var body: some View {
        ZStack{
            Image("GreenBackground").resizable().ignoresSafeArea()
            VStack{
                Spacer()
                Image("DiceeLogo")
                Spacer()
                
                HStack{
                    Spacer()
                    Image(dice1)
                    Spacer()
                    Image(dice2)
                    Spacer()
                }
                Spacer()
                Button {
                    //Action
                    dice1 = diceNumber.randomElement() ?? "DiceThree"
                    dice2 = diceNumber.randomElement() ?? "DiceThree"
                    
                    playerScore += 1
                    cupScore += 1
                    
                } label: {
                    Image("DiceeLogo")
                }

                
                Spacer()
                
                HStack{
                    Spacer()
                    VStack{
                       
                        Text("Player")
                            .font(.headline)
                            .foregroundColor(Color.white)
                            .padding(.bottom, 20.0)
                            
                        Text(String(playerScore))
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
                       
                    }
                    Spacer()
                    VStack{
                        
                        Text("CPU")
                            .font(.headline)
                            .foregroundColor(Color.white)
                            .padding(.bottom, 20.0)
                        Text(String(cupScore))
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
                       
                    }
                    Spacer()
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
