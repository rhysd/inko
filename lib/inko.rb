# encoding: utf-8

require "inko/version"
require 'inko/config'

require 'user_stream'

module Inko extend self

    def filter? status
        !status.user || !status.text
    end

    # modify screen_name and text to make them easy to pronounce
    # _,!
    # cf http://d.hatena.ne.jp/nacookan/20081220/1229745342
    def pronunciationize status
        status.user.screen_name = status.user.screen_name.gsub(/_/, ' ').gsub(/([a-zA-Z]+|[0-9]+)/){$1 + ' '}.gsub(/@/,'@. ') 
        status.text = status.text.split(/\n/).join(" ")
        status
    end

    def run
        begin
            UserStream.configure do |config|
                config.consumer_key       = Config::ConsumerKey
                config.consumer_secret    = Config::ConsumerSecret
                config.oauth_token        = Config::OAuthToken
                config.oauth_token_secret = Config::OAuthSecret
            end
        rescue UserStream::Unauthorized => e
            STDERR.puts "contents of #{Config::ConfigFileName} is invalid!"
            raise e
        end

        UserStream::client.user do |status|
            unless filter? status
                status = pronunciationize status
                # puts "#{status.user.screen_name}: "
                # puts status.text
                `say -v #{Config::VoiceActor} #{status.user.screen_name} さんのツイート}`
                `say -v #{Config::VoiceActor} #{status.text}`
            end
        end
    end

end
