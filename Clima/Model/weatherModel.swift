//
//  weatherModel.swift
//  Clima
//
//  Created by Blaine Beltran on 5/18/21.
//  Copyright © 2021 App Brewery. All rights reserved.
//

import Foundation

struct WeatherModel {

    // Stored properties
    let conditionId: Int
    let cityName: String
    let temperature: Double
    
    var  temperatureString: String {
        return String(format: "%.1f", temperature)
    }
    
    // Computed Property
    var conditionName: String {
        switch conditionId {
        case 200...232:
            return "cloud.bolt.rain"
        case 300...321:
            return "cloud.drizzle"
        case 500...531:
            return "cloud.rain"
        case 600...622:
            return "cloud.snow"
        case 701...781:
            return "aqi.medium"
        case 801...804:
            return "cloud"
        default:
            return "sun.max.fill"
        }
    }
}
