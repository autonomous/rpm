# encoding: utf-8
# This file is distributed under New Relic's license terms.
# See https://github.com/newrelic/rpm/blob/master/LICENSE for complete details.

module NewRelic
  module Agent
    module Hostname
      def self.get
        if dyno_name = ENV['DYNO']
          "heroku_dyno:#{dyno_name}|#{Socket.gethostname}"
        else
          Socket.gethostname
        end
      end
    end
  end
end
