import SwiftUI

struct PatientDetailView: View {
    @State private var notes: [String] = []
    @State private var newNote = ""

    var body: some View {
        VStack(alignment: .leading) {
            Text("Historial Clínico").font(.title2)
            List {
                ForEach(notes, id: \.self) { note in
                    Text(note)
                }
            }
            HStack {
                TextField("Nueva nota...", text: $newNote)
                Button("Guardar") {
                    if !newNote.isEmpty {
                        notes.append(newNote)
                        newNote = ""
                    }
                }
            }.padding()
        }
        .padding()
        .navigationTitle("Ficha del Paciente")
    }
}
