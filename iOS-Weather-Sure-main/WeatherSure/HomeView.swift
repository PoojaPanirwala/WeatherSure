//
//  HomeView.swift
//  WeatherSure
//
//  Created by Pooja Panirwala on 2023-03-22.
//

import SwiftUI

struct HomeView: View {
    @State private var search = ""
    var body: some View {
        ZStack {
            
            TabView {
                // First tab content for Home
                NavigationView {
                    ZStack {
                        Color(red: 0.902, green: 0.890, blue: 0.851)
                            .ignoresSafeArea(.all)
                       
                            List {
                                
                                // Show current location at the top
                                HStack {
                                    
                                    Text("Current Location")
                                        .bold()
                                    Spacer()
                                    Text("72°F")
                                }
                                
                                .padding(.vertical)
                                
                                // Example location and temperature data
                                HStack {
                                    Text("New York")
                                    Spacer()
                                    Text("60°F")
                                }
                                HStack {
                                    Text("Los Angeles")
                                    Spacer()
                                    Text("70°F")
                                }
                                HStack {
                                    Text("Chicago")
                                    Spacer()
                                    Text("55°F")
                                }
                            }
                            
                            .listStyle(PlainListStyle())
                            .padding(.top, 50)
                            .offset(y: UIScreen.main.bounds.height / 10)
                        
                        
                        // Search bar
                        TextField("Search", text: $search)
                            .padding()
                            .background(Color.white)
                            .cornerRadius(30)
                            .padding(.horizontal)
                            .padding(.bottom, 10)
                            .offset(y: -UIScreen.main.bounds.height / 3)
                    }
                    
                    //.navigationBarTitle(Text("Home"))
                }
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
                
                // Second tab content for Saved Locations
                Text("Saved Locations")
                    .tabItem {
                        Image(systemName: "location")
                        Text("Saved Locations")
                    }
                
                // Third tab content for Settings
                Text("Settings")
                    .tabItem {
                        Image(systemName: "gear")
                        Text("Settings")
                    }
                    
            }
            .accentColor(Color.brown)
            .foregroundColor(Color.black)
        }
    }
    struct HomeView_Previews: PreviewProvider {
        static var previews: some View {
            HomeView()
        }
    }
}
