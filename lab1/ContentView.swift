import SwiftUI

struct ContentView: View {
    @State var text: String = ""
    @State var val1: Int = 0
    @State var val2: Int = 0
    @State var firstVal: Bool = true
    @State var op: String = ""
    
    var body: some View {
        VStack {
            /*
             Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
                .foregroundColor(.accentColor)
             */
            Text(text)
                .foregroundColor(.red)
                .font(.largeTitle)
                .frame(width: 315, height: 60)
                .border(.black, width: 2)
            HStack {
                ForEach(0 ..< 3, id: \.self) { index in
                    ButtonView(name: String(index + 1), text: $text, val1: $val1, val2: $val2, firstVal: $firstVal)
                }
            }
            HStack {
                ForEach(3 ..< 6, id: \.self) { index in
                    ButtonView(name: String(index + 1), text: $text, val1: $val1, val2: $val2, firstVal: $firstVal)
                }
            }
            HStack {
                ForEach(6 ..< 9, id: \.self) { index in
                    ButtonView(name: String(index + 1), text: $text, val1: $val1, val2: $val2, firstVal: $firstVal)
                }
            }
            HStack {
                ButtonView(name: "0", text: $text, val1: $val1, val2: $val2, firstVal: $firstVal)
                
            }
            Button("Oblicz") {
                text = String(Calculation().add(of: val1, with: val2)) 
            }
                .frame(width: 315, height: 60)
                .border(.black, width: 2)
                .font(.largeTitle)
        }
        .frame(width: 315, height: 60)
        .padding()
    }
}

#Preview {
    ContentView()
}
