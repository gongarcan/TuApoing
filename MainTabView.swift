import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            UsersView()
                .tabItem {
                    Label("Usuarios", systemImage: "person.3")
                }

            CalendarView()
                .tabItem {
                    Label("Calendario", systemImage: "calendar")
                }

            SettingsView()
                .tabItem {
                    Label("Opciones", systemImage: "gear")
                }
        }
    }
}
