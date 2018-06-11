#
class Appointment

  attr_accessor :date, :patient, :doctor

  @@all = []

  #date as a string, like "Monday, August 1st"
  def initialize(patient, doctor, date)
    @date = date
    @patient = patient
    @doctor = doctor
    @@all << self
  end

  def self.all
    @@all
  end


end
