import SwiftUI

struct PatientDetailView: View {
    @State private var notes: [String] = []
    @State private var newNote = ""

    var body: some View {
        VStack {
            Text("Historial Clínico")
            List(notes, id: \.self) { Text($0) }
            HStack {
                TextField("Nueva nota...", text: $newNote)
                Button("Guardar") {
                    if !newNote.isEmpty {
                        notes.append(newNote)
                        newNote = ""
                    }
                }
            }
        }.padding()
    }
}