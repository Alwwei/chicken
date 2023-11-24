import SwiftUI

struct NewsHorizontalScrollerView: View {
    @Binding var searchTags: [String]
    
    var body: some View {
        let rows = [GridItem(.flexible(), alignment: .leading)]
        
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHGrid(rows: rows) {
//                Group {
                    Text("全部")
                        .padding(10)
                        .border(Color.gray.opacity(0.6), width: 1)
                        .foregroundColor(Color.gray)
                        .onTapGesture { searchTags = [""] }
                    Text("打工補帖")
                        .padding(10)
                        .border(Color.gray.opacity(0.6), width: 1)
                        .foregroundColor(Color.gray)
                        .onTapGesture {
                            searchTags = ["打工補帖"]
                        }
                    Text("打工面試")
                        .padding(10)
                        .border(Color.gray.opacity(0.6), width: 1)
                        .foregroundColor(Color.gray)
                        .onTapGesture {
                            searchTags = ["打工面試"]
                        }
                    Text("經驗談")
                        .padding(10)
                        .border(Color.gray.opacity(0.6), width: 1)
                        .foregroundColor(Color.gray)
                        .onTapGesture {
                            searchTags = ["經驗談"]
                        }
                    Text("求助")
                        .padding(10)
                        .border(Color.gray.opacity(0.6), width: 1)
                        .foregroundColor(Color.gray)
                        .onTapGesture {
                            searchTags = ["求助"]
                        }
                    Text("省錢")
                        .padding(10)
                        .border(Color.gray.opacity(0.6), width: 1)
                        .foregroundColor(Color.gray)
                        .onTapGesture {
                            searchTags = ["省錢"]
                        }
                    Text("心情")
                        .padding(10)
                        .border(Color.gray.opacity(0.6), width: 1)
                        .foregroundColor(Color.gray)
                        .onTapGesture {
                            searchTags = ["心情"]
                        }
//                }
//                Group {
//                    Text("考試")
//                        .padding()
//                        .border(Color.gray.opacity(0.6), width: 1)
//                        .foregroundColor(Color.gray)
//                        .onTapGesture {
//                            searchTags = ["考試"]
//                        }
//                    Text("美食")
//                        .padding()
//                        .border(Color.gray.opacity(0.6), width: 1)
//                        .foregroundColor(Color.gray)
//                        .onTapGesture {
//                            searchTags = ["美食"]
//                        }
//                    Text("健康")
//                        .padding()
//                        .border(Color.gray.opacity(0.6), width: 1)
//                        .foregroundColor(Color.gray)
//                        .onTapGesture {
//                            searchTags = ["健康"]
//                        }
//                    Text("寵物")
//                        .padding()
//                        .border(Color.gray.opacity(0.6), width: 1)
//                        .foregroundColor(Color.gray)
//                        .onTapGesture {
//                            searchTags = ["寵物"]
//                        }
//                    Text("旅遊")
//                        .padding()
//                        .border(Color.gray.opacity(0.6), width: 1)
//                        .foregroundColor(Color.gray)
//                        .onTapGesture {
//                            searchTags = ["旅遊"]
//                        }
//                    Text("節日")
//                        .padding()
//                        .border(Color.gray.opacity(0.6), width: 1)
//                        .foregroundColor(Color.gray)
//                        .onTapGesture {
//                            searchTags = ["節日"]
//                        }
//                    Text("公告")
//                        .padding()
//                        .border(Color.gray.opacity(0.6), width: 1)
//                        .foregroundColor(Color.gray)
//                        .onTapGesture {
//                            searchTags = ["公告"]
//                        }
//                }
            }
            .scaledToFit()
        }
        
    }
}

//struct NewsHorizontalScrollerView_Previews: PreviewProvider {
//    static var previews: some View {
//        NewsHorizontalScrollerView(searchTags: .constant([""]))
//    }
//}
