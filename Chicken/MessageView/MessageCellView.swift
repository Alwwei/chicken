import SwiftUI

struct MessageCellView: View {
    let message: Message
    var body: some View {
        VStack {
            Text(message.title)
                .padding(3.5)
                .bold()
                .font(.title3)
                .frame(maxWidth: .infinity, alignment: .leading)
                .foregroundColor(Color.black)
            Text(message.detail)
                .padding(2)
                .font(.subheadline)
                .frame(maxWidth: .infinity, alignment: .leading)
                .foregroundColor(Color.black.opacity(0.8))
        }
        .padding()
        .scaledToFit()
    }
}

//struct MessageCellView_Previews: PreviewProvider {
//    static var message: Message = Message.sampleData[0]
//    static var previews: some View {
//        MessageCellView(message: message)
//    }
//}
