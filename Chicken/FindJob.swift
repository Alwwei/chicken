import Foundation

struct FindJob: Identifiable {
    var id: UUID
    var title: String
    var detail: String
    var tags: [String]
    var wages: [Int]
    var area: String
    
    init(id: UUID, title: String, detail: String, tags: [String], wages: [Int], area: String) {
        self.id = id
        self.title = title
        self.detail = detail
        self.tags = tags
        self.wages = wages
        self.area = area
    }
}

struct City: Hashable {
    var city: String
    var area: [String]
    var i: Int
    
    init(city: String, area: [String], i: Int) {
        self.city = city
        self.area = area
        self.i = i
    }
    
    static let citys: [City] =
    [
        City(city: "台北市", area: ["中正區","大安區"], i: 1),
        City(city: "台中市", area: ["大屯區"], i: 2),
        City(city: "桃園市", area: ["區"], i: 3),
        City(city: "新北市", area: ["區"], i: 4),
        City(city: "台南市", area: ["區"], i: 5)
    ]
}

struct MRT: Hashable {
    var line: String
    var station: [String]
    var i: Int
    
    init(line: String, station: [String], i: Int) {
        self.line = line
        self.station = station
        self.i = i
    }
    
    static let MRTs: [MRT] =
    [
        MRT(line: "紅線", station: ["台北車站","中繼"], i: 1),
        MRT(line: "綠線", station: ["西門站"], i: 2),
        MRT(line: "藍線", station: ["國館站"], i: 3),
        MRT(line: "黃線", station: ["站"], i: 4)
    ]
}

struct School: Hashable {
    var city: String
    var name: [String]
    var i: Int
    
    init(city: String, name: [String], i: Int) {
        self.name = name
        self.city = city
        self.i = i
    }
    
    static let schools: [School] =
    [
        School(city: "台北市", name: ["大學","大學"], i: 1),
        School(city: "台南市", name: ["大學"], i: 2),
        School(city: "台中市", name: ["大學"], i: 3),
        School(city: "高雄市", name: ["大學"], i: 4)
    ]
}

struct Nearby: Hashable {
    var distance: String
    var i: Int
    
    init(distance: String, i: Int) {
        self.distance = distance
        self.i = i
    }
    
    static let distances: [Nearby] =
    [
    Nearby(distance: "500公里內", i: 1)
    ]
}

class Index: ObservableObject {
    @Published var index: Int
    @Published var index1:  Int
    @Published var index2: Int
    @Published var index3: Int
    
    init(index: Int, index1: Int, index2: Int, index3: Int) {
        self.index = index
        self.index1 = index1
        self.index2 = index2
        self.index3 = index3
    }
}

extension FindJob {
    static let sampleHeadData: [FindJob] =
    [
        FindJob(id: UUID(), title: "actor require", detail: "actor detail", tags: ["長期", "彈性排班"], wages: [140,170], area: "台中市大屯區"),
        FindJob(id: UUID(), title: "cleaner needed", detail: "cleaner mission detail", tags: ["短期","tag","tag"], wages: [160,180], area: "台北市"),
        FindJob(id: UUID(), title: "head data 3", detail: "head data 3 detail", tags: ["短期","tag","tag","tag"], wages: [160,180], area: "台北市")
    ]
    static let sampleBodyData: [FindJob] =
    [
        FindJob(id: UUID(), title: "head body 1", detail: "body data 1 detail", tags: ["短期"], wages: [130,160], area: "台北市中正區"),
        FindJob(id: UUID(), title: "head body 2", detail: "body data 2 detail", tags: ["短期"], wages: [160,180], area: "台北市"),
        FindJob(id: UUID(), title: "head body 3", detail: "body data 3 detail", tags: ["短期"], wages: [160,180], area: "台北市"),
        FindJob(id: UUID(), title: "head body 4", detail: "body data 4 detail", tags: ["短期"], wages: [160,180], area: "台北市"),
        FindJob(id: UUID(), title: "head body 5", detail: "body data 5 detail", tags: ["短期"], wages: [160,180], area: "台北市"),
        FindJob(id: UUID(), title: "head body 6", detail: "body data 6 detail", tags: ["短期"], wages: [160,180], area: "台北市"),
        FindJob(id: UUID(), title: "head body 7", detail: "body data 7 detail", tags: ["短期"], wages: [160,180], area: "台北市"),
        FindJob(id: UUID(), title: "head body 8", detail: "body data 8 detail", tags: ["短期"], wages: [160,180], area: "台北市"),
        FindJob(id: UUID(), title: "head body 9", detail: "body data 9 detail", tags: ["短期"], wages: [160,180], area: "台北市")
    ]
}
