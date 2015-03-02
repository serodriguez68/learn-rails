class Contact
  # Mix behavior of ActiveModel Class
  include ActiveModel::Model

  # Attributes match the fields in the contact form
  attr_accessor :name, :string
  attr_accessor :email, :string
  attr_accessor :content, :string

  # Validacion de los campos usando métodos de ActiveModel
  validates_presence_of :name
  validates_presence_of :email
  validates_presence_of :content
  validates_format_of :email,
    :with => /\A[-a-z0-9_+\.]+\@([-a-z0-9]+\.)+[a-z0-9]{2,4}\z/i
  validates_length_of :content, :maximum => 500

end
