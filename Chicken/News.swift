import Foundation

class News: Identifiable, ObservableObject {
    var id: UUID
    var name: String
    var title: String
    var detail: String
    @Published var hearts: Int
    @Published var comments: Int
    @Published var archieveed: Int
    
    init(id: UUID, name: String, title: String, detail: String, hearts: Int, comments: Int, archieved: Int) {
        self.id = id
        self.name = name
        self.title = title
        self.detail = detail
        self.hearts = hearts
        self.comments = comments
        self.archieveed = archieved
    }
    
}

extension News {
    static var sampledata =
    [
    News(id: UUID(), name: "地雞主(官方)", title: "news1", detail: "news1detail", hearts: 20, comments: 10, archieved: 5),
    News(id: UUID(), name: "非官", title: "news2", detail: "new2detail", hearts: 25, comments: 15, archieved: 3)
    ]
}
