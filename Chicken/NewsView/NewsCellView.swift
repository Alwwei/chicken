import SwiftUI

struct NewsCellView: View {
    @StateObject var news: News
    @State var heartTapping: Bool = false
    @State var archieveTapping: Bool = false
    @State private var selectIndex: Int = 0
    var body: some View {
        VStack {
            Text("       \(news.name)")
                .font(.subheadline)
                .padding(3.5)
                .frame(maxWidth: .infinity, alignment: .leading)
                .foregroundColor(Color.black.opacity(0.6))
                .overlay {
                    Image(systemName: news.name == "地雞主(官方)" ? "circle" : "square")
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .foregroundColor(news.name == "地雞主(官方)" ? Color.yellow : Color.black.opacity(0.8))
                }
            Text(news.title)
                .font(.title3)
                .padding(2)
                .bold()
                .frame(maxWidth: .infinity, alignment: .leading)
                .foregroundColor(Color.black)
            Text(news.detail)
                .foregroundColor(Color.black.opacity(0.8))
                .font(.system(size: 15))
                .padding(1)
                .frame(maxWidth: .infinity, alignment: .leading)
            Text("公告")
                .font(.system(size: 13))
                .padding(5)
                .foregroundColor(Color.white)
                .background(Color(.systemOrange))
                .cornerRadius(6)
                .frame(maxWidth: .infinity, alignment: .leading)
            HStack {
                Button(action: {
                    heartTapping = !heartTapping
                    if heartTapping {
                        news.hearts += 1
                    } else {
                        news.hearts -= 1
                    }
                }
                ) {
                    Label("\(news.hearts)", systemImage: heartTapping ? "heart.fill" : "heart")
                        .foregroundColor(Color.black.opacity(0.6))
                        .padding(5)
                        .frame(maxWidth: .infinity, alignment: .leading)
                }
                Button(action: {
                    news.comments += 1
                }) {
                    Label("\(news.comments)", systemImage: "ellipsis.bubble")
                        .foregroundColor(Color.black.opacity(0.6))
                        .padding(5)
                        .frame(maxWidth: .infinity, alignment: .leading)
                };
                Button(action: {
                    archieveTapping = !archieveTapping
                    if archieveTapping {
                        news.archieveed += 1
                    } else {
                        news.archieveed -= 1
                    }
                }) {
                    Label("\(news.archieveed)", systemImage: archieveTapping ? "bookmark.fill" : "bookmark")
                        .foregroundColor(Color.black.opacity(0.6))
                        .padding(5)
                        .frame(maxWidth: .infinity, alignment: .leading)
                }
                Spacer()
                    .frame(minWidth: 160, alignment: .trailing)
            }
        }
        .padding()
        .overlay {
            HStack {
                Spacer()
                    .frame(maxWidth: .infinity, alignment: .leading)
                VStack {
                    Button(action: {
                        Picker("a", selection: $selectIndex) {
                            Text("分享").tag(0)
                            Text("檢舉").tag(1)
                            Text("隱藏").tag(2)
                        }
                    }) {
                        Image(systemName: "ellipsis")
                            .padding()
                            .font(.system(size: 30))
                            .offset(y: 15)
                            .foregroundColor(Color.black)
                    }
                    Spacer()
                        .frame(maxHeight: .infinity, alignment: .top)
                    Text("date")
                        .padding()
                        .foregroundColor(Color.gray.opacity(0.7))
                        .offset(y: -5)
                }
            }
        }
    }
}

//
//struct NewsCellView_Previews: PreviewProvider {
//    static let news = News.sampledata[0]
//    static var previews: some View {
//        NewsCellView(news: news)
//    }
//}
