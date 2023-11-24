import SwiftUI

struct FindMissionToolbarView: View {
    @Binding var tabIndex: Int
    var body: some View {
        HStack(spacing: 40) {
            TabBarButton(text: "即時", isSelected: .constant(tabIndex == 0))
                .onTapGesture {
                    onButtonTapped(index: 0)
                }
            TabBarButton(text: "家教", isSelected: .constant(tabIndex == 1))
                .onTapGesture {
                    onButtonTapped(index: 1)
                }
            TabBarButton(text: "啾幣", isSelected: .constant(tabIndex == 2))
                .onTapGesture {
                    onButtonTapped(index: 2)
                }
        }
    }
    
    private func onButtonTapped(index: Int) {
        withAnimation { tabIndex = index }
    }
}

//struct FindMissionToolbarView_Previews: PreviewProvider {
//    static var previews: some View {
//        FindMissionToolbarView(tabIndex: .constant(1))
//    }
//}
