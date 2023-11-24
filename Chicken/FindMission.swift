import Foundation


struct FindMission: Identifiable {
    var id: UUID
    var title: String
    var detail: String
    var wages: Int
    var area: String
    var day: [Int]
    
    init(id: UUID, title: String, detail: String, wages: Int, area: String, day: [Int]) {
        self.id = id
        self.title = title
        self.detail = detail
        self.wages = wages
        self.area = area
        self.day = day
    }
}

extension FindMission {
    static let sampleData: [FindMission] =
    [
        FindMission(id: UUID(), title: "one ticket", detail: "ticket detail", wages: 500, area: "在家兼職", day: [11/09,11/20]),
        FindMission(id: UUID(), title: "one post", detail: "post detail", wages: 300, area: "彰化縣彰化市", day: [11/07])
    ]
}
