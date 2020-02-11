class Show
  attr_reader :name, :creator, :characters
  def initialize(name, creator, characters)
    @name = name
    @creator = creator
    @characters = characters
  end

  def total_salary
    total = characters.map do |character|
      character.info[:salary]
    end
    total.sum
  end

  def highest_paid_actor
    pay_rates = characters.sort_by { |character| character.info[:salary] }.reverse
    pay_rates.first.info[:actor]
  end

  def actors
  end
end
