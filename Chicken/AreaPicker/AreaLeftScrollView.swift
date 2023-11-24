import SwiftUI

struct AreaLeftScrollView: View {
    let areas: [City]
    @EnvironmentObject var tabIndex: Index
    @State private var index: Int = 0
    
    var body: some View {
        let columns = [GridItem(.flexible(), alignment: .leading)]
        
        ScrollView {
            LazyVGrid(columns: columns) {
                PickerButton(text: "地區", isSelected: .constant(index == 0))
                    .onTapGesture { onTapped(ii: 0) }
                Divider()
                PickerButton(text: "捷運", isSelected: .constant(index == 1))
                    .onTapGesture { onTapped(ii: 1) }
                Divider()
                PickerButton(text: "校園", isSelected: .constant(index == 2))
                    .onTapGesture { onTapped(ii: 2) }
                Divider()
                PickerButton(text: "附近", isSelected: .constant(index == 3))
                    .onTapGesture { onTapped(ii: 3) }
                Divider()
            }
        }
    }
    
    private func onTapped(ii: Int) {
        index = ii
    }
}

struct AreaLeftScrollView_Previews: PreviewProvider {
    static let areas = City.citys
    static var previews: some View {
        AreaLeftScrollView(areas: areas)
    }
}
