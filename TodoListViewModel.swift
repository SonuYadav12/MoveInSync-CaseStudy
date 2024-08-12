import Foundation

class TodoListViewModel: ObservableObject {
    @Published var todos: [TodoItem] = [] {
        didSet {
            saveTodos()
        }
    }
    
    init() {
        loadTodos()
    }
    
    func addTodo(title: String) {
        let newTodo = TodoItem(title: title)
        todos.append(newTodo)
    }
    
    func removeTodo(at offsets: IndexSet) {
        todos.remove(atOffsets: offsets)
    }
    
    func toggleCompletion(for todo: TodoItem) {
        if let index = todos.firstIndex(where: { $0.id == todo.id }) {
            todos[index].isCompleted.toggle()
        }
    }
    
    private func saveTodos() {
        if let encoded = try? JSONEncoder().encode(todos) {
            UserDefaults.standard.set(encoded, forKey: "todos")
        }
    }
    
    private func loadTodos() {
        if let data = UserDefaults.standard.data(forKey: "todos"),
           let decoded = try? JSONDecoder().decode([TodoItem].self, from: data) {
            todos = decoded
        }
    }
}
