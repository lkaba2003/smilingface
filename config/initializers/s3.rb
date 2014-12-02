CarrierWave.configure do |config|
  config.fog_credentials = {
    :provider               => 'AWS',
    :aws_access_key_id      => 'AKIAIL63L4GOMONG57AA',
    :aws_secret_access_key  => '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',
     :region                 => 'us-west-2' # Change this for different AWS region. Default is 'us-east-1'
  }
  config.fog_directory  = 'smiling-face'
end
