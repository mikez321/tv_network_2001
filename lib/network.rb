class Network
  attr_reader :name, :shows
  def initialize(name)
    @name = name
    @shows = []
  end

  def add_show(show)
    @shows << show
  end

  def main_characters
    shows.map do |show|
      show.characters
    end.flatten
  end

  def actors_by_show
    shows.reduce ({}) do |listing, shows|

      if listing.include?(shows)
        shows << shows.characters
      else
        listing[shows.name] = shows.characters
      end
      listing
    end
  end

    # shows.reduce ({}) do |listing, shows|
    #   listing[:shows] = shows.characters
    #   listing
    # end
end
