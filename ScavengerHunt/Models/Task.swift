//
//  Task.swift
//  lab-task-squirrel
//
//  Created by Charlie Hieger on 11/15/22.
//

import UIKit
import CoreLocation

class Task {
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

extension Task {
    static var mockedTasks: [Task] {
        return [
            Task(title: "Your favorite place to skateboard",
                 description: "Where is the best flatground on campus?"),
            Task(title: "Your favorite place to study",
                 description: "Where has the best quiet and focused vibe?"),
            Task(title: "Your favorite place to get a drink",
                 description: "Where is the best boba?")
        ]
    }
}
