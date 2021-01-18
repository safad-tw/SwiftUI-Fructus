//
//  OnboardView.swift
//  SwiftUI-Fructus
//
//  Created by Mohammad Safad on 15/01/2021.
//

import SwiftUI

struct OnboardView: View {
    var fruits: [Fruit] = fruitsData
    var body: some View {
        TabView {
            
            ForEach(fruits[0...5]) { item in
                FruitCardView(fruit: item)
            }
        }
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
       
    }
}

struct OnboardView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardView(fruits: fruitsData)
    }
}
