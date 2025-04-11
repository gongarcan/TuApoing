import SwiftUI

struct SettingsView: View {
    @State private var sessionTypes = ["Terapia de 50'", "Sesión de pilates", "Sesión pélvico-perineal"]
    @State private var newSessionType = ""

    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Tipos de sesión")) {
                    ForEach(sessionTypes, id: \.self) { type in
                        Text(type)
                    }
                    TextField("Nuevo tipo...", text: $newSessionType)
                    Button("Añadir") {
                        if !newSessionType.isEmpty {
                            sessionTypes.append(newSessionType)
                            newSessionType = ""
                        }
                    }
                }
            }
            .navigationTitle("Opciones")
        }
    }
}
