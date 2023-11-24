import SwiftUI

struct FindJobCellView: View {
    let findJob: FindJob
    @State var isTapping: Bool = false
    
    var body: some View {
        
        VStack {
            Text("         \(findJob.title)")
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
            Text(findJob.detail)
                .font(.subheadline)
                .foregroundColor(Color.black.opacity(0.7))
                .frame(maxWidth: .infinity, alignment: .leading)
            Text("時薪$\(findJob.wages[0])~$\(findJob.wages[1])      \(findJob.area)")
                .frame(maxWidth: .infinity, alignment: .leading)
                .foregroundColor(Color(.systemOrange))
                .padding([.top, .bottom], 1)
            HStack {
                ForEach(findJob.tags, id: \.self) { tag in
                    HStack {
                        Text(tag)
                            .font(.system(size: 15))
                            .padding(6)
                            .foregroundColor(Color.black.opacity(0.6))
                            .background(Color(.systemGray6))
                            .cornerRadius(3)
                            .offset(y: 2)
                    }
                }
                .frame(minWidth: 0, alignment: .leading)
                Spacer()
                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .trailing)
                    .background(Color.blue.opacity(0.5))
            }
        }
        .padding()
        .foregroundColor(.black)
        .background(Color.white)
        .frame(maxWidth: .infinity, alignment: .leading)
//        .multilineTextAlignment(.leading)
//                            .onTapGesture {
//                                self.isTapping = true
//                            }
        .overlay {
            HStack {
                Spacer()
                    .frame(maxWidth: .infinity, alignment: .leading)
                VStack {
                    Image(systemName: isTapping ? "circle.dashed.inset.filled" : "circle.dashed")
                        .font(.system(size: 50))
                        .padding()
                        .frame(maxWidth: .infinity, alignment: .trailing)
                        .foregroundColor(Color.red.opacity(0.5))
                        .offset(y: 10)
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
//                .background(Color.white)
            }
        }
    }
        
}

//struct FindJobCellView_Previews: PreviewProvider {
//    static var findHeadJob = FindJob.sampleHeadData[0]
//    static var previews: some View {
//        FindJobCellView(findJob: findHeadJob)
//    }
//}
