import SwiftUI

struct NewsDetailView: View {
    let new: News
    
    var body: some View {
        Text(new.title)
            .font(.title)
    }
}

//struct NewsDetailview_Previews: PreviewProvider {
//    static var new = News.sampledata[0]
//    static var previews: some View {
//        NewsDetailView(new: new)
//    }
//}
