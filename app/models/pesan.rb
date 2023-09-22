class Pesan < ApplicationRecord
  belongs_to :user
  belongs_to :room
  after_create_commit { broadcast_append_to self.room }
  before_create :confirm_partisipan

def confirm_partisipan
  if self.room.is_private
    is_partisipan = Partisipan.where(user_id: self.user.id, room_id: self.room.id).first
    throw :abort unless is_partisipan
  end
end
end
