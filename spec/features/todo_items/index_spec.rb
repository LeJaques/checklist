require 'spec_helper'

describe "Viewing todo items" do 

  let!(:todo_list) {TodoList.create(title: "Grocery list", description: "Groceries") }             

  before do 
   
  end

  it "displays the title of the todo list" do
    visit_todo_list(todo_list)
    within ("h1") do 
      expect(page).to have_content(todo_list.title)
    end
  end
  it "displays no items when a todo_list is empty" do
    expect(page.all("ul.todo_items li").size).to eq(0)

  end
end
