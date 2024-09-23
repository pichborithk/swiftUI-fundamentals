//
//  AccountView.swift
//  Appetizers
//
//  Created by Pichborith Kong on 9/19/24.
//

import SwiftUI

#Preview {
    AccountView(viewModel: AccountViewModel())
}

struct AccountView: View {
    @StateObject var viewModel = AccountViewModel()

    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Personal Information")) {
                    TextField("First Name", text: $viewModel.user.firstName)
                    TextField("Last Name", text: $viewModel.user.lastName)
                    TextField("Email", text: $viewModel.user.email)
                        .keyboardType(.emailAddress)
                        .autocapitalization(.none)
                        .disableAutocorrection(true)
                    DatePicker("Birthday", selection: $viewModel.user.birthDate, displayedComponents: .date)

                    Button {
                        viewModel.saveChanges()
                    } label: {
                        Text("Save Changes")
                    }
                }

                Section(header: Text("Requests")) {
                    Toggle("Extra Napkins", isOn: $viewModel.user.extraNapkins)
//                        .toggleStyle(SwitchToggleStyle(tint: .brandPrimary))
                    Toggle("Frequent Refills", isOn: $viewModel.user.frequentRefills)
//                        .toggleStyle(SwitchToggleStyle(tint: .brandPrimary))
                }
                .toggleStyle(SwitchToggleStyle(tint: .brandPrimary))
            }

            .navigationTitle("😀 Account")
        }
        .onAppear(perform: viewModel.retrieveUser)
        .alert(item: $viewModel.alertItem) { alertItem in
            Alert(title: alertItem.title,
                  message: alertItem.message,
                  dismissButton: alertItem.dismissButton)
        }
    }
}
