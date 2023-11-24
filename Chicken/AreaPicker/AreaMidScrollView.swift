import SwiftUI

struct AreaMidScrollView: View {
    let areas: [City]
    @State private var index: Int = 0
    @EnvironmentObject var tabIndex: Index
        
    var body: some View {
        let columns = [GridItem(.flexible(), alignment: .leading)]
        
        ScrollView {
            LazyVGrid(columns: columns) {
                ForEach(areas, id: \.self) { area in
                    PickerButton(text: area.city, isSelected: .constant(index == area.i))
                        .onTapGesture { onTapped(ii: area.i) }
                    Divider()
                }
            }
        }
    }
    
    private func onTapped(ii: Int) {
        index = ii
        tabIndex.index2 = ii
    }
}

struct AreaMidScrollView_Previews: PreviewProvider {
    static let areas = City.citys
    static var previews: some View {
        AreaMidScrollView(areas: areas)
    }
}
