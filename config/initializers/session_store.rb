# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_bcms_content_rotator_session',
  :secret      => 'a64ab95a53d5e4cd226f9008e4a1b8941e366617fe2541e5fcf35fe12ea3225fdacd00fc7131e561701dd73145ffb7ae75d30f5451630068b5c062421e407597'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
