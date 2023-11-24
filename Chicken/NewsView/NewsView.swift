import SwiftUI

struct NewsView: View {
    @State private var searchTags: [String] = [""]
    let news: [News]
    
    var body: some View {
        let columns = [GridItem(.flexible(), alignment: .leading)]
        NavigationStack {
            HStack {
                Spacer()
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            ScrollView {
                NewsHorizontalScrollerView(searchTags: $searchTags)
                    .padding([.leading, .trailing], 20)
                LazyVGrid(columns: columns) {
                    ForEach(news) { new in
                        NavigationLink(destination: NewsDetailView(new: new)) {
                            NewsCellView(news: new)
                        }
                        Divider()
                    }
                }
            }
        }
    }
}

//struct NiewsView_Previews: PreviewProvider {
//    static var news = News.sampledata
//    
//    static var previews: some View {
//        NewsView(news: news)
//    }
//}
