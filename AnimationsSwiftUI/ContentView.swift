//
//  ContentView.swift
//  AnimationsSwiftUI
//
//  Created by Алексей on 14.08.2021.
//

import SwiftUI

struct ContentView: View {
    @State private var showDetail = false
    
    var body: some View {
        ZStack{
            Color(red: 60 / 255, green: 100 / 255, blue: 126 / 255, opacity: 1)
                .ignoresSafeArea()
            VStack{
                ZStack{
                    Image("410814-PDWTNO-879")
                        .resizable()
                        .frame(width: 500, height: 500)
                        Image("ufo")
                            .resizable()
                            .frame(width: 50, height: 50)
                            .offset(y: -165)
                            .rotationEffect(.degrees(showDetail ? 0 : 360))
                            .animation(.linear.speed(0.1).repeatForever(autoreverses: false))
                            .onAppear(perform: {
                                self.showDetail.toggle()
                            })
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
