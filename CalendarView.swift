import SwiftUI

struct CalendarView: View {
    @State private var selectedDate = Date()

    var body: some View {
        VStack {
            HStack {
                Button(action: { selectedDate = Calendar.current.date(byAdding: .weekOfYear, value: -1, to: selectedDate)! }) {
                    Image(systemName: "chevron.left")
                }
                Spacer()
                Text(weekRangeText(for: selectedDate))
                    .font(.headline)
                Spacer()
                Button(action: { selectedDate = Calendar.current.date(byAdding: .weekOfYear, value: 1, to: selectedDate)! }) {
                    Image(systemName: "chevron.right")
                }
            }
            .padding()

            ScrollView {
                VStack(alignment: .leading) {
                    ForEach(0..<7, id: \.self) { dayOffset in
                        let date = Calendar.current.date(byAdding: .day, value: dayOffset, to: selectedDate)!
                        Button(action: {
                            // Mostrar citas del día
                        }) {
                            Text(date, style: .date)
                        }
                    }
                }.padding()
            }
        }
        .navigationTitle("Calendario")
    }

    func weekRangeText(for date: Date) -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "dd MMM"
        let start = Calendar.current.date(from: Calendar.current.dateComponents([.yearForWeekOfYear, .weekOfYear], from: date))!
        let end = Calendar.current.date(byAdding: .day, value: 6, to: start)!
        return "\(formatter.string(from: start)) - \(formatter.string(from: end))"
    }
}
