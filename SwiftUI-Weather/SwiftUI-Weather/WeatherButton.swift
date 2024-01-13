//
//  WeatherButton.swift
//  SwiftUI-Weather
//
//  Created by Ali Durna on 12.01.2024.
//
import SwiftUI

struct WeatherButton: View {
    
    var title: String
    var textColor : Color
    var backgroundColor : Color
    
    var body: some View {
        
        Text(title)
            .frame(width: 280,height: 50)
            .background(backgroundColor.gradient)
            .foregroundColor(textColor)
            .font(.system(size: 20,weight: .bold,design: .default))
            .cornerRadius(10)
    }
}

struct WeatherButton_Previews:PreviewProvider{
    static var previews: some View{
        WeatherButton(title: "Test Title", textColor: .white, backgroundColor: .blue)
    }
}

