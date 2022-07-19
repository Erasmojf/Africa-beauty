//
//  ContentView.swift
//  Africa Beauty
//
//  Created by Erasmo J.F Da Silva on 19/07/22.
//  SwiftUI ♡ Better Apps. Less Code
//  https://erasmojf.github.io/
//  Fidju de Bideira de Feira de Caracol

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HeaderView()
            Spacer()
            CardView(african: africabeautyData[2])
            
            Spacer()
            
            FooterView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
