class Patient 
  attr_accessor :name
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @@all << self
  end
  
  def self.all 
    @@all 
  end
  
  def new_appointment(date, doctor)
    Appointment.new(date, self, doctor)
  end
  
  def appoitments
    new_appointments.collect do |appt|
      appt.patient == self
    end
    appointments
  end
  
  def doctors 
    new_appointments.collect do |appt|
      appt.doctor
    end
  end
end