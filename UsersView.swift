import SwiftUI

struct UsersView: View {
    var body: some View {
        NavigationView {
            List {
                NavigationLink("Paciente 1", destination: PatientDetailView())
                NavigationLink("Paciente 2", destination: PatientDetailView())
            }
            .navigationTitle("Usuarios")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("Añadir") {
                        // Añadir nuevo paciente
                    }
                }
            }
        }
    }
}
