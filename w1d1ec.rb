
@contact_list = []

def menu
  puts "---Contact List ---"
  puts "1) All Contacts"
  puts "2) Create Contact"
  puts "3) Edit Contacts"
  puts "4) Quit"
end

def create_contact
  puts "Enter contact name: "
  name = gets.chomp
  @contact_list << name
  puts
  puts "Contact with name: #{name} has been added.\n\n"
end

def all_contacts
  puts "Contact List"
  puts @contact_list
end

def edit_contact_menu
  puts "To edit contact press 1: "
  puts "To delete contact press 2: "
  edit_num = gets.chomp.to_i
    case edit_num
      when 1
        edit_contact
      when 2
        delete_contact
      else
        exit
      end
end

def edit_contact
  puts
  puts "Enter contact name to edit: "
  edit_from = gets.chomp
  puts "Enter new contact information: "
  edit_to = gets.chomp
  @contact_list.each { |x|
    if (x == edit_from)
    x.replace(edit_to)
  end}
  puts
  puts "Contact information has been changed from #{edit_from} to #{edit_to}."
end

def delete_contact
  puts
  puts "Enter contact name to delete: "
  delete_name = gets.chomp
  @contact_list.delete(delete_name)
  puts
  puts "#{delete_name} has been removed from the contact list."
end

while true
  if @contact_list.length >= 5
    puts "List Full"
    exit
  end
  puts
  menu
  puts "Enter choice: "
  num = gets.chomp.to_i
  case num
    when 1
    all_contacts
    when 2
    create_contact
    when 3
      edit_contact_menu
    when 4
    exit
  else
    puts "Not a valid option\n"
  end
end
