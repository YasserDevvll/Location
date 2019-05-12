//
//  ViewController.swift
//  Locationyy
//
//  Created by Yasser alanazi on 30/08/1440 AH.
//  Copyright © 1440 yas3nzi.com. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController , MKMapViewDelegate {

    @IBOutlet weak var mapview: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        XLocation.Shared.GetMyLocation()
        XLocation.Shared.gotLocation = {
            
            print(XLocation.Shared.Longtude)
            print(XLocation.Shared.latitude)
           
            let coordinate = CLLocationCoordinate2D(latitude: XLocation.Shared.Longtude, longitude: XLocation.Shared.latitude)
            let newplace = place(coorrdinate: coordinate, title: "I,m here", subtitle: "Hello world")
            
            self.mapview.addAnnotation(newplace)
            
            
            
        }
        
        }
        
      
            
        }
        
    


weak var mapview: MKMapView!
    
    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
        let anno = mapView.dequeueReusableAnnotationView(withIdentifier: "Annoview") ?? MKAnnotationView()
        return anno
        
    }

class place : NSObject , MKAnnotation {
    var coordinate: CLLocationCoordinate2D
    var title : String?
    var subtitle: String?
    init(coorrdinate : CLLocationCoordinate2D , title : String? , subtitle : String?) {
        self.coordinate = coorrdinate
        self.title = title
        self.subtitle = subtitle
        
        
    }
    
    
    
    
}
    
