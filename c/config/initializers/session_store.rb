# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_c_session',
  :secret      => 'd775c958d81dd7807ad5f24a0635b9359644f8659f31cade97f4e30bc34f8c2b7bfae13e59b96212bef37678dd05cdb84d8586e053bacea1a52778feeb5e6ac8'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
