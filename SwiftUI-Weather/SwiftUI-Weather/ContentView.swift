//
//  ContentView.swift
//  SwiftUI-Weather
//
//  Created by Ali Durna on 10.01.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: [.blue,.white]), 
                           startPoint: .topLeading,
                           endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            VStack{
                Text("Cupertino,CA")
                    .font(.system(size: 32,weight: .medium,design: .default))
                    .foregroundColor(.white)
                    .padding()
                
                VStack(spacing:10){
                    Image(systemName: "cloud.sun.fill")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width:180,height:180)
                        
                    Text("76°")
                        .font(.system(size: 76,weight: .medium))
                        .foregroundColor(.white)
                    
                }
                
                Spacer()
            
                
                    
            }
        }
       
    }
}

#Preview {
    ContentView()
}
