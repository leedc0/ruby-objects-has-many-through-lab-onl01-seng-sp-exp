class Doctor
    attr_accessor :name
  
    # empty Class variable (array) to hold all Doctors
    @@all = []
  
    # initialized Doctor with a name and is saved in the @@all array
    def initialize(name)
      @name = name
      @@all << self
    end
  
    # Class method that knows each Doctor in the class variable
    def self.all
      @@all
    end
  
    # instance method that takes in a date and an instance of the Patient class, and creates a new Appointment associated with the Doctor
    def new_appointment(date, patient)
      Appointment.new(date, patient, self)
    end
  
    #instance method that iterates through all Appointments and finds those belonging to this doctor
    def appointments
      Appointment.all.select { |appointment| appointment.doctor == self }
    end
  
    # instance method that iterates over that doctor's Appointments and collects the patient that belongs to each Appointments
    def patients
      appointments.map(&:patient)
    end
  end