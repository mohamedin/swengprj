# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_UDSPC_session',
  :secret      => 'df3c3b78598416c28c769c2e0a320be72b39b0b7ad3efaab7987b62a24061c97ff8457ac59ba69a89490642a709a8b0cef331082bf2fc168cc4e3a22589c9679'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
