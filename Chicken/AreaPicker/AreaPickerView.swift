import SwiftUI

struct AreaPickerView: View {
    @StateObject private var tabIndex: Index = Index(index: 0, index1: 0, index2: 0, index3: 0)
    @State var citys: [City]
    let mrts: [MRT]
    let campus: [School]
    let nearby: [Nearby]
    
    var body: some View {
        VStack {
            FilterBarView()
                .frame(maxHeight: 50, alignment: .top)
//            VStack {
                if tabIndex.index1 == 0 {
                    AreaView(citys: citys, mrts: mrts, campus: campus, nearby: nearby)
                } else if tabIndex.index1 == 1 {
                    TimeView()
                } else if tabIndex.index1 == 2 {
                    FilterView()
                } else {
                    Spacer()
                }
//            }
        }
        .frame(maxHeight: .infinity, alignment: .top)
        .environmentObject(tabIndex)
    }
}

struct AreaPickerView_Previews: PreviewProvider {
    static let citys = City.citys
    static let mrts = MRT.MRTs
    static let campus = School.schools
    static let nearby = Nearby.distances
    static var previews: some View {
        AreaPickerView(citys: citys, mrts: mrts, campus: [School(city: "aa", name: [], i: 8)], nearby: nearby)
    }
}
