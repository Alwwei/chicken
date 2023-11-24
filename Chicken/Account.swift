import Foundation

struct Account: Identifiable {
    var id: UUID
    var title: String
    var detail: String
    
    init(id: UUID, title: String, detail: String) {
        self.id = id
        self.title = title
        self.detail = detail
    }
}

