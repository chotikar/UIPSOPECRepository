
import Foundation

class FacultyModel {
    
    var faculyId : Int
    var facultyNameEn  : String
    var facultyNameTh : String
    var facultyAbb : String
    var imageURL :String
    
    init() {
        faculyId = 99999
        facultyNameEn = "N/A"
        facultyNameTh = "N/A"
        facultyAbb = "N/A"
        imageURL = "N/A"
    }
    
    init(dic : AnyObject) {
        faculyId = dic["facultyID"] as! Int
        facultyNameEn = dic["facultyNameEN"] as! String
        facultyNameTh = dic["facultyNameTH"] as! String
        facultyAbb = dic["facultyAbb"] as! String
        let url = dic["imageURL"] as? String
        if url == nil {
            imageURL = "N/A"
        }else{
            imageURL = url!
        }
    }
    
}
