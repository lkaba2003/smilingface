CarrierWave.configure do |config|
  config.fog_credentials = {
    :provider               => 'lkaba',
    :aws_access_key_id      => 'lkaba',
    :aws_secret_access_key  => 'lkaba',
     :region                 => 'us-west-2' # Change this for different AWS region. Default is 'us-east-1'
  }
  config.fog_directory  = 'lk'
end
