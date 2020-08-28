class Doctor
  attr_accessor :name, :appoinment

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_appointment(date, patient)
    self.appointment = Appointment.new(date, patient)
  end

  def self.all
    @@all
  end
end
