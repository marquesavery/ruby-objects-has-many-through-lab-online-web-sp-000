class Appointment
  attr_accessor :date, :patient, :doctor

  @@all = []

  def initialize(date, patient, doctor)
    @date = date
    @pateint = patient
    @doctor = doctor
    @@all << self

  def self.all
    @@all
  end
end
