//
//  MapScreenVC.swift
//  ScooterApp
//
//  Created by Mehmet Serhat Gültekin on 8.01.2025.
//

import UIKit
import MapKit
import CoreLocation

class MapScreenVC: UIViewController {
    @IBOutlet weak var mapView: MKMapView!
    @IBOutlet weak var latitudeLabel: UILabel!
    @IBOutlet weak var longitudeLabel: UILabel!
    @IBOutlet weak var speedLabel: UILabel!
    
    var locationManager: CLLocationManager = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        locationManager.desiredAccuracy = kCLLocationAccuracyBest // Bu satır, konumun doğruluk seviyesini ayarlıyor.Mevcut en yüksek doğruluk seviyesini belirtir.
        locationManager.delegate = self
        locationManager.requestWhenInUseAuthorization() // Uygulama çalışırken (foreground) konum verilerine erişmek için kullanıcının izni istenir.
        locationManager.startUpdatingLocation() // Konum bilgisi sürekli güncellenir ve didUpdateLocations delegate metodu çağrılır.
        
        mapView.showsUserLocation = true
       
    }
    

   
}
extension MapScreenVC: CLLocationManagerDelegate {
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {  // // Konum başarıyla alındığında çağrılan delegate metodu
        if let lastLocation = locations.last {
            let userLocation = CLLocationCoordinate2D(latitude: lastLocation.coordinate.latitude,        // konum koordinatlarını alır
                                                      longitude: lastLocation.coordinate.longitude)
            let annotation = MKPointAnnotation()
            annotation.coordinate = userLocation
            annotation.title = "Konumunuz"
            mapView.addAnnotation(annotation)
            
            latitudeLabel.text = "Enlem: \(lastLocation.coordinate.latitude)"
            longitudeLabel.text = "Boylam: \(lastLocation.coordinate.longitude)"
            speedLabel.text = "Hız: \(lastLocation.speed)"
            
            let region = MKCoordinateRegion(center: userLocation,
                                            latitudinalMeters: 1000, // 1 km yarıçapında göster
                                            longitudinalMeters: 1000)
            mapView.setRegion(region, animated: true)
            
            // Konum güncellemesini durdur (isteğe bağlı)
            locationManager.stopUpdatingLocation()
        }
    }
    
    // Konum alınırken hata oluştuğunda çağrılan delegate metodu
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        print("Konum alınırken hata oluştu: \(error.localizedDescription)")
    }
}



