import SwiftUI

struct AccountView: View {
    let jobs: [FindJob]
    var body: some View {
        
        NavigationStack {
            HStack {
                Text("我的")
                    .bold()
                    .font(.title2)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.yellow.opacity(0.5))
            }
            ScrollView {
                HStack {
                    Image(systemName: "circle")
                        .font(.system(size: 50))
                        .padding()
                        .frame(maxWidth: .infinity, alignment: .leading)
                    VStack {
                        Text("我的名字")
                            .font(.title2)
                            .bold()
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .offset(x: -30)
                        Text("我的履歷 >")
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(1)
                            .offset(x: -30)
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    Spacer()
                        .frame(maxWidth: 20, alignment: .leading)
                    Divider()
                    Text("180")
                        .padding()
                        .font(.system(size: 25))
                        .bold()
                }
                VStack {
                    HStack {
                        Image(systemName: "target")
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding()
                            .font(.system(size: 30))
                        Text("任務中心")
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .font(.title2)
                            .bold()
                            .offset(x: -30)
                        Spacer()
                            .frame(maxWidth: 50, alignment: .trailing)
                        Text("看全部")
                            .font(.subheadline)
                            .padding(5)
                            .frame(maxWidth: .infinity, alignment: .trailing)
                    }
                    Text("首七日簽到")
                        .padding(2)
                        .font(.system(size: 20))
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .offset(x: 1)
                    Text("欸 你居然還沒簽到")
                        .padding(5)
                        .foregroundColor(Color.black.opacity(0.6))
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Divider()
                    Text("訂閱搜尋條件")
                        .padding(5)
                        .font(.system(size: 20))
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .offset(x: -2)
                    Text("設定職缺搜尋條件，按下訂閱")
                        .padding(2)
                        .foregroundColor(Color.black.opacity(0.6))
                        .frame(maxWidth: .infinity, alignment: .leading)
                }
                .padding()
                .background(Color.gray.opacity(0.1))
                VStack {
                    Text("list")
                        .font(.title)
                }
            }
            .padding()
        }
    }
}

//struct AccountView_Previews: PreviewProvider {
//    static let jobs = FindJob.sampleBodyData
//    static var previews: some View {
//        AccountView(jobs: jobs)
//    }
//}
