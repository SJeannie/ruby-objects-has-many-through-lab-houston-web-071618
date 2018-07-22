require_relative 'appointment'
require_relative 'doctor'

class Patient

  attr_reader :name

  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    Patient.all << self
  end

  def new_appointment(doctor, date)
    Appointment.new(self, doctor, date)
  end

  def appointments
    Appointment.all.select do |appt|
      appt.patient == self
    end
  end

  def doctors
    appointments.collect do |appt|
      appt.doctor
    end 
  end

end
