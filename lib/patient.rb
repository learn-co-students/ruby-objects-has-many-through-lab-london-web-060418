require_relative "doctor"
require_relative "appointment"

class Patient

  @@all = []

  attr_reader :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @all
  end

  def new_appointment(doctor, date)
    Appointment.new(date, self, doctor)
  end

  def appointments
    Appointment.all.select do |app|
      app.patient = self
    end
  end

  def doctors
    appointments.map do |app|
      app.doctor
    end.uniq
  end

end
