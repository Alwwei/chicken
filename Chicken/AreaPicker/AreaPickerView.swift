import SwiftUI

struct AreaPickerView: View {
    @StateObject private var tabIndex: Index = Index(index1: 0, index2: 0)
    let areas: [City]
    
    var body: some View {
        VStack {
            FilterBarView()
                .environmentObject(tabIndex)
            if tabIndex.index1 == 0 {
                AreaView(areas: areas)
                    .environmentObject(tabIndex)
            } else if tabIndex.index1 == 1 {
                TimeView()
                    .environmentObject(tabIndex)
            } else if tabIndex.index1 == 2 {
                FilterView()
                    .environmentObject(tabIndex)
            } else {
                Spacer()
                    .frame(maxHeight: 1)
            }
        }
    }
}

struct AreaPickerView_Previews: PreviewProvider {
    static let areas = City.citys
    static var previews: some View {
        AreaPickerView(areas: areas)
    }
}
