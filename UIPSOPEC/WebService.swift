
import Foundation

class WebService {
    
//    web service
//    -get faculty detail by faculty id
//    http://tskyonline.com:89/Faculty/getFacultyDetail?facultyID=6
    
    let domainName = "http://tskyonline.com:89/"
    
    var facultyFilter : [FacultyModel] = []
    var facultyList : [FacultyModel] = []
    
    private func filterFacultyBy(searchInput: String){
        facultyFilter = facultyList.filter({
            (fac: FacultyModel) -> Bool in
            return fac.facultyNameTh.lowercased().contains(searchInput.lowercased()) || fac.facultyNameEn.lowercased().contains(searchInput.lowercased()) || fac.facultyAbb.lowercased().contains(searchInput.lowercased())||searchInput == ""
        })
        
    }
    
    
    func getFacultyWS() {
        let requestURL: NSURL = NSURL(string: domainName + "Faculty/getFacultyList")!
        let request = URLRequest(url: requestURL as URL)
        let session = URLSession.shared
        let task = session.dataTask(with: request) {
            (data, response, error) -> Void in
            if error == nil {
                let json = try? JSONSerialization.jsonObject(with: data!, options: .allowFragments)
                if let validJson = json as? [[String:AnyObject]] {
                    for i in validJson {
                        self.facultyList.append(FacultyModel(dic: i as AnyObject))
                        
                    }
                }
                self.filterFacultyBy(searchInput: "")
            }
        }
        task.resume()
    }
    
}


//
//var facultyFilter:[FacultyObject] = []
//
//func filterFacultyBy(searchInput: String)
//{
//    facultyFilter = faculty.filter({
//        (fac: FacultyObject) -> Bool in
//        return fac.FacultyCode.lowercased().contains(searchInput.lowercased()) || fac.FacultyName.lowercased().contains(searchInput.lowercased()) || fac.Description.lowercased().contains(searchInput.lowercased())||searchInput == ""
//    })
//    
//}


//func getFacultyWS() {
//    
//    let requestURL: NSURL = NSURL(string: "http://mookandeye.azurewebsites.net/Faculty/GetAllFaculty")!
//    let request = URLRequest(url: requestURL as URL)
//    
//    let session = URLSession.shared
//    
//    let task = session.dataTask(with: request) {
//        (data, response, error) -> Void in
//        
//        if error == nil {
//            let json = try? JSONSerialization.jsonObject(with: data!, options: .allowFragments)
//            
//            if let validJson = json as? [[String:AnyObject]] {
//                for i in validJson {
//                    if let facultyCode = i["facultyCode"] as? String,
//                        let facultyName = i["facultyName"] as? String,
//                        let facultyAbb = i["facultyAbb"] as? String,
//                        let description = i["description"] as? String {
//                        print("_____"+facultyCode+"_____"+facultyName+"_______"+facultyAbb+"_______"+description+"_______")
//                        var  p : [MajorObject] = []
//                        
//                        if let majorList = i["departmentlist"] as? [[String:AnyObject]] {
//                            for j in majorList {
//                                if let depCode = j["departmentCode"] as? String,
//                                    let depName = j["departmentName"] as? String,
//                                    let depAbb = j["departmentAbb"] as? String,
//                                    let facCode = j["facultyCode"] as? String,
//                                    let descriptions = j["description"] as? String {
//                                    print("--"+depCode+"--"+depName+"--"+depAbb+"--"+facCode+"--"+descriptions+"-->")
//                                    p.append(MajorObject(dc: depCode,dn: depName,abb: depAbb,fc: facCode,des: descriptions))
//                                }
//                            }
//                            print()
//                            print()
//                        }
//                        self.facultyListt.append(FacultyObject(fc: facultyCode, fn: facultyName, fa: facultyAbb, des: description, dList: p))
//                    }
//                }
//            }
//            self.filterFacultyBy(searchInput: "")
//        }
//    }
//    
//    task.resume()
//}
