require 'yaml'
require 'terminal-table'
require 'colorize'

class Player
  attr_accessor :name, :score, :date

  def initialize(item)
    @name = item[:name]
    @score = item[:score]
    @date = item[:date]
  end

end
def load_table
  scores = YAML.load(File.read("db.yaml"))

  rows = []

  scores.each do |i|
    i = Player.new(i)
    row = [i.name, i.score, i.date]
    rows << row
  end

  table = Terminal::Table.new :headings => ['Name'.green, 'Score'.green, 'Date'.green], :rows => rows
  puts table
end

load_table

gordo = {name: 'Gordo', score: 1000, date: 1980-05-25}
gordo1 = Player.new(gordo)


File.open('db.yaml', 'w') do |out|
  YAML.dump gordo1.to_yaml, out
end

load_table