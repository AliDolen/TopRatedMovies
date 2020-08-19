

import Foundation
import Alamofire
import SwiftUI



class observer : ObservableObject  {
    
    @Published var movieList = [movieDataModel]()
    
    init(){
        
        AF.request("https://api.themoviedb.org/3/movie/top_rated?api_key=6b8eb10f06a76a8a37848e6753d235a1&language=en-US&page=1").responseData { (response) in
            do {
            if let data = response.data{
                let fetch = try! JSONDecoder().decode(dataModel.self, from: data)
                
                DispatchQueue.main.async {
                  
                     self.movieList = fetch.results
                    
                }
                
                }
                } catch  {
                    
                    print("ERROR!")
                    
                    
                }
                
            }
            }
            
            }
            
   
    


