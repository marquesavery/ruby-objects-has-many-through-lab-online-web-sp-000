class Patient
  attr_accessor :name, :appointment

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_appointment(date, doctor)
    self.appointment = Appointment.new(date, doctor)
  end

  def self.all
    @@all
  end
end
