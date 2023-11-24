import SwiftUI

struct MissionCellView: View {
    let mission: FindMission
    
    var body: some View {
        VStack {
            Text("         \(mission.title)")
                .font(.title2)
                .bold()
                .frame(maxWidth: .infinity, maxHeight: 30, alignment: .leading)
                .offset(x: -2)
                .overlay {
                    HStack {
                        Text("精選")
                            .font(.system(size: 13))
                            .bold()
                            .padding(3.5)
                            .frame(minWidth: 0, alignment: .leading)
                            .foregroundColor(Color.white)
                            .background(Color(.systemOrange))
                            .cornerRadius(6)
                            .offset(y: 1)
                        Spacer()
                            .frame(minWidth: 0, maxWidth: .infinity, alignment: .trailing)
                    }
                }
            Text(mission.detail)
                .font(.subheadline)
                .foregroundColor(Color.black.opacity(0.7))
                .frame(maxWidth: .infinity, alignment: .leading)
            Text("單次$\(mission.wages)      \(mission.area)")
                .frame(maxWidth: .infinity, alignment: .leading)
                .foregroundColor(Color(.systemOrange))
                .padding([.top, .bottom], 1)
            Text("任務日")
                .font(.subheadline)
                .foregroundColor(Color.gray.opacity(0.7))
                .frame(maxWidth: .infinity, alignment: .leading)
        }
        .padding()
        .background(Color.white)
        .foregroundColor(Color.black)
        .scaledToFit()
        .frame(maxWidth: .infinity, alignment: .leading)
        .overlay {
            HStack {
                Spacer()
                    .frame(maxWidth: .infinity, alignment: .leading)
                VStack {
                    Image(systemName: "heart")
                        .font(.system(size: 30))
                        .padding()
                        .frame(maxWidth: .infinity, alignment: .trailing)
                        .foregroundColor(Color.red.opacity(0.5))
                        .offset(x: -10, y: 5)
                    Text("NEW")
                        .font(.system(size: 13))
                        .padding(5)
                        .padding(.trailing, 10)
                        .frame(maxWidth: .infinity, alignment: .trailing)
                        .foregroundColor(Color.black)
                        .offset(x: -15)
                    Text("人氣2.4k")
                        .font(.system(size: 15))
                        .padding(5)
                        .padding(.trailing, 6)
                        .frame(maxWidth: .infinity, alignment: .trailing)
                        .foregroundColor(Color.red.opacity(0.8))
                    Spacer()
                        .frame(minHeight: 25, alignment: .bottom)
                }
                .frame(minWidth: 0, alignment: .trailing)
            }
        }
    }
}

//struct MissionCellView_Previews: PreviewProvider {
//    static var mission = FindMission.sampleData[0]
//    static var previews: some View {
//        MissionCellView(mission: mission)
//    }
//}
