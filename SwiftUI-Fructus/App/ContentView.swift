//
//  ContentView.swift
//  SwiftUI-Fructus
//
//  Created by Mohammad Safad on 15/01/2021.
//

import SwiftUI

struct ContentView: View {
    
    var fruits: [Fruit] = fruitsData
    
    var body: some View {
        NavigationView{
            List {
                ForEach(fruits.shuffled()) { item in
                    NavigationLink(
                        destination: FruitDetailView(fruit: item)) {
                        FruitRowView(fruit: item).padding(.vertical,4)
                    }
                    }
                   
            }
            .navigationTitle("Fruits")
        }
       
       
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruits:fruitsData)
    }
}
