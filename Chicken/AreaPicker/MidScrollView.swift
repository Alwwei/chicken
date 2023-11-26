import SwiftUI

struct MidScrollView: View {
    @State var citys: [City]? = nil
    @State var MRTs: [MRT]? = nil
    @State var campus: [School]? = nil
    @State var nearby: [Nearby]? = nil
    @State private var index: Int = 0
    @EnvironmentObject var tabIndex: Index
        
    var body: some View {
        let columns = [GridItem(.flexible(), alignment: .leading)]
        
        if citys != nil {
            ScrollView {
                LazyVGrid(columns: columns) {
                    if let citys = citys {
                        ForEach(citys, id: \.self) { city in
                            PickerButton(text: city.city, isSelected: .constant(index == city.i))
                                .onTapGesture { onTapped(ii: city.i) }
                            Divider()
                        }
                    }
                }
            }
        } else if MRTs != nil {
            ScrollView {
                LazyVGrid(columns: columns) {
                    if let MRTs = MRTs {
                        ForEach(MRTs, id: \.self) { mrt in
                            PickerButton(text: mrt.line, isSelected: .constant(index == mrt.i))
                                .onTapGesture { onTapped(ii: mrt.i) }
                            Divider()
                        }
                    }
                }
            }
        } else if campus != nil {
            ScrollView {
                LazyVGrid(columns: columns) {
                    if let campus = campus {
                        ForEach(campus, id: \.self) { campus in
                            PickerButton(text: campus.city, isSelected: .constant(index == campus.i))
                                .onTapGesture { onTapped(ii: campus.i) }
                            Divider()
                        }
                    }
                }
            }
        } else if nearby != nil {
            ScrollView {
                LazyVGrid(columns: columns) {
                    if let nearby = nearby {
                        ForEach(nearby, id: \.self) { nearby in
                            PickerButton(text: nearby.distance, isSelected: .constant(index == nearby.i))
                                .onTapGesture { onTapped(ii: nearby.i) }
                            Divider()
                        }
                    }
                }
            }
        } else {
            Spacer()
        }
    }
    
    private func onTapped(ii: Int) {
        index = ii
        tabIndex.index2 = ii
        tabIndex.index3 = ii
    }
}

struct MidScrollView_Previews: PreviewProvider {
    static let areas = City.citys
    static let mrts = MRT.MRTs
    static let campus = School.schools
    static let nearby = Nearby.distances
    static var previews: some View {
        MidScrollView(citys: nil, MRTs: nil, campus: nil, nearby: nil)
            .environmentObject(Index(index: 0, index1: 0, index2: 1, index3: 0))
    }
}
