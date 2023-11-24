import SwiftUI

struct AreaRightScrollView: View {
    let area: City
    @State private var index: Int = 0
    
    var body: some View {
        let columns = [GridItem(.flexible(), alignment: .leading)]
        
        ScrollView {
            LazyVGrid(columns: columns) {
                ForEach(area.area, id: \.self) { area in
                    PickerButton(text: area, isSelected: .constant(index == 0))
                        .onTapGesture { onTapped(ii: 0) }
                    Divider()
                }
            }
        }
    }
    
    private func onTapped(ii: Int) { index = ii }
}

struct AreaRightScrollView_Previews: PreviewProvider {
    static let area = City.citys[0]
    static var previews: some View {
        AreaRightScrollView(area: area)
    }
}
