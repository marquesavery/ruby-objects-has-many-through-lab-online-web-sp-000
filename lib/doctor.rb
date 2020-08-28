class Doctor
  attr_accessor :name, :appointment

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_appointment(date, patient)
    Appointment.new(date, patient, self)
  end

  def appointments
    Appointment.all.select do |appointments|
      appointments.doctor == self
  end

  def patients
    appointments.collect do |appointment|
      appointment.patient
    end
  end

  def self.all
    @@all
  end
end
