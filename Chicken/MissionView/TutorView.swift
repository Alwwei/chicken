import SwiftUI

struct TutorView: View {
    let findMissions: [FindMission]
    @State private var searchText: String = ""
    
    var body: some View {
        let columns = [GridItem(.flexible(), alignment: .leading)]
        NavigationStack {
            HStack {
                Button(action: {
                    print("a")
                })  {
                    Text("地區")
                        .foregroundColor(Color.gray)
                        .padding()
                }
                SearchBarView(text: $searchText, barContent: "輸入關鍵字 ex.數學")
            }
            ScrollView {
                LazyVGrid(columns: columns) {
                    ForEach(findMissions.filter({ searchText.isEmpty ? true : $0.title.contains(searchText) })) { mission in
                        NavigationLink(destination: FindMissionDetailView(findMissions: findMissions)) {
                            MissionCellView(mission: mission)
                        }
                    }
                }
            }
        }
    }
}

//struct TutorView_Previews: PreviewProvider {
//    static var findMissions = FindMission.sampleData
//    static var previews: some View {
//        TutorView(findMissions: findMissions)
//    }
//}
