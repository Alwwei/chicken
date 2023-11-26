import SwiftUI

struct RightScrollView: View {
    @EnvironmentObject var tabIndex: Index
    @State var index: Int = 0
    @State var city: City? = nil
    @State var mrt: MRT? = nil
    @State var campus: School? = nil
    
    
    var body: some View {
        let columns = [GridItem(.flexible(), alignment: .leading)]
        
        if city != nil {
            ScrollView {
                LazyVGrid(columns: columns) {
                    if let city = city {
                        ForEach(city.area, id: \.self) { city in
                            PickerButton(text: city, isSelected: .constant(index == 1))
                                .onTapGesture { onTapped(ii: 1) }
                            Divider()
                        }
                    }
                }
            }
        } else if mrt != nil {
            ScrollView {
                LazyVGrid(columns: columns) {
                    if let mrt = mrt {
                        ForEach(mrt.station, id: \.self) { station in
                            PickerButton(text: station, isSelected: .constant(index == 1))
                                .onTapGesture { onTapped(ii: 1) }
                            Divider()
                        }
                    }
                }
            }
        } else if campus != nil {
            ScrollView {
                LazyVGrid(columns: columns) {
                    if let campus = campus {
                        ForEach(campus.name, id: \.self) { name in
                            PickerButton(text: name, isSelected: .constant(index == 1))
                                .onTapGesture { onTapped(ii: 1) }
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
        tabIndex.index3 = ii
    }
}

struct RightScrollView_Previews: PreviewProvider {
    static let area = City.citys[0]
    static let mrt = MRT.MRTs[0]
    static let campus = School.schools[0]
    static var previews: some View {
        RightScrollView(city: area, mrt: mrt, campus: campus)
            .environmentObject(Index(index: 0, index1: 0, index2: 0, index3: 1))
    }
}
