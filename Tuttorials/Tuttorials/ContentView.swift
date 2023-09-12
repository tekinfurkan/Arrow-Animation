//
//  ContentView.swift
//  Tuttorials
//
//  Created by utku on 1.09.2023.
//

import SwiftUI

struct ContentView: View {
    @State var Animate : Bool = false
    var body: some View {
        ZStack {
            Color.red.ignoresSafeArea()
            VStack {
                Spacer()
                    Image(systemName: "arrow.up")
                        .font(.system(size: 60))
                        .bold()
                        .offset(y: Animate ? -500 : 0)
                        .animation(.easeOut, value: Animate)
                    HStack {
                        Image(systemName: "arrow.left")
                            .font(.system(size: 60))
                            .bold()
                            .padding(.horizontal, 15)
                            .offset(x: Animate ? -300 : 0)
                            .animation(.easeOut, value: Animate)
                            
                            
                        Image(systemName: "arrow.right")
                            .font(.system(size: 60))
                            .bold()
                            .padding(.horizontal, 15)
                            .offset(x: Animate ? 300 : 0)
                            .animation(.easeOut, value: Animate)
                    }
                    Image(systemName: "arrow.down")
                        .font(.system(size: 60))
                        .bold()
                        .offset(y: Animate ? 500 : 0)
                        .animation(.easeOut, value: Animate)
                
                Spacer()
                Button {
                    Animate.toggle()
                } label: {
                    Image("archer")
                        .resizable()
                        .frame(width:70,height: 70)
                        .foregroundColor(.white)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

