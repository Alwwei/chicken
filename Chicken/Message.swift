import Foundation

struct Message: Identifiable {
    var id: UUID
    var title: String
    var detail: String
    
    init(id: UUID, title: String, detail: String) {
        self.id = id
        self.title = title
        self.detail = detail
    }
}

extension Message {
    static let sampleData =
    [
    Message(id: UUID(), title: "message 1", detail: "message 1 detail"),
    Message(id: UUID(), title: "message 2", detail: "message 2 detail")
    ]
}
