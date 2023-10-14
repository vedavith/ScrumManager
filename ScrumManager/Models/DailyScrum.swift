//
//  DailyScrum.swift
//  ScrumManager
//
//  Created by Vedavith Ravula on 14/10/23.
//

import Foundation

struct DailyScrum: Identifiable {
    let id: UUID
    var title: String
    var attendees: [Attendee]
    var lengthInMinutes: Int
    var lengthInMinutesAsDouble: Double {
        get {
            return Double(lengthInMinutes)
        }
        set {
            lengthInMinutes = Int(newValue)
        }
    }
    var theme: Theme
    
    init(id: UUID = UUID(), title: String, attendees: [String], lengthInMinutes: Int, theme: Theme) {
        self.id = id
        self.title = title
        self.attendees = attendees.map { Attendee(name: $0) }
        self.lengthInMinutes = lengthInMinutes
        self.theme = theme
    }
}

extension DailyScrum {
    struct Attendee: Identifiable{
        let id: UUID
        var name: String
        
        init(id: UUID = UUID(), name: String) {
            self.id = id
            self.name = name
        }
    }
    
    static var emptyScrum: DailyScrum {
        DailyScrum(title: "", attendees: [], lengthInMinutes: 5, theme: .sky)
    }
}

extension DailyScrum {
    static let sampleData: [DailyScrum] = [
        DailyScrum(
            title: "Engineering Team",
            attendees: ["Jim","Sravan","Ved","Vaka","Pasala","Ravi"],
            lengthInMinutes: 10,
            theme: .yellow
        ),
        DailyScrum(
            title: "Architect Team",
            attendees: ["Ved", "Abhishek", "Earl", "Mahesh", "Giri"],
            lengthInMinutes: 10,
            theme: .orange
        ),
        DailyScrum(
            title: "Product Managers",
            attendees: ["Ved","Sarita", "Vinay", "Geno"],
            lengthInMinutes: 10,
            theme: .bubblegum
        )
    ]
}
