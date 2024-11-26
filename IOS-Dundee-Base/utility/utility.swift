import Foundation

import SwiftUI
//specific style
struct CustomButtonStyle : ButtonStyle {
    func makeBody (configuration: Configuration) -> some View {
        configuration.label
            .padding(10)
            .background(Color.red)
            .foregroundColor(Color.blue)
            .cornerRadius(5)
    }
}


//Modifier

struct ButtonModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding(10)
            .background(Color.gray)
            .foregroundColor(Color.white)
            .cornerRadius(5)
    }
    
}
