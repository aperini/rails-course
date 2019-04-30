# document this class
class Question < ApplicationRecord
  def gravatar
    # calculates an MD5 from a string and gets the gravatar for the hash
    "http://www.gravatar.com/avatar/#{Digest::MD5.hexdigest(email)}"
  end
end
