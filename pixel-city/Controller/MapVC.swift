//
//  MapVC.swift
//  pixel-city
//
//  Created by Gutpinter Norbert on 2017. 11. 26..
//  Copyright © 2017. Gut Norbert. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class MapVC: UIViewController {
    
    //Outlets
    @IBOutlet weak var mapView: MKMapView!
    
    var locationManager = CLLocationManager()
    let AUTHORIZATION_STATUS = CLLocationManager.authorizationStatus()
    let REGIONRADIUS : Double = 1000

    override func viewDidLoad() {
        super.viewDidLoad()
        mapView.delegate = self
        locationManager.delegate = self
        configureLocationServices()
    }
    @IBAction func centerMapBtnWasPressed(_ sender: Any) {
        if AUTHORIZATION_STATUS == .authorizedAlways || AUTHORIZATION_STATUS == .authorizedWhenInUse{
            centerMapOnUserLocation()
        }
    }
    
}

extension MapVC: MKMapViewDelegate {
    func centerMapOnUserLocation(){
        guard let coordinate = locationManager.location?.coordinate else {return}
        let coordinateRegion = MKCoordinateRegionMakeWithDistance(coordinate, REGIONRADIUS * 2.0, REGIONRADIUS * 2.0) //*2 bec north,south,east and west
        mapView.setRegion(coordinateRegion, animated: true)
    }
}

extension MapVC: CLLocationManagerDelegate{ //ask permission
    func configureLocationServices(){
        if AUTHORIZATION_STATUS == .notDetermined {
            locationManager.requestAlwaysAuthorization()
        } else {
            return
        }
    }
    
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        centerMapOnUserLocation()
    }
}
