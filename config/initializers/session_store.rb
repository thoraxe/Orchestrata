# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_orchestrata_ui_session',
  :secret      => 'c1c0643da9925db1e21b557da5c761fc49d8ecc54563d80fd85272e583501e4fcf0183869e625e7d32bd9878d4cbcf7448f3e315adcd5d85cf54611f901a0b1f'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
