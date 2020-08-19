

import SwiftUI
import SDWebImageSwiftUI

struct movieDetailView: View {
    
    var detailMovie : movieDataModel
    
    var body: some View {
        
        VStack {
            
            AnimatedImage(url : URL(string: "https://image.tmdb.org/t/p/w500\(detailMovie.poster_path)")).resizable()
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white,lineWidth: 5))
            .shadow(radius: 15)
            
            
            Text(detailMovie.original_title).font(.largeTitle).bold()
                .padding()
                
            Text("About Movie").fontWeight(.black)
                .frame(alignment: .leading)
                .padding()
            Text("Original Language : \(detailMovie.original_language)").bold()
             
            Text(detailMovie.overview).font(.body).frame(width: 350, height: 350, alignment: .center)
            Spacer()
            
    }
    }}

struct movieDetailView_Previews: PreviewProvider {
    static var previews: some View {
        movieDetailView(detailMovie: .init(id: 0, original_title: "", vote_average: 1.0, poster_path: "", release_date: "", overview: "",original_language: ""))
    }
}
