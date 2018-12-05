class Car < ApplicationRecord
  # validates_presence_of :make
  # validates_uniqueness_of :make

  validates :make, uniqueness: true, presence: true

  def self.by_make
    #order the cars by make ascending order
    #Car.order(:make)
    order(:make)
  end

  def self.by_color
    #order the cars by color ascending order
    order(:color)
  end

  def self.by_year(directio = :asc)
    #order the cars by year ascendibg order
    order(year: direction)
  end

  def paint(color)
    self.update(color: color)
    #changes the color
  end

  def info
    self.attributes.except('id', 'created_at', 'updated_at')
    #returns all the info of the car
  end

  def honk
    "beep beep!"
    #returns the car horn
  end


end
