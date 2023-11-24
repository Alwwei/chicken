import SwiftUI

struct AccountListView: View {
    var body: some View {
        NavigationStack {
            List {
                NavigationLink(destination: ArchievedView()) {
                    Label("我的收藏", systemImage: "folder")
                        .foregroundColor(Color.black)
                        .padding(7)
                        .font(.subheadline)
                }
                NavigationLink(destination: ArchievedView()) {
                    Label("我的收藏", systemImage: "folder")
                        .foregroundColor(Color.black)
                        .padding(7)
                        .font(.subheadline)
                }
                NavigationLink(destination: ArchievedView()) {
                    Label("我的收藏", systemImage: "folder")
                        .foregroundColor(Color.black)
                        .padding(7)
                        .font(.subheadline)
                }
            }
        }
    }
}

struct AccountListView_Previews: PreviewProvider {
    static var previews: some View {
        AccountListView()
    }
}
