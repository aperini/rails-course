# This module serves for sharing a method used in more than one model
# It takes care of the DRY principle
module HasGravatar

  def gravatar
    # calculates an MD5 from a string and gets the gravatar for the hash
    "http://www.gravatar.com/avatar/#{Digest::MD5.hexdigest(email)}"
  end
end
