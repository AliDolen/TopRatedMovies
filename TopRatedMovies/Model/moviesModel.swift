


import Foundation
import SwiftUI


struct dataModel : Decodable {
    
    var results =  [movieDataModel]()
    
}

struct movieDataModel : Identifiable, Decodable {
    
    var id : Int
    var original_title : String
    var vote_average : CGFloat
    var poster_path : String
    var release_date : String
    var overview : String
    var original_language : String
    
    
}

