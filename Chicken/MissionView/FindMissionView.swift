import SwiftUI

struct FindMissionView: View {
    let findMissions: [FindMission]
    @State var tabIndex = 0
    
    var body: some View {
        VStack {
            FindMissionToolbarView(tabIndex: $tabIndex)
            if tabIndex == 0 {
                OnTimeView(findMissions: findMissions)
            } else if tabIndex == 1 {
                TutorView(findMissions: findMissions)
            } else if tabIndex == 2 {
                AccountListView()
            }        }
    }
}

//struct FindMissionView_Previews: PreviewProvider {
//    static var findMissions = FindMission.sampleData
//    static var previews: some View {
//        FindMissionView(findMissions: findMissions)
//    }
//}
