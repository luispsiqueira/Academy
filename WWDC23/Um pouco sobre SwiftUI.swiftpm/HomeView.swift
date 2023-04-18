import SwiftUI

struct HomeView: View {
    
    @State var iconColor: Color = .gray
    
    var body: some View {
        VStack{
            Text("Open Session")
                        .foregroundColor(.purple)
                        .font(.largeTitle)
                        .bold()
            
            HStack(spacing: 12){
                Text("03 de abril")
                
                Text("Luis")
            }
            .padding(.all, 60)
            
            Image(systemName: "display")
                .font(.system(size: 120))
                .foregroundColor(iconColor)
            
            Button{
                iconColor = .purple
            } label: {
                Text("Mudar cor do ícone")
            }
         
            NavigationLink{
                DetailView()
            } label: {
                Text("Navigation link")
                    .bold()
                    .foregroundColor(.red)
            }
            .padding(.top, 60)
        }
    }
}
