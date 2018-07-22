require_relative 'patient'
require_relative 'doctor'

class Appointment

  attr_accessor :patient, :doctor, :date


  @@all = []

  def self.all
    @@all
  end

  def initialize(patient, doctor, date)
    @patient = patient
    @doctor = doctor
    @date = date
    Appointment.all << self
  end

end
