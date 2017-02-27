

import UIKit
import MapKit

let cellID = "LocationItem"

class LocationTableViewController: UITableViewController {
    
    var selectedIndexPath : IndexPath?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        selectedIndexPath = [0,0]
    }
    
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellID, for: indexPath) as! LocationCell
        cell.loTitle.text = "Location title"
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let previousIndexPath = selectedIndexPath
        if indexPath == selectedIndexPath {
            selectedIndexPath = nil
        } else {
            selectedIndexPath = indexPath
        }
        
        var indexPaths : Array<IndexPath> = []
        if let previous = previousIndexPath {
            indexPaths += [previous]
        }
        if let current = selectedIndexPath {
            indexPaths += [current]
        }
        if indexPaths.count > 0 {
            tableView.reloadRows(at: indexPaths, with: UITableViewRowAnimation.automatic)
        }
    }
    
    override func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        (cell as! LocationCell).watchFrameChange()
    }
    
    override func tableView(_ tableView: UITableView, didEndDisplaying cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        (cell as! LocationCell).ignoreFrameChange()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        for cell in tableView.visibleCells as! [LocationCell] {
            cell.ignoreFrameChange()
        }
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath == selectedIndexPath {
            return LocationCell.expandingHeight
        } else {
            return LocationCell.defauleHeight
        }
    }
    
}


class LocationCell : UITableViewCell, MKMapViewDelegate {
        var isObserving = false
     var location: CLLocation?
    @IBOutlet var loTitle : UILabel!
    @IBOutlet var loMap : MKMapView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        //MapView
        loMap!.showsPointsOfInterest = true
        if let mapView = self.loMap {
            mapView.delegate = self
        }
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }

    func showLocation(location:CLLocation) {
        let orgLocation = CLLocationCoordinate2DMake(location.coordinate.latitude, location.coordinate.longitude)
        
        let dropPin = MKPointAnnotation()
        dropPin.coordinate = orgLocation
        loMap!.addAnnotation(dropPin)
        self.loMap?.setRegion(MKCoordinateRegionMakeWithDistance(orgLocation, 500, 500), animated: true)
    }
    
     // Height of cell
    class var expandingHeight: CGFloat { get { return scHei * 0.5 } }
    class var defauleHeight : CGFloat { get { return scHei * 0.1 } }
    
    func checckHei() {
        loMap.isHidden = (frame.size.height < LocationCell.expandingHeight)
        //        loImage.backgroundColor = UIColor.purple
        loMap.frame = CGRect(x: 0, y: scHei*0.2, width: scWid, height: scHei * 0.3)
    }
    
    
   func watchFrameChange(){
    if !isObserving {
        addObserver(self, forKeyPath: "frame", options: [NSKeyValueObservingOptions.new, NSKeyValueObservingOptions.initial], context: nil)
        isObserving = true

    }
    }
    
    func ignoreFrameChange(){
        if isObserving {
            removeObserver(self, forKeyPath: "frame")
            isObserving = false
        }

    }
    
    override func observeValue(forKeyPath keyPath: String?, of object: Any?, change: [NSKeyValueChangeKey : Any]?, context: UnsafeMutableRawPointer?) {
        if keyPath == "frame" {
            checckHei()
        }
    }
}












