import SwiftUI

struct CalendarView: View {
    @State private var selectedDate = Date()

    var body: some View {
        VStack {
            Text("Semana de: \(selectedDate.formatted(date: .abbreviated, time: .omitted))")
            Spacer()
        }
        .navigationTitle("Calendario")
    }
}