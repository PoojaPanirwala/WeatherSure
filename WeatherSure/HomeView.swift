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
                        Text("LOCATIONS")
                        .foregroundColor(Color.brown)
                        .font(.system(size: 26, weight: .bold))
                        .offset(y: -UIScreen.main.bounds.height / 3)
                            List {
                                
                                // Show current location at the top
                                HStack {
                                    
                                    Text("Current Location")
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
                                .padding(.vertical)
                                HStack {
                                    Text("Los Angeles")
                                    Spacer()
                                    Text("70°F")
                                }
                                .padding(.vertical)
                                HStack {
                                    Text("Chicago")
                                    Spacer()
                                    Text("55°F")
                                }
                                .padding(.vertical)
                            }
                            .listStyle(PlainListStyle())
                            .padding(.top, 50)
                            .foregroundColor(Color.brown)
                            .font(.system(size: 22, weight: .medium))
                            .offset(y: UIScreen.main.bounds.height / 5)
                        
                        
                        // Search bar
                        TextField("Search here", text: $search)
                            .padding()
                            .background(Color.white)
                            .cornerRadius(30)
                            .padding(.horizontal)
                            .padding(.bottom, 10)
                            .offset(y: -UIScreen.main.bounds.height / 4)
                    }
                    
                    //.navigationBarTitle(Text("Home"))
                }
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
                NavigationView {
                    // Second tab content for Saved Locations
                    ZStack {
                        Color(red: 0.902, green: 0.890, blue: 0.851)
                            .ignoresSafeArea(.all)
                        Text("Saved LOCATIONS")
                        .foregroundColor(Color.brown)
                        .font(.system(size: 24, weight: .bold))
                        .offset(y: -UIScreen.main.bounds.height / 3)
//                        .offset(x:-UIScreen.main.bounds.width / 6)
                        List {
                            // Example location and temperature data
                            HStack {
                                Text("New York")
                                Spacer()
                                Text("60°F")
                            }
                            .padding(.vertical)
                            HStack {
                                Text("Los Angeles")
                                Spacer()
                                Text("70°F")
                            }
                            .padding(.vertical)
                            HStack {
                                Text("Chicago")
                                Spacer()
                                Text("55°F")
                            }
                            .padding(.vertical)
                        }
                        .foregroundColor(Color.brown)
                        .font(.system(size: 22, weight: .medium))
                        .listStyle(PlainListStyle())
                        .padding(.top, 50)
                        .offset(y: UIScreen.main.bounds.height / 10)
                        
                    }
                }
            
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
            .edgesIgnoringSafeArea(.top) // Ignore the safe area at the top
        }
    }
    struct HomeView_Previews: PreviewProvider {
        static var previews: some View {
            HomeView()
        }
    }
}
