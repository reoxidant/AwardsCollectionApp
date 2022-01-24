//
//  ShapesView.swift
//  AwardsCollectionApp
//
//  Created by Виталий Шаповалов on 14.12.2021.
//  Copyright © 2021 Виталий Шаповалов. All rights reserved.
//

import SwiftUI

struct ShapesView: View {
    
    let awards = Award.getAwards()
    
    var activeAwards: [Award] {
        awards.filter { $0.awarded }
    }
    
    var body: some View {
        NavigationView {
            CustomGridView(items: activeAwards, columns: 2) { itemSize, award in
                VStack {
                    award.awardView
                    Text(award.title)
                }
                .padding()
                .frame(width: itemSize, height: itemSize)
            }
            .navigationBarTitle("Your awards: \(activeAwards.count)")
        }
    }
}

struct ShapesView_Previews: PreviewProvider {
    static var previews: some View {
        ShapesView()
    }
}
