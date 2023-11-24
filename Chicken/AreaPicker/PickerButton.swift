import SwiftUI

struct PickerButton: View {
    let text: String
    @Binding var isSelected: Bool
    
    var body: some View {
        Text(text)
            .foregroundColor(isSelected ? .black : .gray)
            .font(.custom("Avenir", size: 20))
            .padding()
    }
}

//struct PickerButton_Previews: PreviewProvider {
//    static var previews: some View {
//        Button(text: "篩選", isSelected: .constant(true))
//    }
//}
