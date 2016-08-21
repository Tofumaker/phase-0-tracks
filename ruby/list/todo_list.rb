class TodoList

def initialize(x)
  @list = x

end

def get_items  
  @list
end

def add_item(x)
  @list.push(x)
  # p @list
end

def delete_item(x)
  @list.delete(x)
end

def get_item(x)
  @list[x]
end      

end  