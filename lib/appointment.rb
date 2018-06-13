#Relationship between Patient and Doctor
class Appointment

  ALL = []

  attr_accessor :patient, :doctor, :date

  def initialize(patient, doctor, date)
    @patient = patient
    @doctor = doctor
    @date = date

    ALL << self
  end

  def self.all
    return ALL
  end

end
