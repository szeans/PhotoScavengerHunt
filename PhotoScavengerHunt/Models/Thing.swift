//
//  Thing.swift
//  PhotoScavengerHunt
//
//  Created by SEAN CHOI on 2/8/23.
//

import UIKit
import CoreLocation

class Thing {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    let title: String
    let description: String
    var image: UIImage?
    var imageLocation: CLLocation?
    var isComplete: Bool {
        image != nil
    }

    init(title: String, description: String) {
        self.title = title
        self.description = description
    }

    func set(_ image: UIImage, with location: CLLocation) {
        self.image = image
        self.imageLocation = location
    }
}

    extension Thing {
    static var mockedTasks: [Thing] {
        return [
            Thing(title: "Your favorite cafe",
                 description: "Where do you get the best coffee?"),
            Thing(title: "Your favorite place to skate",
                 description: "Where is the best flat ground on campus?"),
            Thing(title: "Your favorite place to study",
                 description: "Where on campus has the best study vibes?")
        ]
    }
}
