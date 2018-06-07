
class Person
  attr_accessor :partner, :name

  def initialize(name)
    @name = name
  end

  def get_married(person)
    self.partner = person
    if person.class != Person
      begin                         # A rescue error allows our program to run after it has encountered the error
        raise PartnerError          # it will show a PartnerError an will print out a message the go back and
      rescue PartnerError => error  # execute the program.
          puts error.message
      end
    else
      person.partner = self
    end
  end
end

class PartnerError < StandardError
  def message
    "you must give the get_married method an
     argument of an instance of the person class!"
  end
end


beyonce = Person.new("Beyonce")
beyonce.get_married("Jay-Z")
puts beyonce.name
