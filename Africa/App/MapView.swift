//
//  MapView.swift
//  Africa
//
//  Created by Igor Efimov on 02.10.2021.
//

import MapKit
import SwiftUI

struct MapView: View {
    @State private var region: MKCoordinateRegion = {
        var mapCoordinates = CLLocationCoordinate2D(latitude: 6.600286, longitude: 16.4377599)
        var mapZoomLevel = MKCoordinateSpan(latitudeDelta: 70.0, longitudeDelta: 70.0)
        var mapRegion = MKCoordinateRegion(center: mapCoordinates, span: mapZoomLevel)

        return mapRegion
    }()

    let locations: [NationalParkLocation] = Bundle.main.decode("locations.json")

    var body: some View {
        Map(coordinateRegion: $region, annotationItems: locations, annotationContent: {
            item in
            MapAnnotation(coordinate: item.location){
                MapAnnotationView(location: item)
            }
        })
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
