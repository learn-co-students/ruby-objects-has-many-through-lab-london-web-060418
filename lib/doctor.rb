#
class Doctor

  attr_accessor :name, :patient, :appointment

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  #creates new appt that belongs to this doctor 
  def new_appointment(patient, date)
    Appointment.new(patient, self, date)
  end

  #iterates through all appointments and finds those belonging to this doctor.
  def appointments
    Appointment.all.select do |appt|
      appt.doctor == self
    end
  end

  #iterates over that doctor's appointments and collects the patient that belongs to each appointment.
  def patients
    appointments.map do |appt|
      appt.patient
    end
  end

end
