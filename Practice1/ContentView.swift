
import SwiftUI

struct ContentView: View {
    @State var number = 0
    var body: some View {
        VStack {
            Spacer()
            Text("\(number)")
                .font(.largeTitle)
            Spacer()
            HStack {
                Spacer()
                CustomButton(number: $number, amountChenge: "-1")
                Spacer()
                CustomButton(number: $number, amountChenge: "+1")
                Spacer()
            }
            Spacer()
        }
    }
}

struct CustomButton: View {
    @Binding var number: Int
    let amountChenge: String
    var body: some View {
        Button(action: {
            number += Int(amountChenge) ?? 0
        }) {
            Text("\(amountChenge)")
                .font(.largeTitle)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
