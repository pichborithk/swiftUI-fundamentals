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
                    TextField("First Name", text: $viewModel.firstName)
                    TextField("Last Name", text: $viewModel.lastName)
                    TextField("Email", text: $viewModel.email)
                        .keyboardType(.emailAddress)
                        .autocapitalization(.none)
                        .disableAutocorrection(true)
                    DatePicker("Birthday", selection: $viewModel.birthDate, displayedComponents: .date)

                    Button {
                        viewModel.saveChanges()
                    } label: {
                        Text("Save Changes")
                    }
                }

                Section(header: Text("Requests")) {
                    Toggle("Extra Napkins", isOn: $viewModel.extraNapkins)
//                        .toggleStyle(SwitchToggleStyle(tint: .brandPrimary))
                    Toggle("Frequent Refills", isOn: $viewModel.frequentRefills)
//                        .toggleStyle(SwitchToggleStyle(tint: .brandPrimary))
                }
                .toggleStyle(SwitchToggleStyle(tint: .brandPrimary))
            }

            .navigationTitle("😀 Account")
        }
        .alert(item: $viewModel.alertItem) { alertItem in
            Alert(title: alertItem.title,
                  message: alertItem.message,
                  dismissButton: alertItem.dismissButton)
        }
    }
}
