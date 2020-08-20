import SwiftUI
import SDWebImageSwiftUI
import Alamofire

struct ContentView: View {
    
    @ObservedObject var obs = observer()
    
    var body: some View {
      
        NavigationView {
          
                List(obs.movieList) { data in
                NavigationLink(destination: movieDetailView(detailMovie: data)){
                    ListRow(url: data.poster_path, name: data.original_title, rating: CGFloat(data.vote_average), releaseDate: data.release_date)
                     
                    }.navigationBarTitle("Top Rated Movies")
        
    }
    }
    
    }}

struct ListRow: View {
        
    var url = ""
    var name = ""
    var rating : CGFloat = 0
    var releaseDate = ""
    

    var body: some View{
       
        HStack{
            
            AnimatedImage(url : URL(string: "https://image.tmdb.org/t/p/w500\(url)")).resizable().clipShape(RoundedRectangle(cornerRadius: 35.0)).frame(width : 175, height : 150).shadow(radius: 5)
                .border(Color.white , width: 4)
            
            
            VStack {
                
                Text(name).fontWeight(.black).font(.headline)
                    
                Text("Rating : \(rating)").bold()
                    .padding()
                Text("Release Date : \(releaseDate)").bold()
                Spacer()
                
            }
            
            
        }
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        
    }
}



