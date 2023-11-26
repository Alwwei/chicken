import SwiftUI

struct FindJobHorizontalScrollerView: View {
    @Binding var searchTags: [String]
    

    var body: some View {
        let rows = [GridItem(.flexible(), alignment: .leading)]
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHGrid(rows: rows) {
                HStack {
                    Label("短期熱門", systemImage: "circle")
                        .padding()
                        .background(Color(.systemGray6))
                        .cornerRadius(10)
                        .onTapGesture {
                            searchTags = ["短期"]
                        }
                    Label("宅在家", systemImage: "circle")
                        .padding()
                        .background(Color(.systemGray6))
                        .cornerRadius(8)
                        .onTapGesture {
                            searchTags = ["可在家","在家工作"]
                        }
                    Label("無工作經驗", systemImage: "circle")
                        .padding()
                        .background(Color(.systemGray6))
                        .cornerRadius(8)
                        .onTapGesture {
                            searchTags = ["免經驗可"]
                        }
                    Label("展覽活動", systemImage: "circle")
                        .padding()
                        .background(Color(.systemGray6))
                        .cornerRadius(8)
                        .onTapGesture {
                            searchTags = ["展覽"]
                        }
                    Label("當日現領", systemImage: "circle")
                        .padding()
                        .background(Color(.systemGray6))
                        .cornerRadius(8)
                        .onTapGesture {
                            searchTags = ["現領"]
                        }
                }
                .padding()
            }
        }
        .scaledToFit()
    }
}

struct FindJobHorizontalScrollerView_Previews: PreviewProvider {
    static var previews: some View {
        FindJobHorizontalScrollerView(searchTags: .constant([""]))
    }
}
