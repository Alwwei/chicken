import SwiftUI

struct AreaView: View {
    @EnvironmentObject var tabIndex: Index
    let citys: [City]
    let mrts: [MRT]
    let campus: [School]
    let nearby: [Nearby]
    
    var body: some View {
        HStack {
            if tabIndex.index == 1 {
                LeftScrollView()
                    .frame(maxWidth: .infinity, alignment: .leading)
                Divider()
                MidScrollView(citys: citys)
                    .frame(maxWidth: .infinity, alignment: .leading)
                Divider()
                RightScrollView(city: citys[tabIndex.index2])
                    .frame(maxWidth: .infinity, alignment: .leading)
            } else if tabIndex.index == 2 {
                LeftScrollView()
                    .frame(maxWidth: .infinity, alignment: .leading)
                Divider()
                MidScrollView(MRTs: mrts)
                    .frame(maxWidth: .infinity, alignment: .leading)
                Divider()
                RightScrollView(mrt: mrts[tabIndex.index2])
                    .frame(maxWidth: .infinity, alignment: .leading)
            } else if tabIndex.index == 3 {
                LeftScrollView()
                    .frame(maxWidth: .infinity, alignment: .leading)
                Divider()
                MidScrollView(campus: campus)
                    .frame(maxWidth: .infinity, alignment: .leading)
                Divider()
                RightScrollView(campus: campus[tabIndex.index2])
                    .frame(maxWidth: .infinity, alignment: .leading)
            } else if tabIndex.index == 4 {
                LeftScrollView()
                    .frame(maxWidth: .infinity, alignment: .leading)
                Divider()
                MidScrollView(nearby: nearby)
                    .frame(maxWidth: .infinity, alignment: .leading)
                Divider()
                RightScrollView()
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
        }
//        .scaledToFit()
    }
}

struct AreaView_Previews: PreviewProvider {
    static let citys = City.citys
    static let mrts = MRT.MRTs
    static let campus = School.schools
    static let nearby = Nearby.distances
    static var previews: some View {
        AreaView(citys: citys, mrts: mrts, campus: campus, nearby: nearby)
            .environmentObject(Index(index: 1, index1: 1, index2: 0, index3: 0))
    }
}
