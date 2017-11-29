
array_of_tasks = [
  {description: "get the mail", list_id: 1},
  {description: "do laundry", list_id: 1},
  {description: "grocery shop", list_id: 2},
  {description: "take out trash", list_id: 3},
  {description: "wash face", list_id: 3},
  {description: "shower", list_id: 2}
]

array_of_lists = [
  {title: "Yassi"},
  {title: "Diego"},
  {title: "Todd"}
]

array_of_lists.each do |list|
  List.create(list)
end

array_of_tasks.each do |task|
  Task.create(task)
end
