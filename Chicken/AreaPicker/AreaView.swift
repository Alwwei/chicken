import SwiftUI

struct AreaView: View {
    let areas: [City]
    @EnvironmentObject var tabIndex: Index
    
    
    var body: some View {
        if tabIndex.index1 == 0 {

        }
        HStack {
            AreaLeftScrollView(areas: areas)
                .frame(maxWidth: .infinity, alignment: .leading)
                .environmentObject(tabIndex)
            Divider()
            AreaMidScrollView(areas: areas)
                .frame(maxWidth: .infinity, alignment: .leading)
                .environmentObject(tabIndex)
            Divider()
            AreaRightScrollView(area: areas[tabIndex.index2])
                .frame(maxWidth: .infinity, alignment: .leading)
                .environmentObject(tabIndex)
        }
        HStack {
            Text("a")
            
        }
    }
}

struct AreaView_Previews: PreviewProvider {
    static let areas = City.citys
    static var previews: some View {
        AreaView(areas: areas)
    }
}
