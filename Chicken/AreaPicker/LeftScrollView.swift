import SwiftUI

struct LeftScrollView: View {
    @EnvironmentObject var tabIndex: Index
    @State private var index: Int = 0
    
    var body: some View {
        let columns = [GridItem(.flexible(), alignment: .leading)]
        
        ScrollView {
            LazyVGrid(columns: columns) {
                PickerButton(text: "地區", isSelected: .constant(index == 1))
                    .onTapGesture { onTapped(ii: 1) }
                Divider()
                PickerButton(text: "捷運", isSelected: .constant(index == 2))
                    .onTapGesture { onTapped(ii: 2) }
                Divider()
                PickerButton(text: "校園", isSelected: .constant(index == 3))
                    .onTapGesture { onTapped(ii: 3) }
                Divider()
                PickerButton(text: "附近", isSelected: .constant(index == 4))
                    .onTapGesture { onTapped(ii: 4) }
                Divider()
            }
        }
    }
    
    private func onTapped(ii: Int) {
        index = ii
        tabIndex.index2 = ii
        tabIndex.index = ii
    }
}

struct LeftScrollView_Previews: PreviewProvider {
    static let areas = City.citys
    static var previews: some View {
        LeftScrollView()
            .environmentObject(Index(index: 0, index1: 0, index2: 0, index3: 0))
    }
}
