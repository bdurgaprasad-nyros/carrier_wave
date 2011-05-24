#In order to speed up tests, it’s recommended to switch off processing
#If you need to test your processing, just enable it on your test file


#~ if Rails.env.test?
  #~ CarrierWave.configure do |config|
    #~ config.storage = :file
    #~ config.enable_processing = false
  #~ end
#~ end