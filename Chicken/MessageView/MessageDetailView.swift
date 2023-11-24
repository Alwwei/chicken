import SwiftUI

struct MessageDetailView: View {
    let message: Message
    
    var body: some View {
        Text(message.title)
    }
}
//
//struct MessageDetailView_Previews: PreviewProvider {
//    static var message = Message.sampleData[0]
//    static var previews: some View {
//        MessageDetailView(message: message)
//    }
//}
