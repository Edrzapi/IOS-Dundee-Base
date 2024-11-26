
import SwiftUI

struct ExampleView: View {
    var body: some View {
        
        //VStack - Vertical
        VStack(spacing: 30) {
            Text("Top")
            Text("Middle")
            Text("Bottom")
        }.padding(15)
        
        Spacer()
        //Hstack - Horizontal
        
        ScrollView(.horizontal) {
            Text("Header").font(.largeTitle).padding(15).background(Color.blue).frame(maxWidth: .infinity).cornerRadius(5)
            HStack(spacing: 10) {
                ForEach(1...30, id: \.self) { item in Text("\(item)")
                }
            }.padding(15)
        }
        Spacer()
        //ZStack - Z axis (front/back)
        
        ZStack {
            Image(systemName: "star.fill").resizable().scaledToFit().frame().foregroundColor(Color.blue)
            
        }
        Text("Text ontop of image").font(.largeTitle).offset(y: -200)
    
    }}
        
        #Preview {
            ExampleView()
        }

