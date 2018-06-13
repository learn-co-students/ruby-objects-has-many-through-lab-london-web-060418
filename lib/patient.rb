class Patient

  ALL = []

  attr_reader :name

  def initialize(name)
    @name = name

    ALL << self
  end

  def new_appointment(doctor, date)
    Appointment.new(self, doctor, date)
  end

  def doctors
    return appointments.map {|appointment| appointment.doctor }
  end

  def appointments
    Appointment.all.select do |appointment|
      appointment.patient == self
    end
  end

  def self.all
    return ALL
  end

end
