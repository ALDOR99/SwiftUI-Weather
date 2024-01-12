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
            BackgroundView(topColor: .blue, 
                           bottomColor: Color("lightBlue"))
            VStack{
                
                MainWheatherStatusView(imageName: "cloud.sun.fill", temperature: 76)

                    HStack(spacing:20){
                        WheatherDayView(dayOfWeek: "TUE",
                                        imageName: "cloud.sun.fill",
                                        temperature: 74)
                        WheatherDayView(dayOfWeek: "WED",
                                        imageName: "sun.max.fill",
                                        temperature: 88)
                        WheatherDayView(dayOfWeek: "THU",
                                        imageName: "wind.snow",
                                        temperature: 55)
                        WheatherDayView(dayOfWeek: "FRI",
                                        imageName: "sunset.fill",
                                        temperature: 60)
                        WheatherDayView(dayOfWeek: "SAT",
                                        imageName: "snow",
                                        temperature: 25)
                }
                Spacer()
            
                Button {
                    print("tapped")
                } label:{
                    WeatherButton(title: "Change Day Time", textColor: .blue, 
                        backgroundColor: .white)
                }
                   Spacer()
            }
        }
        }
       
    }


#Preview {
    ContentView()
}

struct WheatherDayView: View {
    var dayOfWeek : String
    var imageName : String
    var temperature : Int
    
    var body: some View {
        VStack{
            Text(dayOfWeek)
                .font(.system(size: 16, weight: .medium,design: .default))
                .foregroundColor(.white)
            
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width:40,height:40)
            
            Text("\(temperature)")
                .font(.system(size: 28,weight: .medium))
                .foregroundColor(.white)
            
        }
    }
}

struct BackgroundView: View {
    
    var topColor: Color
    var bottomColor : Color
    
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [topColor,bottomColor]),
                       startPoint: .topLeading,
                       endPoint: .bottomTrailing)
        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
}

struct CityTextView: View {
    var cityName : String
    
    var body: some View {
        Text(cityName)
            .font(.system(size: 32,weight: .medium,design: .default))
            .foregroundColor(.white)
            .padding()
    }
}

struct MainWheatherStatusView:View {
    var imageName : String
    var temperature: Int
    
    var body: some View {
        VStack{
            CityTextView(cityName: "Cupertino,CA")
            
            VStack(spacing:10){
                Image(systemName: imageName)
                    .renderingMode(.original)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width:180,height:180)
                
                Text("\(temperature)°")
                    .font(.system(size: 76,weight: .medium))
                    .foregroundColor(.white)
            }
            
            .padding(.bottom,40)
        }
    }
}


