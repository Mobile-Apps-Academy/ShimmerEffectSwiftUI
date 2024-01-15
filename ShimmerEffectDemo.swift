
// Created By: Mobile Apps Academy
// Subscribe : https://www.youtube.com/@MobileAppsAcademy?sub_confirmation=1
// Medium Blob : https://medium.com/@mobileappsacademy
// LinkedIn : https://www.linkedin.com/company/mobile-apps-academy
// Twitter : https://twitter.com/MobileAppsAcdmy
// Lisence : https://github.com/Mobile-Apps-Academy/MobileAppsAcademyLicense/blob/main/LICENSE.txt



import SwiftUI

struct ShimmerEffectDemo: View {
    var body: some View {
        VStack {
            ShimmerEffect()
            ShimmerEffect()
            ShimmerEffect()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .ignoresSafeArea()
        .background(.black)
    }
    
    @ViewBuilder
    private func ShimmerEffect() -> some View {
        VStack {
            HStack {
               ShimmerView()
                    .cornerRadius(30)
                    .frame(width: 60, height: 60)
                
                VStack {
                    ShimmerView()
                         .cornerRadius(5)
                         .frame(height: 20)
                    ShimmerView()
                         .cornerRadius(5)
                         .frame(height: 20)
                }
            }
            ShimmerView()
                 .cornerRadius(5)
                 .frame(height: 150)
        }
    }
}

#Preview {
    ContentView()
}
