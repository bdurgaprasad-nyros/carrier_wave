#In order to speed up tests, it’s recommended to switch off processing
#If you need to test your processing, just enable it on your test file


#~ if Rails.env.test?
  #~ CarrierWave.configure do |config|
    #~ config.storage = :file
    #~ config.enable_processing = false
  #~ end
#~ end

    CarrierWave.configure do |config|
      config.fog_credentials = {
        :provider               => 'AWS',       # required
        :aws_access_key_id      => 'AKIAJG7Y5HIWYXB6EMGQ',       # required
        :aws_secret_access_key  => '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',       # required
        :region                 => 'eu-west-1'  # optional, defaults to 'us-east-1'
      }
      config.fog_directory  = 'prasad_images'                     # required
      #config.fog_host       = 'https://assets.example.com'            # optional, defaults to nil
      #config.fog_public     = "public-read"                           # optional, defaults to true
      config.fog_attributes = {'Cache-Control'=>'max-age=315576000'}  # optional, defaults to {}
    end
    
