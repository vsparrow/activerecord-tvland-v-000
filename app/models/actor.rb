class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  # expect(emilia.full_name).to eq("Emilia Clarke")
  #
  #   NoMethodError:
  #     undefined method `full_name' for #<Actor id: 1, first_name: "Emilia", last_name: "Clarke">
  def full_name
    first = self.first_name
    last= self.last_name
    "#{first} #{last}"
  end
  #   Failure/Error: expect(emilia.list_roles).to include("Khaleesi - Game of Thrones")
  #
  # NoMethodError:
  #   undefined method `list_roles' for #<Actor id: 1, first_name: "Emilia", last_name: "Clarke">
  def list_roles
    roles=[]
    self.characters.each do |c|
      roles << "#{c.name} - #{c.show.name}"
    end
    # character = self.characters
    # puts "********************#{character}"
    # show= self.
    roles
  end
end
