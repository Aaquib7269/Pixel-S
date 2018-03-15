class Album
  include Mongoid::Document
  include Mongoid::Timestamps
  
  field :name, type: String
  field :user_id
  
  validates_presence_of :name  #name can't be empty

  belongs_to :user
  has_many :pics,dependent: :destroy #when a user will be deleted its associated pics becomes useless

end
