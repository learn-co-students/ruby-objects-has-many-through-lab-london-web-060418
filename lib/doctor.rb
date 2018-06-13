class Doctor

  ALL = []

  attr_reader :name

  def initialize(name)
    @name = name
    ALL << self
  end

  def new_appointment(patient, date)
    appointment = Appointment.new(patient, self, date)
  end

  def appointments
    Appointment.all.select do |appointment|
      appointment.doctor == self
    end
  end

  def patients
    appointments.map { |appointment| appointment.patient }
  end

  def self.all
    return ALL
  end

end
