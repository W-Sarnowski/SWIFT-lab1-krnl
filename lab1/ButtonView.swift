import SwiftUI

struct ButtonView: View {
    var name: String
    @Binding var text: String
    @Binding var val1: Int
    @Binding var val2: Int
    @Binding var firstVal: Bool
    
    var body: some View {
        Button(name) {
            text = name
            if (firstVal) {
                val1 = Int(name)!
            }
            else {
                val2 = Int(name)!
            }
            firstVal.toggle()
        }
            .frame(width: 100, height: 60)
            .border(.black, width: 2)
            .font(.largeTitle)
    }
}
