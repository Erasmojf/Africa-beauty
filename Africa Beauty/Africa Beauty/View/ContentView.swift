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
    
    //MARK: - CARDVIEWS
    var cardViews: [CardView] = {
        var views = [CardView]()
        for index in 0..<2 {
            views.append(CardView(african: africabeautyData[index]))
        }
        return views
    }()
    
    //MARK: - TOP CARD
    private func isTopCard(cardView: CardView) -> Bool {
        guard let index = cardViews.firstIndex(where: { $0.id == cardView.id}) else {
            return false
        }
        return index == 0
    }
    
    var body: some View {
        VStack {
            //MARK: - HEADER
            HeaderView(showGuideView: $showGuide, showInfoView: $showInfo)
            Spacer()
            
            //MARK: - CARDS
            ZStack {
                ForEach(cardViews) { cardView in
                    cardView
                        .zIndex(self.isTopCard(cardView: cardView) ? 1 : 0)
                }
            }
            .padding(.horizontal)
            
            Spacer()
            
            //MARK: - FOOTER
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
