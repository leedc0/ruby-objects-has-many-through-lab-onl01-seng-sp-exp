class Appointment
    attr_accessor :date, :doctor, :patient
  
    # empty Class variable (array) to hold all Appointment
    @@all = []
  
    # initialized Appointment with a date, a doctor, and a patient and is saved in the @@all array
    def initialize(date, patient, doctor)
      @date = date
      @doctor = doctor
      @patient = patient
      @@all << self
    end
  
    # Class method that knows each Appointment in the class variable
    def self.all
      @@all
    end
  end