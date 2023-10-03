import SwiftUI

struct OperatorButtonView: View {
    var name: String
    @Binding var op: String
    
    var body: some View {
        Button(name) {
            op = name
        }
            .frame(width: 100, height: 60)
            .border(.black, width: 2)
            .font(.largeTitle)
    }
}
