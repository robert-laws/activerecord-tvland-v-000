class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters

  def build_network(letters)
    self.network_id = Network.new(letters)
  end
end
