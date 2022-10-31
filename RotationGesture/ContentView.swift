//
//  ContentView.swift
//  RotationGesture
//
//  Created by Priscila Moro on 27/10/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var rotationAngle = Angle.degrees(0)
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Hello, world!")
                    .bold()
                    .padding()
                    .foregroundColor(.blue)
                    .frame(width: 200, height: 100)
                    .background(Color.yellow)
                    .cornerRadius(20)
                    .rotationEffect(rotationAngle)
                    // para actualizar el valor de rotationAngle
                    .gesture(
                        RotationGesture()
                            .onChanged({ angle in
                                rotationAngle = angle
                            })
                            .onEnded({ angle in
                                withAnimation {
                                    rotationAngle = angle
                                }
                            })
                    )
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
