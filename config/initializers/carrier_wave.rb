if Rails.env.production?
  CarrierWave.configure do |config|
    config.fog_credentials = {
      # Configuration for google
      :provider              => 'Google',
      :google_storage_access_key_id      => ENV['GO_ACCESS_KEY'],
      :google_storage_secret_access_key  => ENV['GO_SECRET_KEY']
    }
   
  end
end