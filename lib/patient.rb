class Patient
    attr_accessor :name
  
    # empty Class variable (array) to hold all Patient
    @@all = []
  
    # initialized Patient with a name and is saved in the @@all array
    def initialize(name)
      @name = name
      @@all << self
    end
  
    # Class method that knows each Patient in the class variable
    def self.all
      @@all
    end
  
    # instance methodthat takes in a date and an instance of the Doctor class in this order and creates a new Appointment associated with the patient
    def new_appointment(date, doctor)
      Appointment.new(date, self, doctor)
    end
  
    # instance method that iterates through the Appointments array and returns Appointments that belong to the patient
    def appointments
      Appointment.all.select { |appointment| appointment.patient == self }
    end
  
    # instance method that iterates over that patient's Appointments and collects the doctor that belongs to each Appointment
    def doctors
      appointments.map(&:doctor)
    end
  end  