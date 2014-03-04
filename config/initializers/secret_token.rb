# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
#DapperApp::Application.config.secret_key_base = '865cb0541e6d734d3504bfdfc17b3f8a2de2842346af98d896b3257c63c73cd48488a11e02cde57041528b208081ab5ffc852bc0988844d7b9b1fa0a957ca895'

require 'securerandom'

def secure_token
  token_file = Rails.root.join('.secret')
  if File.exist?(token_file)
    # Use the existing token.
    File.read(token_file).chomp
  else
    # Generate a new token and store it in token_file.
    token = SecureRandom.hex(64)
    File.write(token_file, token)
    token
  end
end

DapperApp::Application.config.secret_key_base = secure_token

