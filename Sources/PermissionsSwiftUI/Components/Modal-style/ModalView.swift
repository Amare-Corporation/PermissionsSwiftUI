//
//  ModalView.swift
//
//
//  Created by Jevon Mao on 1/30/21.
//

import SwiftUI

struct ModalView: View {
    @Binding var showModal: Bool
    var mainText:PermissionStore.MainTexts{PermissionStore.shared.mainTexts}

    var body: some View {
        ScrollView {
            VStack {
                HeaderText(exitButtonAction: {showModal=false})
                    
                PermissionSection(showModal:$showModal, isAlert:false)
                    .background(Color(.secondarySystemBackground))
                    .clipShape(RoundedRectangle(cornerRadius: 15))
                    .padding()
                    .padding(.horizontal, 5)
                    .frame(maxWidth:UIScreen.main.bounds.width-30)

                Text(mainText.bottomDescription)
                    .font(.system(.callout, design: .rounded))
                    .foregroundColor(Color(.systemGray))
                    .padding(.horizontal)
                Spacer()
            }
            .padding(.bottom,30)

        }
        .background(Color(.systemBackground))
        .edgesIgnoringSafeArea(.all)
    }
}
