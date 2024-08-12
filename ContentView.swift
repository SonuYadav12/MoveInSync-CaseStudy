import SwiftUI

struct ContentView: View {
    @StateObject private var viewModel = TodoListViewModel()
    @State private var newTodoTitle: String = ""
    
    var body: some View {
        NavigationView {
            VStack {
                List {
                    ForEach(viewModel.todos) { todo in
                        HStack {
                            Text(todo.title)
                            Spacer()
                            if todo.isCompleted {
                                Image(systemName: "checkmark")
                            }
                        }
                        .contentShape(Rectangle())
                        .onTapGesture {
                            viewModel.toggleCompletion(for: todo)
                        }
                    }
                    .onDelete(perform: viewModel.removeTodo)
                }
                
                HStack {
                    TextField("Enter new todo", text: $newTodoTitle)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    Button(action: addTodo) {
                        Text("Add")
                    }
                    .disabled(newTodoTitle.isEmpty)
                }
                .padding()
            }
            .navigationTitle("Todo List")
        }
    }
    
    private func addTodo() {
        viewModel.addTodo(title: newTodoTitle)
        newTodoTitle = ""
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
