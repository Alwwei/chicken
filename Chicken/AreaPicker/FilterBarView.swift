import SwiftUI

struct FilterBarView: View {
    @EnvironmentObject var tabIndex: Index
    
    var body: some View {
        HStack(spacing: 20) {
            FilterBarButton(text: "地區", isSelected: .constant(tabIndex.index1 == 0))
                .onTapGesture { onTapped(index: 0) }
            FilterBarButton(text: "時段", isSelected: .constant(tabIndex.index1 == 1))
                .onTapGesture { onTapped(index: 1) }
            FilterBarButton(text: "篩選", isSelected: .constant(tabIndex.index1 == 2))
                .onTapGesture { onTapped(index: 2) }
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding()
    }
    
    private func onTapped(index: Int) { tabIndex.index1 = index }
}

struct FilterBarView_Previews: PreviewProvider {
    static var previews: some View {
        FilterBarView()
            .environmentObject(Index(index: 0, index1: 0, index2: 0, index3: 0))
    }
}
