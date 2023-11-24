import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            let findHeadJobs: [FindJob] = FindJob.sampleHeadData
            let findBodyJobs: [FindJob] = FindJob.sampleBodyData
            let findMissions: [FindMission] = FindMission.sampleData
            let news: [News] = News.sampledata
            let messages: [Message] = Message.sampleData
            
            TabView {
                FindJobView(findHeadJobs: findHeadJobs, findBodyJobs: findBodyJobs, barContent: "")
                    .tabItem {
                    NavigationLink(destination: FindJobView(findHeadJobs: findHeadJobs, findBodyJobs: findBodyJobs, barContent: "")) {
                        Label("找打工", systemImage: "briefcase")
                    }
                    .tag(1)
                }
                FindMissionView(findMissions: findMissions)
                    .tabItem {
                    NavigationLink(destination: FindMissionView(findMissions: findMissions)) {
                        Label("找任務",systemImage: "bolt")
                    }
                    .tag(2)
                }
                NewsView(news: news)
                    .tabItem {
                        NavigationLink(destination: NewsView(news: news)) {
                            Label("基地台", systemImage: "antenna.radiowaves.left.and.right")
                        }
                        .tag(3)
                    }
                MessageView(messages: messages)
                    .tabItem {
                        NavigationLink(destination: MessageView(messages: messages)) {
                            Label("訊息", systemImage: "ellipsis.bubble")
                        }
                        .tag(4)
                    }
                AccountView(jobs: findBodyJobs)
                    .tabItem {
                        NavigationLink(destination: AccountView(jobs: findBodyJobs)) {
                            Label("我的", systemImage: "person")
                        }
                        .tag(5)
                    }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
