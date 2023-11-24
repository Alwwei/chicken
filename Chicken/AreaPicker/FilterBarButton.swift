import SwiftUI

struct FilterBarButton: View {
    let text: String
    @Binding var isSelected: Bool
    
    var body: some View {
        Text(text)
            .foregroundColor(isSelected ? .black : .gray)
            .font(.custom("Avenir", size: 20))
            .padding(.bottom, 10)
    }
}

struct FilterBarButton_Previews: PreviewProvider {
    static var previews: some View {
        FilterBarButton(text: "title", isSelected: .constant(true))
    }
}
