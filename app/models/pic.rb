class Pic
  include Mongoid::Document
  include Mongoid::Timestamps  # for getting created_at time 
  include Mongoid::Paperclip   # paperclip gem lib
  
  field :title, type: String
  field :album_id
  field :user_id


  has_mongoid_attached_file :avatar,
  :styles => {
      :thumb => "200x200#",
      :small  => "20x20>",
      :medium => "350x350#{}" }
  
validates_attachment_file_name :avatar, :matches => [/png\Z/, /jpe?g\Z/, /gif\Z/]  #regex for image content type
validates_presence_of :title
validate :pic_limit, :on => :create #Limiting the Pics limit to be created less than 25

  belongs_to :user
  belongs_to :album


  def pic_limit
    if self.user.pics(:reload).count > 25
      errors.add(:base, "Your not Allowed to add more than 25 pics")
    end
  end

end
