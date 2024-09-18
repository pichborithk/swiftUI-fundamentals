//
//  ContentView.swift
//  SwiftUI-Weather
//
//  Created by Pichborith Kong on 9/17/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isNight = false
    
    var body: some View {
        ZStack {
            BackgroundView(isNight: isNight)
            VStack {
                CityTextView(cityName: "Cupertino, CA")
                MainWeatherStatusView(imageName: "cloud.sun.fill", temperature: 76)
                Spacer()
                
                HStack(spacing: 24) {
                    WeatherDayView(dayOfWeek: "TUE",
                                   imageName: "cloud.sun.fill",
                                   temperature: 76)
                    WeatherDayView(dayOfWeek: "WED",
                                   imageName: "cloud.sun.fill",
                                   temperature: 76)
                    WeatherDayView(dayOfWeek: "THU",
                                   imageName: "cloud.sun.fill",
                                   temperature: 76)
                    WeatherDayView(dayOfWeek: "FRI",
                                   imageName: "cloud.sun.fill",
                                   temperature: 76)
                    WeatherDayView(dayOfWeek: "SAT",
                                   imageName: "cloud.sun.fill",
                                   temperature: 76)
                    
                }
           
                Spacer()
                
                Button {
                    isNight.toggle()
                } label: {
                    Text("Change Day Time")
                        .frame(width: 200, height: 50)
                        .background(.blue.gradient)
                        .foregroundColor(.white)
                        .font(.system(size: 16, weight: .bold))
                        .cornerRadius(10)
                }
                
                Spacer()
            }
        }
    }
}

#Preview {
    ContentView()
}

struct WeatherDayView: View {
    
    var dayOfWeek: String
    var imageName: String
    var temperature: Int
    
    var body: some View {
        VStack {
            Text(dayOfWeek)
                .font(.system(size: 24, weight: .medium))
                .foregroundColor(.white)
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
            Text("\(temperature)°")
                .font(.system(size: 28, weight: .medium))
                .foregroundColor(.white)
        }
    }
}

struct BackgroundView: View {
    
//    @Binding var isNight: Bool only use @Binding if we need to modify value of "isNight"
    var isNight: Bool
    
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [isNight ? .black : .blue, isNight ? .gray : .teal]),
                       startPoint: .topLeading,
                       endPoint: .bottomTrailing)
//        .edgesIgnoringSafeArea(.all)
        .ignoresSafeArea()
    }
}

struct CityTextView: View {
    
    var cityName: String
    
    var body: some View {
        Text(cityName)
            .font(.system(size: 32, weight: .medium, design: .default))
            .foregroundColor(.white)
            .padding()
    }
}

struct MainWeatherStatusView: View {
    
    var imageName: String
    var temperature: Int
    
    var body: some View {
        VStack(spacing: 8) {
            Image(systemName: imageName)
                .symbolRenderingMode(.palette)
//                .renderingMode(.original)
                .resizable()
                .scaledToFit()
                .foregroundStyle(.pink, .green, .yellow)
                .aspectRatio(contentMode: .fit)
                .frame(width: 180, height: 180)
            Text("\(temperature)°")
                .font(.system(size: 70, weight: .medium))
                .foregroundColor(.white)
        }
    }
}
