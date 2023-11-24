import SwiftUI

struct MessageView: View {
    let messages: [Message]
    
    var body: some View {
        let columns = [GridItem(.flexible(), alignment: .leading)]
        NavigationStack {
            Text("訊息")
                .bold()
                .font(.title2)
                .padding()
                .frame(maxWidth: .infinity)
                .background(Color.yellow.opacity(0.5).edgesIgnoringSafeArea(.top))
            ScrollView {
                HStack {
                    Text("全部")
                        .padding(10)
                        .font(.subheadline)
                        .border(Color.gray.opacity(0.6), width: 1)
                        .foregroundColor(Color.gray)
                    Text("我的應徵")
                        .padding(10)
                        .font(.subheadline)
                        .border(Color.gray.opacity(0.6), width: 1)
                        .foregroundColor(Color.gray)
                    Text("我的面試")
                        .padding(10)
                        .font(.subheadline)
                        .border(Color.gray.opacity(0.6), width: 1)
                        .foregroundColor(Color.gray)
                    Text("我的上工")
                        .padding(10)
                        .font(.subheadline)
                        .border(Color.gray.opacity(0.6), width: 1)
                        .foregroundColor(Color.gray)
                }
                LazyVGrid(columns: columns) {
                    ForEach(messages) { message in
                        NavigationLink(destination: MessageDetailView(message: message)) {
                            MessageCellView(message: message)
                        }
                    }
                }
                .background(Color.gray.opacity(0.1))            }
        }
        
    }
}

//struct MessageView_Previews: PreviewProvider {
//    static var messages = Message.sampleData
//    static var previews: some View {
//        MessageView(messages: messages)
//    }
//}
