//
//  AnimatedRefreshView.swift
//  IOS-Dundee-Base
//
//  Created by Ed on 26/11/2024.
//

import SwiftUI

struct AnimatedRefreshView: View {
    @State var items = Array(1...15)
    
    var body: some View {
        
        ScrollView {
            VStack {
                ForEach(items, id: \.self) {
                    item in Text( "Item no: \(item)")
                }
            }
        }.refreshable {
            await refreshAction()
        }
    }
        //Logic for refreshing..
        
        func refreshAction() async {
            try? await Task.sleep(for: .seconds(1))
            
            let randomNoOfItems = Int.random(in: 1...30)
            items = Array(1...randomNoOfItems)
        }
}

#Preview {
    AnimatedRefreshView()
}
