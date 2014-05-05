module UsersHelper

  # Returns the Gravatar (http://gravatar.com/) for the given user.
  def gravatar_for(user, options = { size: 50 })
    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
    size = options[:size]
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}?s=#{size}"
    image_tag(gravatar_url, alt: user.name, class: "gravatar")
  end

  def num_friends(user)
    x=0
    user.followers.each do |follower|
      user.followed_users.each do |following|
        if follower.email == following.email then
          x+=1
        end
      end
    end
    x
  end
end
