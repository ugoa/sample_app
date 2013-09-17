module UsersHelper
  def gravatar_for(user)
    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
    gravatar_url = "www.gravatar.com/avatars/#{gravatar_id}.png"
    image_tag(gravatar_url, alt: user.name, class: "gravatar")
  end
end
