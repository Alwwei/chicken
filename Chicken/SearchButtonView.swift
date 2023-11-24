import SwiftUI

struct SearchButtonView: View {
    @State private var isEditing: Bool = false
    @Binding var text: String
    
    var body: some View {
        Image(systemName: "magnifyingglass")
            .onTapGesture {
                TextField("搜尋文章", text: $text)
            }
    }
}

struct SearchButtonView_Previews: PreviewProvider {
    static var previews: some View {
        SearchButtonView(text: .constant(""))
    }
}
