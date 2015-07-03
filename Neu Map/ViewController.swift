//
//  ViewController.swift
//  Neu Map
//
//  Created by MacPro on 6/1/2558 BE.
//  Copyright (c) 2558 EWTC Institute. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController, MKMapViewDelegate {
    
    
    @IBOutlet weak var myMapView: MKMapView!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
       
        //Assign Center Map
        var latitude:CLLocationDegrees = 16.422396
        var longtitude:CLLocationDegrees = 102.816274
        
        //Assign Zoom
        var latDelta:CLLocationDegrees = 0.02
        var lngDelta:CLLocationDegrees = 0.02
        
        var theSpan:MKCoordinateSpan = MKCoordinateSpanMake(latDelta, lngDelta)
        var NEUlocation:CLLocationCoordinate2D = CLLocationCoordinate2DMake(latitude, longtitude)
        var theRegion:MKCoordinateRegion = MKCoordinateRegionMake(NEUlocation, theSpan)
        
        self.myMapView.setRegion(theRegion, animated: true)
        
        //Assign Pointer(Maker)
        var NEUannotation = MKPointAnnotation()
        NEUannotation.coordinate = NEUlocation
        NEUannotation.title = "มหาวิทยาลัยภาคตะวันออกเฉียงเหนือ"
        NEUannotation.subtitle = "เป็นมหาวิทยาลัยที่มี Lab Mac"
        
        myMapView.addAnnotation(NEUannotation)
        
        //Assign Anothor Pointer
        var testLocation:CLLocationCoordinate2D = CLLocationCoordinate2DMake(16.416514, 102.823457)
        var testAnnotation = MKPointAnnotation()
        testAnnotation.coordinate = testLocation
        testAnnotation.title = "สถานที่ทดสอบ"
        testAnnotation.subtitle = "ทดสอบการเพิ่ม Pointer บน Map"
        myMapView.addAnnotation(testAnnotation)
        
        
    }   // viewDitLoad

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}   // Main Class

