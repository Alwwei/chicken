import SwiftUI

struct FindJobPickerView: View {
    @Binding var searchTags: [String]
    
    var body: some View {
        HStack {
            Picker("filter:", selection: $searchTags) {
                Text("台北市").tag("台北市")
                Text("台中市").tag("台中市")
                Text("台南市").tag("台南市")
            }
            Picker("filter:", selection: $searchTags) {
                Text("早班").tag("早班")
                Text("中班").tag("中班")
                Text("晚班").tag("晚班")
            }
            Picker("filter:", selection: $searchTags) {
                Text("類型").tag("類型")
            }
            Button(action: {
                
            }) {
                Label("推薦", systemImage: "circle")
            }
            .padding()
            .frame(maxWidth: .infinity, alignment: .trailing)
        }
    }
}

struct FindJobPickerView_Previews: PreviewProvider {
    static var previews: some View {
        FindJobPickerView(searchTags: .constant([""]))
    }
}
