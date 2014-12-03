CarrierWave.configure do |config|
  config.fog_credentials = {
    :provider               => 'AWS',
    :aws_access_key_id      => 'AKIAJRPCPX7VG2XJKS2A',
    :aws_secret_access_key  => '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',
     :region                 => 'us-west-2' # Change this for different AWS region. Default is 'us-east-1'
  }
  config.fog_directory  = 'smiling-face'
end
