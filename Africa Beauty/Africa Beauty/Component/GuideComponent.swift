//
//  GuideComponent.swift
//  Africa Beauty
//
//  Created by Erasmo J.F Da Silva on 19/07/22.
//  SwiftUI ♡ Better Apps. Less Code
//  https://erasmojf.github.io/
//  Fidju de Bideira de Feira de Caracol

import SwiftUI

struct GuideComponent: View {
    //MARK: - PROPERTIES
    var title: String
    var subtitle: String
    var description: String
    var icon: String
    
    var body: some View {
        HStack(alignment: .center, spacing: 20) {
            
            Image(systemName: icon)
                .font(.largeTitle)
                .foregroundColor(Color.pink)
            
            VStack(alignment: .leading, spacing: 4) {
                HStack {
                    Text(title.uppercased())
                        .font(.title)
                        .fontWeight(.heavy)
                    Spacer()
                    Text(subtitle.uppercased())
                        .font(.footnote)
                        .fontWeight(.heavy)
                        .foregroundColor(Color.pink)
                }
                Divider().padding(.bottom, 4)
                Text(description)
                    .font(.footnote)
                    .foregroundColor(Color.secondary)
                    .fixedSize(horizontal: false, vertical: true)
            }
        }
    }
}

struct GuideComponent_Previews: PreviewProvider {
    static var previews: some View {
        GuideComponent(title: "Title", subtitle: "Swipe right", description: "This is a placeholder sentence. This is a placeholder sentence. This is a placeholder sentence. ", icon: "heart.circle")
            .previewLayout(.sizeThatFits)
    }
}
