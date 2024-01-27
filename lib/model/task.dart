enum TaskState{
  onGoing, finished, notStarted
}

enum TaskType{
  event, task, reminder
}

class Task{
  String name;
  TaskState state;
  TaskType type;
  DateTime? plannedDuration;
  DateTime? startDate;
  DateTime? endDate;

  Task({required this.name, required this.state, this.plannedDuration, this.startDate, this.endDate, required this.type});


  /*
  All getters
  */
  String getName(){
    return name;
  }

  TaskState getState(){
    return state;
  }

  TaskType getType(){
    return type;
  }

  DateTime? getPlannedDuration(){
    return plannedDuration;
  }

  DateTime? getStartDate(){
    return startDate;
  }

  DateTime? getEndDate(){
    return endDate;
  }

  /*
  All setters
  */
  void setName(String name){
    this.name = name;
  }

  void setState(TaskState state){
    this.state = state;
  }

  void setType(TaskType type){
    this.type = type;
  }

  void setPlannedDuration(DateTime? plannedDuration){
    this.plannedDuration = plannedDuration;
  }

  void setStartDate(DateTime? startDate){
    this.startDate = startDate;
  }

  void setEndDate(DateTime? endDate){
    this.endDate = endDate;
  }

}