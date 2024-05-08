//
//  ContentView.swift
//  WeatherForecast
//
//  Created by Lucca Dias on 08/05/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            DayForecast(
                day: "Mon",
                highTemperature: 23,
                lowTemperature: 30,
                iconType: "cloud.rain.fill",
                iconColor: Color.blue
            )
            
            DayForecast(
                day: "Tue",
                highTemperature: 23,
                lowTemperature: 30,
                iconType: "sun.max.fill",
                iconColor: Color.yellow
            )
            
        }
    }
}

#Preview {
    ContentView()
}

struct DayForecast: View {
    
    let day: String
    let highTemperature: Int
    let lowTemperature: Int
    
    let iconType: String
    let iconColor: Color
        
    var body: some View {
        VStack {
            Text(day)
                .font(.system(size: 25))
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
            Image(systemName: iconType)
                .foregroundStyle(iconColor)
                .font(Font.largeTitle)
                .padding(5)
            Text("High: \(highTemperature)")
            Text("Low: \(lowTemperature)")
            
        }
        .padding()
    }
}
