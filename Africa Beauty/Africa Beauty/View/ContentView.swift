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
    //MARK: - PROPERTIES
    @State var showAlert: Bool = false
    @State var showGuide: Bool = false
    @State var showInfo: Bool = false
    var body: some View {
        VStack {
            HeaderView(showGuideView: $showGuide, showInfoView: $showInfo)
            Spacer()
            CardView(african: africabeautyData[2])
            
            Spacer()
            
            FooterView(showBookingAlert: $showAlert)
        }
        .alert(isPresented: $showAlert) {
            Alert(title: Text("SUCCESS"), message: Text("Wishing a lovely and most precious of the times together for the amazing couple."), dismissButton: .default(Text("Happy Honeymoon ♡!")))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
