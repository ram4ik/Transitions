//
//  ContentView.swift
//  Transitions
//
//  Created by ramil on 27/09/2019.
//  Copyright © 2019 com.ri. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var show = false
    var body: some View {
        VStack {
            Spacer()
            
            if show {
                LabelView()
                    .animation(.easeInOut(duration: 1.0))
                    .transition(.opacity)
            }
            
            Spacer()
            
            Button("Animate") {
                self.show.toggle()
            }.padding(20)
        }
    }
}

struct LabelView: View {
    var body: some View {
        Text("Hi there!")
            .padding(10)
            .font(.title)
            .foregroundColor(.white)
            .background(RoundedRectangle(cornerRadius: 8).fill(Color.green).shadow(color: .gray, radius: 3))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
