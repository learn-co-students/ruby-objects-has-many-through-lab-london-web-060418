#
class Patient

  attr_accessor :name, :appointment, :doctor

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  #creates appt for this patient 
  def new_appointment(doctor, date)
    Appointment.new(self, doctor, date)
  end

  #iterates through the appointments array and returns appointments that belong to the patient.
  def appointments
    Appointment.all.select do |appt|
      appt.patient == self
    end
  end

  #iterates over that patient's appointments and collects the doctor that belongs to each appointment.
  def doctors
    appointments.map do |patient|
      patient.doctor
    end
  end

end
