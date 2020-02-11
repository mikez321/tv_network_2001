require './lib/character'
require './lib/show'
require 'minitest/autorun'
require 'minitest/pride'

class CellTest < Minitest::Test

  def test_it_exists
    kitt = Character.new({name: "KITT", actor: "William Daniels", salary: 1_000_000})
    michael_knight = Character.new({name: "Michael Knight", actor: "David Hasselhoff", salary: 1_600_000})
    knight_rider = Show.new("Knight Rider", "Glen Larson", [michael_knight, kitt])

    assert_instance_of Show, knight_rider
  end

  def test_it_can_display_information_about_itself
    kitt = Character.new({name: "KITT", actor: "William Daniels", salary: 1_000_000})
    michael_knight = Character.new({name: "Michael Knight", actor: "David Hasselhoff", salary: 1_600_000})
    knight_rider = Show.new("Knight Rider", "Glen Larson", [michael_knight, kitt])

    assert_equal "Knight Rider", knight_rider.name
    assert_equal "Glen Larson", knight_rider.creator
    assert_equal [michael_knight, kitt], knight_rider.characters
  end

  def test_it_costs_a_lot_of_money
    kitt = Character.new({name: "KITT", actor: "William Daniels", salary: 1_000_000})
    michael_knight = Character.new({name: "Michael Knight", actor: "David Hasselhoff", salary: 1_600_000})
    knight_rider = Show.new("Knight Rider", "Glen Larson", [michael_knight, kitt])

    assert_equal 2600000, knight_rider.total_salary
  end

  def test_it_can_display_highest_paid_actor
    kitt = Character.new({name: "KITT", actor: "William Daniels", salary: 1_000_000})
    michael_knight = Character.new({name: "Michael Knight", actor: "David Hasselhoff", salary: 1_600_000})
    knight_rider = Show.new("Knight Rider", "Glen Larson", [michael_knight, kitt])

    assert_equal "David Hasselhoff", knight_rider.highest_paid_actor
  end

  def test_it_has_actors
    kitt = Character.new({name: "KITT", actor: "William Daniels", salary: 1_000_000})
    michael_knight = Character.new({name: "Michael Knight", actor: "David Hasselhoff", salary: 1_600_000})
    knight_rider = Show.new("Knight Rider", "Glen Larson", [michael_knight, kitt])
    assert_equal ["David Hasselhoff", "William Daniels"], knight_rider.actors
  end

end
