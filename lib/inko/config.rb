# encoding: utf-8

require 'yaml'

module Inko
    module Config
        # file name for credential information
        ConfigFileName = File.expand_path('~') + '/.inkorc.yml'

        # if file is not found
        unless File.exist? ConfigFileName
            File.open ConfigFileName,"w" do |file|
                file.print <<-EOS.gsub(/^\s+/, '')
                        # Choose voice actor from System Setting.
                        # To call off in Japanese, download voice data (Kyoko).
                        voice_actor:        Alex

                        # Get app keys at https://dev.twitter.com/ and write them.
                        consumer_key:       YourConsumerKey
                        consumer_secret:    YourConsumerSecretKey
                        oauth_token:        YourOAuthToken
                        oauth_token_secret: YourOAuthSecretToken
                EOS

                STDERR.puts "Configuration-keys are not found."
                STDERR.puts "Write your consumer keys and OAuth keys to #{ConfigFileName}"
            end
            system 'bash', '-c', (ENV['EDITOR'] || 'vi')+' "$@"', '--', ConfigFileName
        end

        # load configuration from file
        yaml = YAML.load(File.open(Config::ConfigFileName).read)
        VoiceActor     = yaml['voice_actor']
        ConsumerKey    = yaml['consumer_key']
        ConsumerSecret = yaml['consumer_secret']
        OAuthToken     = yaml['oauth_token']
        OAuthSecret    = yaml['oauth_token_secret']
    end
end
