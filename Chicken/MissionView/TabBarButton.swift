import SwiftUI

struct TabBarButton: View {
    let text: String
    @Binding var isSelected: Bool
    
    var body: some View {
        Text(text)
            .fontWeight(isSelected ? .heavy : .regular)
            .foregroundColor(isSelected ? .black : .gray)
            .font(.custom("Avenir", size: 25))
            .padding(.bottom, 10)
    }
}

//struct TabBarButton_Previews: PreviewProvider {
//    static var previews: some View {
//        TabBarButton(text: "title", isSelected: .constant(false))
//    }
//}
