import SwiftUI
import SwiftUI

struct TextExampleView: View {
    @State var name = ""
    @State var password = ""
    @State var largeTextBox = ""
    
    var body: some View {
        
        // Standard text box...
        Text("Blank text box...")
        
        //Text input
        TextField("Enter your name...", text: $name).padding(10).frame(width: .infinity)
        Text("\(name)")
        
        //Secure input
        SecureField("Enter your password...", text: $password).padding(10).frame(width: .infinity)
        
        //Multiline input
        TextEditor(text:$largeTextBox).padding(5).border(Color.blue, width: 2).frame(height: 100)
        //
        Text(largeTextBox).font(.title)
        
        //truncate
        
        Text("lorem ipson lorem ipson lorem ipson lorem ipson lorem ipson lorem ipson  ").lineLimit(4).truncationMode(.tail)
    }
}
#Preview {
    TextExampleView()
}

