class ToDo{
  String? id;
  String? todoText;
  bool isDone;

  ToDo({
    required this.id,
    required this.todoText,
    this.isDone = false,
});
  static List<ToDo> todoList(){
    return [
      ToDo(id: '01', todoText: 'Prima nota di esempio' , isDone: true),
      // ToDo(id: '02', todoText: 'buy groceries' , isDone: true),
      // ToDo(id: '03', todoText: 'check email' , ),
      // ToDo(id: '04', todoText: 'team meeting' , ),
      // ToDo(id: '05', todoText: 'dinner with jenny' , ),


    ];
  }
}